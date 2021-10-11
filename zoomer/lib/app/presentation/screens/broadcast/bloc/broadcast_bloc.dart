import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_webrtc/webrtc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:zoomer/app/navigation/navigation_actions.dart';
import 'package:zoomer/core/bloc/bloc_action.dart';
import 'package:zoomer/domain/entities/broadcast_entity.dart';
import 'package:zoomer/domain/entities/remote_participant_entity.dart';
import 'package:zoomer/domain/entities/viewer_entity.dart';
import 'package:zoomer/utils/open_vidu/signaling.dart';

part 'broadcast_bloc.freezed.dart';
part 'broadcast_event.dart';
part 'broadcast_state.dart';

class BroadcastBloc extends Bloc<BroadcastEvent, BroadcastState> {
  BroadcastBloc({
    required this.broadcast,
  }) : super(BroadcastState(broadcast: broadcast)) {
    this.add(BroadcastEvent.init());
  }

  BroadcastEntity broadcast;
  late Signaling _signaling;

  @override
  Future<void> close() async {
    state.broadcast.renderer?.dispose();
    _signaling.close();
    state.participants.forEach((participant) {
      participant.renderer.dispose();
    });
    _timer?.cancel();
    await super.close();
  }

  @override
  Stream<BroadcastState> mapEventToState(BroadcastEvent event) async* {
    yield* event.when(
      init: _init,
      leaveClicked: _leaveClicked,
      cameraSwitchClicked: _cameraSwitchClicked,
      cameraClicked: _cameraClicked,
      microClicked: _microClicked,
      expandClicked: _expandClicked,
      countSecondsChanged: _countSecondsChanged,
      participantJoined: _participantJoined,
      participantRemoved: _participantRemoved,
      participantStreamUpdate: _participantStreamUpdate,
      participantMicroClicked: _participantMicroClicked,
    );
  }

  Stream<BroadcastState> _init() async* {
    _signaling = Signaling(
      url: 'stream.theeye.live',
      secret: 'eeNg2ousiw8y',
      userName: broadcast.streamName,
      iceServer: 'stun.l.google.com:19302',
    );
    RTCVideoRenderer localRenderer = RTCVideoRenderer();
    localRenderer.objectFit = RTCVideoViewObjectFit.RTCVideoViewObjectFitCover;
    await localRenderer.initialize();

    await _signaling.connect(sessionId: broadcast.sessionId);

    _signaling.onParticipantsJoined = (RemoteParticipant remoteParticipant) async {
      this.add(BroadcastEvent.participantJoined(remoteParticipant));
    };
    _signaling.onParticipantsRemove = (RemoteParticipant remoteParticipant) {
      this.add(BroadcastEvent.participantRemoved(remoteParticipant));
    };
    _signaling.onParticipantsStreamUpdate = (RemoteParticipant remoteParticipant) {
      this.add(BroadcastEvent.participantStreamUpdate(remoteParticipant));
    };
    _signaling.onLocalStream = (MediaStream stream) {
      localRenderer.srcObject = stream;
    };

    broadcast = broadcast.copyWith(renderer: localRenderer);
    yield state.copyWith(broadcast: broadcast);
    _startBroadcastTimer();
  }

  Stream<BroadcastState> _leaveClicked() async* {
    yield state.copyWith(action: NavigateBack());
  }

  Stream<BroadcastState> _cameraSwitchClicked() async* {
    _signaling.switchCamera();
  }

  Stream<BroadcastState> _cameraClicked() async* {
    _signaling.setCameraEnabled(!state.isCameraEnabled);
    yield state.copyWith(isCameraEnabled: !state.isCameraEnabled);
  }

  Stream<BroadcastState> _microClicked() async* {
    _signaling.setMicroEnabled(!state.isMicrophoneEnabled);
    yield state.copyWith(isMicrophoneEnabled: !state.isMicrophoneEnabled);
  }

  Stream<BroadcastState> _expandClicked() async* {
    yield state.copyWith(isExpanded: !state.isExpanded);
  }

  Timer? _timer;

  Duration _currentCountSeconds = Duration(seconds: 1);

  void _startBroadcastTimer() {
    _timer?.cancel();
    _currentCountSeconds = Duration.zero;
    this.add(CountSecondsChanged(_currentCountSeconds));
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      this.add(CountSecondsChanged(_currentCountSeconds += Duration(seconds: 1)));
    });
  }

  Stream<BroadcastState> _countSecondsChanged(Duration duration) async* {
    yield state.copyWith(broadcastTimer: _getTime(duration));
  }

  String _getTime(Duration duration) {
    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    String oneDigit(int n) {
      return "$n";
    }

    String oneDigitMinutes = oneDigit(duration.inMinutes.remainder(60));
    String twoDigitsMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    if (duration.inHours > 0)
      return "${twoDigits(duration.inHours)}:$oneDigitMinutes:$twoDigitSeconds";
    else if (duration.inMinutes >= 10)
      return "$twoDigitsMinutes:$twoDigitSeconds";
    else
      return "$oneDigitMinutes:$twoDigitSeconds";
  }

  Stream<BroadcastState> _participantJoined(RemoteParticipant participant) async* {
    RTCVideoRenderer videoRenderer = RTCVideoRenderer();
    videoRenderer.objectFit = RTCVideoViewObjectFit.RTCVideoViewObjectFitCover;
    await videoRenderer.initialize();
    List<RemoteParticipantEntity> participants = List.from(state.participants);
    participants.add(RemoteParticipantEntity(participant: participant, renderer: videoRenderer));
    yield state.copyWith(participants: participants);
  }

  Stream<BroadcastState> _participantRemoved(RemoteParticipant participant) async* {
    List<RemoteParticipantEntity> participants = List.from(state.participants);
    participants.removeWhere((element) => element.participant.id == participant.id);
    yield state.copyWith(participants: participants);
  }

  Stream<BroadcastState> _participantStreamUpdate(RemoteParticipant participant) async* {
    List<RemoteParticipantEntity> participants = List.from(state.participants);
    RemoteParticipantEntity? foundParticipant =
        participants.firstWhereOrNull((element) => element.participant.id == participant.id);
    if (foundParticipant != null) {
      foundParticipant.participant = participant;
      foundParticipant.renderer.srcObject = participant.mediaStream;
    } else {
      RTCVideoRenderer videoRenderer = RTCVideoRenderer();
      videoRenderer.objectFit = RTCVideoViewObjectFit.RTCVideoViewObjectFitCover;
      await videoRenderer.initialize();
      videoRenderer.srcObject = participant.mediaStream;
      participants.add(RemoteParticipantEntity(participant: participant, renderer: videoRenderer));
    }

    yield state.copyWith(participants: participants);
  }

  Stream<BroadcastState> _participantMicroClicked(RemoteParticipantEntity participant) async* {
    try {
      List<RemoteParticipantEntity> participants = List.of(state.participants);
      RemoteParticipantEntity? foundParticipant = participants.firstWhereOrNull(
        (element) => element.participant.id == participant.participant.id,
      );

      if (foundParticipant != null) {
        RemoteParticipantEntity? updatedParticipant = RemoteParticipantEntity(
          participant: foundParticipant.participant,
          renderer: foundParticipant.renderer,
          microEnabled: !foundParticipant.microEnabled,
        );
        updatedParticipant.participant.mediaStream!.getAudioTracks()[0].enabled = updatedParticipant.microEnabled;
        participants[participants.indexOf(foundParticipant)] = updatedParticipant;
        yield state.copyWith(participants: participants);
      }
    } catch (e) {}
  }
}
