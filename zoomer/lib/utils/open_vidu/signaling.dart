import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_webrtc/webrtc.dart';
import 'package:rxdart/rxdart.dart';

import 'api_client.dart';
import 'request_config.dart';
import 'rtc_ice_candidate.dart';

enum SignalingState {
  CallStateNew,
  CallStateRinging,
  CallStateInvite,
  CallStateConnected,
  CallStateBye,
  ConnectionOpen,
  ConnectionClosed,
  ConnectionError,
  CallStateWaiting
}

class JsonConstants {
  static const String _value = 'value';
  static const String _params = 'params';
  static const String _method = 'method';
  static const String _id = 'id';
  static const String _result = 'result';
  static const String _iceCandidate = 'iceCandidate';
  static const String _participantJoined = "participantJoined";
  static const String _participantEvicted = "participantEvicted";
  static const String _participantUnpublished = "participantUnpublished";
  static const String _streamPropertyChanged = "streamPropertyChanged";
  static const String _sendMessage = "sendMessage";
  static const String _participantPublished = "participantPublished";
  static const String _participantLeft = "participantLeft";
  static const String _sessionId = "sessionId";
  static const String _sdpAnswer = "sdpAnswer";
  static const String _joinRoom = "joinRoom";
  static const String _metadata = "metadata";
  static const String _publishVideo = "publishVideo";
  static const String _onIceCandidate = 'onIceCandidate';
  static const String _receiveVideoFrom = 'receiveVideoFrom';
  static const String _endpointName = 'endpointName';
  static const String _senderConnectionId = 'senderConnectionId';
  static const String _connectionId = 'connectionId';
  static const String _leaveRoom = 'leaveRoom';
  static const String _streams = 'streams';
}

class RemoteParticipant {
  RemoteParticipant({
    required this.id,
    this.streamId,
    this.mediaStream,
    this.peerConnection,
    this.metadata,
  });

  String id;
  String? streamId;
  MediaStream? mediaStream;
  RTCPeerConnection? peerConnection;
  String? metadata;
}

typedef void SignalingStateCallback(SignalingState state);
typedef void StreamStateCallback(MediaStream stream);
typedef void OtherEventCallback(dynamic event);

class Signaling {
  Signaling({
    required this.session,
  });

  WebSocket? _socket;
  String _url = '24service.productfit.ru';
  String _secret = 'kah1EeYoo9th';
  String token = '';
  String session = '';
  String _userId = '';

  Map<String, dynamic> get _iceServers => {
        'iceServers': [
          {
            'url': 'turn:$_iceServer',
            'username': _turnUsername,
            'credential': _turnCredential,
          },
        ]
      }; //
  String _iceServer = '';
  String _turnUsername = '';
  String _turnCredential = '';

  Map<String?, RemoteParticipant> _participants = <String?, RemoteParticipant>{};
  Map<String, String> _participantEndpoints = <String, String>{};
  Map<int, String> _idsReceiveVideo = <int, String>{};

  int _internalId = 1;

  Timer? _timer;

  BehaviorSubject<MediaStream?> _onAddRemoteStreamSubject = BehaviorSubject.seeded(null);
  BehaviorSubject<MediaStream?> _onRemoveRemoteStreamSubject = BehaviorSubject.seeded(null);
  SignalingStateCallback? onStateChange;
  StreamStateCallback? onLocalStream;
  Stream<MediaStream?> get onAddRemoteStream => _onAddRemoteStreamSubject.stream;
  Stream<MediaStream?> get onRemoveRemoteStream => _onRemoveRemoteStreamSubject.stream;

  OtherEventCallback? onParticipantsRemove;
  OtherEventCallback? onParticipantsJoined;
  OtherEventCallback? onParticipantsStreamUpdate;
  OtherEventCallback? onMessageReceive;
  OtherEventCallback? onUserId;
  OtherEventCallback? onSelfEvict;

  final Map<String, dynamic> _constraints = {
    'mandatory': {
      'OfferToReceiveAudio': true,
      'OfferToReceiveVideo': true,
    },
    'optional': [],
  };

  void updateInternalId() {
    _internalId++;
  }

  void dispose() {
    _onAddRemoteStreamSubject.close();
    _onRemoveRemoteStreamSubject.close();
    _timer?.cancel();
    _sendJson(JsonConstants._leaveRoom, null);
    _participants.forEach((String? id, RemoteParticipant remoteParticipant) {
      remoteParticipant.peerConnection?.close();
    });
    _participants.clear();
    _socket?.close();
  }

  Future<dynamic> createWebRtcSession({required String sessionId}) {
    final Map<String, dynamic> bodyMap = <String, dynamic>{'customSessionId': sessionId};
    final Map<String, dynamic> headersMap = <String, dynamic>{
      'Authorization': 'Basic ${base64Encode(utf8.encode('OPENVIDUAPP:$_secret'))}'
    };
    return ApiClient()
        .request<Map<String, dynamic>>(Config(
            uri: Uri.parse('https://$_url/api/sessions'),
            headers: headersMap,
            body: RequestBody.json(bodyMap),
            method: RequestMethod.post,
            responseType: ResponseBody.json()))
        .then((Map<String, dynamic> jsonResponse) {
      session = jsonResponse['id'];
      return session;
    }).catchError((error) {
      session = sessionId;
      return sessionId;
    });
  }

  Future<dynamic> getToken({String role = 'SUBSCRIBER'}) {
    final Map<String, dynamic> bodyMap = <String, dynamic>{'session': session, 'role': role, 'data': ''};
    final Map<String, dynamic> headersMap = <String, dynamic>{
      'Authorization': 'Basic ${base64Encode(utf8.encode('OPENVIDUAPP:$_secret'))}'
    };
    return ApiClient()
        .request<Map<String, dynamic>>(Config(
            uri: Uri.parse('https://$_url/api/tokens'),
            headers: headersMap,
            body: RequestBody.json(bodyMap),
            method: RequestMethod.post,
            responseType: ResponseBody.json()))
        .then((Map<String, dynamic> jsonResponse) {
      print('◤◢◤◢◤◢◤◢◤◢◤ Create WebRTC token POST response: $jsonResponse ◤◢◤◢◤◢◤◢◤◢◤');
      token = jsonResponse['token'];
      return token;
    });
  }

  Future<void> connect() async {
    try {
      await getToken();
      _socket = await WebSocket.connect('wss://$_url/openvidu');
      // _socket = await WebSocket.connect('wss://admin3:Dserv2020@77.37.154.46:5542/h264/ch1/sub/av_stream/openvidu');

      if (this.onStateChange != null) {
        this.onStateChange?.call(SignalingState.ConnectionOpen);
        print('◤◢◤◢◤◢◤◢◤◢◤ Socket connected <----> ◤◢◤◢◤◢◤◢◤◢◤');
      }

      _socket!.listen((data) {
        this.onMessage(json.decode(data));
      }, onDone: () {
        if (this.onStateChange != null) {
          this.onStateChange?.call(SignalingState.ConnectionClosed);
          print('◤◢◤◢◤◢◤◢◤◢◤ Socket disconnected <-/--> ◤◢◤◢◤◢◤◢◤◢◤');
        }
      });

      _sendJson(JsonConstants._joinRoom, {
        JsonConstants._metadata: '',
        'secret': '',
        'platform': Platform.isAndroid ? 'Android' : 'iOS',
        // 'dataChannels': 'false',
        'session': session,
        'token': token,
        'recorder': false,
      });
      _startPingTimer();
    } catch (e) {
      print('◤◢!◤◢◤!◢◤◢!◤◢◤ connect error: $e ◤◢!◤◢◤!◢◤◢!◤◢◤');
      if (this.onStateChange != null) {
        this.onStateChange?.call(SignalingState.ConnectionError);
      }
    }
  }

  Future<void> onMessage(message) async {
    print('OpenViduLogs onMessage \n$message');
    Map<String, dynamic> mapData = message;
    // print('◤◢◤◢◤◢◤◢◤◢◤ onMessage_json_from_socket ---> | $message | ◤◢◤◢◤◢◤◢◤◢◤');
    if (mapData.containsKey(JsonConstants._result)) {
      handleResult(mapData[JsonConstants._result], mapData[JsonConstants._id]);
    } else {
      handleMethod(mapData);
    }
  }

  void handleResult(Map<String, dynamic> data, int id) {
    if (data.containsKey(JsonConstants._sdpAnswer)) {
      _saveAnswer(data, id);
    } else if (data.containsKey(JsonConstants._sessionId)) {
      if (data.containsKey(JsonConstants._value)) {
        // Join room reply
        _turnUsername = data['turnUsername'];
        _turnCredential = data['turnCredential'];
        _iceServer = data['coturnIp'] + ':3478';
        List<dynamic> values = data[JsonConstants._value];
        _userId = data['id'];
        if (this.onUserId != null) {
          this.onUserId?.call(data['id']);
        }
        // for (Map<String, dynamic> iceCandidate in _iceCandidatesParams) {
        //   iceCandidate[JsonConstants._endpointName] = data['endpointName'] ?? data['id'];
        //   iceCandidate[JsonConstants._id] = data['id'] ?? data['endpointName'];
        //   _sendJson(JsonConstants._onIceCandidate, iceCandidate);
        // }
        if (values.length > 0) {
          _addParticipantsAlreadyInRoom(values);
        }
      }
    } else if (data.containsKey(JsonConstants._value)) {
      // print('|◤◢◤◢◤pong|');
    } else {
      print('Unrecognized: $data');
    }
  }

  void handleMethod(Map<String, dynamic> data) {
    print('◤◢◤◢◤◢◤◢◤◢◤ HANDLE_METHOD ◤◢◤◢◤◢◤◢◤◢◤ : $data');
    if (data.containsKey(JsonConstants._params)) {
      Map<String, dynamic> params = data[JsonConstants._params];
      String method = data[JsonConstants._method];
      switch (method) {
        case JsonConstants._iceCandidate:
          _iceCandidateMethod(params);
          print('◤◢◤◢◤◢◤◢◤◢◤ iceCandidate: $params ◤◢◤◢◤◢◤◢◤◢◤');
          break;
        case JsonConstants._participantJoined:
          _participantJoinedMethod(params);
          print('◤◢◤◢◤◢◤◢◤◢◤ participantJoined: $params ◤◢◤◢◤◢◤◢◤◢◤');
          break;
        case JsonConstants._sendMessage:
          _messageReceive(params);
          print('◤◢◤◢◤◢◤◢◤◢◤ sendMessage: $params ◤◢◤◢◤◢◤◢◤◢◤');
          break;
        case JsonConstants._participantPublished:
          _participantPublishedMethod(params);
          print('◤◢◤◢◤◢◤◢◤◢◤ participantPublished: $params ◤◢◤◢◤◢◤◢◤◢◤');
          break;
        case JsonConstants._participantLeft:
          print('◤◢◤◢◤◢◤◢◤◢◤ participantLeft: $params ◤◢◤◢◤◢◤◢◤◢◤');
          break;
        case JsonConstants._participantEvicted:
          _participantLeftMethod(params);
          print('◤◢◤◢◤◢◤◢◤◢◤ participantEvicted: $params ◤◢◤◢◤◢◤◢◤◢◤');
          break;
        default:
          print('handleMethod: can\'t understand method: $method');
          break;
      }
    } else {
      print('handleMethod, no params');
    }
  }

  Future<void> _addParticipantsAlreadyInRoom(List<dynamic> values) async {
    var value = values[0];
    // for (Map<String, dynamic> value in values) {
    String _remoteParticipantId = value[JsonConstants._id];
    RemoteParticipant remoteParticipant =
        RemoteParticipant(id: _remoteParticipantId, metadata: value[JsonConstants._metadata]);
    if (value.containsKey(JsonConstants._streams)) {
      List<dynamic> streamsList = value[JsonConstants._streams];
      Map<String, dynamic> stream = streamsList?.first;
      if (stream != null && stream.containsKey(JsonConstants._id)) {
        remoteParticipant.streamId = stream[JsonConstants._id];
      }
    }
    _participants[_remoteParticipantId] = remoteParticipant;
    _createRemotePeerConnection(remoteParticipant).then((RTCPeerConnection remotePeerConnection) async {
      _receiveVideoFromParticipant(remoteParticipant);
    });
    if (this.onStateChange != null) {
      this.onStateChange?.call(SignalingState.CallStateConnected);
    }
    // }
  }

  void _participantJoinedMethod(Map<String, dynamic> params) {
    RemoteParticipant remoteParticipant =
        RemoteParticipant(id: params[JsonConstants._id], metadata: params[JsonConstants._metadata]);
    _participants[remoteParticipant.id] = remoteParticipant;
    this.onParticipantsJoined?.call(remoteParticipant);
    _createRemotePeerConnection(remoteParticipant);
    if (this.onStateChange != null) {
      this.onStateChange?.call(SignalingState.CallStateConnected);
    }
  }

  void _messageReceive(Map<String, dynamic> params) {
    // print('_message $params');
    if (this.onMessageReceive != null) {
      this.onMessageReceive?.call(params);
    }
  }

  void sendMessage(List to, String signalType, dynamic data) {
    Map _msg = {'to': to, 'data': data, 'type': signalType};
    _sendJson(JsonConstants._sendMessage, {'message': jsonEncode(_msg)});
  }

  Future<void> _receiveVideoFromParticipant(RemoteParticipant remoteParticipant) async {
    if (remoteParticipant.peerConnection == null) {
      return;
    }
    try {
      RTCSessionDescription sessionDescription = await remoteParticipant.peerConnection!.createOffer(_constraints);
      remoteParticipant.peerConnection?.setLocalDescription(sessionDescription);
      int id = _sendJson(JsonConstants._receiveVideoFrom,
          {'sender': remoteParticipant.streamId ?? remoteParticipant.id, 'sdpOffer': sessionDescription.sdp});
      _idsReceiveVideo[id] = remoteParticipant.id;
    } catch (e) {
      print(e.toString());
    }
  }

  void _participantLeftMethod(Map<String, dynamic> params) {
    String participantId = params['connectionId'];
    if (participantId == _userId) {
      this.onSelfEvict?.call(_userId);
    } else if (_participants.containsKey(participantId)) {
      this.onParticipantsRemove?.call(_participants[participantId]);
      _participants[participantId]?.peerConnection?.close();
      _participants.remove(participantId);
      if (_participants.length == 0) {
        if (this.onStateChange != null) {
          this.onStateChange?.call(SignalingState.CallStateWaiting);
        }
      }
    }
  }

  void _iceCandidateMethod(Map<String, dynamic> params) {
    _saveIceCandidate(params, params[JsonConstants._endpointName], params[JsonConstants._senderConnectionId]);
  }

  void _saveIceCandidate(Map<String, dynamic> params, String endpointName, String senderConnectionId) {
    CustomRTCIceCandidate iceCandidate =
        CustomRTCIceCandidate(params['candidate'], params['sdpMid'], params['sdpMLineIndex'], endpointName);
    if (_participants.containsKey(senderConnectionId)) {
      _participants[senderConnectionId]?.peerConnection?.addCandidate(iceCandidate);
      _participantEndpoints[senderConnectionId] = endpointName;
    }
  }

  void _saveAnswer(Map<String, dynamic> data, int id) {
    RTCSessionDescription sessionDescription = RTCSessionDescription(data['sdpAnswer'], 'answer');
    if (_idsReceiveVideo.containsKey(id)) {
      _participants[_idsReceiveVideo[id]]?.peerConnection?.setRemoteDescription(sessionDescription);
    }
  }

  void _startPingTimer() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      _sendJson('ping', {'interval': '3000'});
      // print('|ping◤◢◤◢◤|');
    });
  }

  Future<MediaStream> createStream({isLocalStream = false}) async {
    final Map<String, dynamic> mediaConstraints = {
      'audio': true,
      'video': {
        'mandatory': {
          'minWidth': '320',
          'minHeight': '240',
          'minFrameRate': '30',
        },
        'facingMode': 'user',
        'optional': [],
      }
    };
    MediaStream stream = await navigator.getUserMedia(mediaConstraints);
    return stream;
  }

  Future<RTCPeerConnection> _createRemotePeerConnection(RemoteParticipant remoteParticipant) async {
    RTCPeerConnection remotePeerConnection = await createPeerConnection(_iceServers, _constraints);
    remotePeerConnection.onIceCandidate = (candidate) {
      Map<String, dynamic> iceCandidateParams = {
        'sdpMid': candidate.sdpMid,
        'sdpMLineIndex': candidate.sdpMlineIndex,
        'endpointName':
            remoteParticipant.streamId ?? _participantEndpoints[remoteParticipant.id] ?? remoteParticipant.id,
        'candidate': candidate.candidate,
      };
      _sendJson(JsonConstants._onIceCandidate, iceCandidateParams);
    };

    remotePeerConnection.onAddStream = ((stream) {
      remoteParticipant.mediaStream = stream;
      if (this.onParticipantsStreamUpdate != null) {
        this.onParticipantsStreamUpdate?.call(remoteParticipant);
      }
      _onAddRemoteStreamSubject.add(stream);
    });

    remotePeerConnection.onSignalingState = ((state) {
      print('remotePeerConnection.onSignalingState: $state');
    });

    remotePeerConnection.onIceGatheringState = ((state) {
      print('icestate: $state');
    });

    remotePeerConnection.onRemoveStream = (stream) {
      remoteParticipant.mediaStream = stream;
      if (this.onParticipantsStreamUpdate != null) {
        this.onParticipantsStreamUpdate?.call(remoteParticipant);
      }
      _onRemoveRemoteStreamSubject.add(stream);
    };

    remotePeerConnection.onDataChannel = (channel) {
      print('onDataChannel: $channel');
    };

    remoteParticipant.peerConnection = remotePeerConnection;
    return remotePeerConnection;
  }

  Future<void> _participantPublishedMethod(Map<String, dynamic> params) async {
    String _remoteParticipantId = params[JsonConstants._id];
    if (_participants.containsKey(_remoteParticipantId)) {
      RemoteParticipant remoteParticipantPublished = _participants[_remoteParticipantId]!;
      if (params.containsKey(JsonConstants._streams)) {
        List<dynamic> streamsList = params[JsonConstants._streams];
        Map<String, dynamic> stream = streamsList?.first;
        if (stream != null && stream.containsKey(JsonConstants._id)) {
          remoteParticipantPublished.streamId = stream[JsonConstants._id];
        }
      }
      if (remoteParticipantPublished.peerConnection != null) {
        _receiveVideoFromParticipant(remoteParticipantPublished);
      } else {
        _createRemotePeerConnection(remoteParticipantPublished).then((RTCPeerConnection remotePeerConnection) async {
          _receiveVideoFromParticipant(remoteParticipantPublished);
        });
      }
    }
  }

  int _sendJson(String method, Map<String, dynamic>? params) {
    print('OpenViduLogs sendJson \nmethod:$method\nparams:$params');
    Map<String, dynamic> dict = <String, dynamic>{};
    dict[JsonConstants._method] = method;
    dict[JsonConstants._id] = _internalId;
    dict['jsonrpc'] = '2.0';
    if ((params?.length ?? 0) > 0) {
      dict[JsonConstants._params] = params;
    }
    updateInternalId();
    String jsonString = json.encode(dict);
    _socket?.add(jsonString);
    // print('◤◢◤◢◤◢◤◢◤◢◤ send_json_to_socket ---> | $jsonString | ◤◢◤◢◤◢◤◢◤◢◤');
    return _internalId - 1;
  }
}
