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
  Stream<BroadcastState> mapEventToState(BroadcastEvent event) async* {
    yield* event.when(
      init: _init,
      leaveClicked: _leaveClicked,
      cameraSwitchClicked: _cameraSwitchClicked,
      cameraClicked: _cameraClicked,
      muteClicked: _muteClicked,
      countSecondsChanged: _countSecondsChanged,
      participantJoined: _participantJoined,
      participantRemoved: _participantRemoved,
      participantStreamUpdate: _participantStreamUpdate,
    );
  }

  Stream<BroadcastState> _init() async* {
    _signaling = Signaling(
      url: 'stream.theeye.live',
      secret: 'eeNg2ousiw8y',
      userName: broadcast.streamName,
      iceServer: 'stun.l.google.com:19302',
    );
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

    _startBroadcastTimer();
  }

  Stream<BroadcastState> _leaveClicked() async* {
    yield state.copyWith(action: NavigateBack());
  }

  Stream<BroadcastState> _cameraSwitchClicked() async* {}

  Stream<BroadcastState> _cameraClicked() async* {
    yield state.copyWith(isCameraEnabled: !state.isCameraEnabled);
  }

  Stream<BroadcastState> _muteClicked() async* {
    yield state.copyWith(isMicrophoneEnabled: !state.isMicrophoneEnabled);
  }

  Timer? _timer;

  Duration _currentCountSeconds = Duration(seconds: 1);

  _startBroadcastTimer() {
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
    for (int index = 0; index < participants.length; index++) {
      if (participants[index].participant.id == participant.id) {
        participants[index].participant = participant;
        participants[index].renderer.srcObject = participant.mediaStream;
      }
    }
    yield state.copyWith(participants: participants);
  }
}
