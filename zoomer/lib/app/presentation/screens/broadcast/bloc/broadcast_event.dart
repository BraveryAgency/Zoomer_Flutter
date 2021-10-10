part of 'broadcast_bloc.dart';

@freezed
class BroadcastEvent with _$BroadcastEvent {
  factory BroadcastEvent.init() = Init;
  factory BroadcastEvent.leaveClicked() = LeaveClicked;
  factory BroadcastEvent.microClicked() = MicroClicked;
  factory BroadcastEvent.expandClicked() = ExpandClicked;
  factory BroadcastEvent.cameraClicked() = CameraClicked;
  factory BroadcastEvent.cameraSwitchClicked() = CameraSwitchClicked;
  factory BroadcastEvent.countSecondsChanged(Duration countSeconds) = CountSecondsChanged;
  factory BroadcastEvent.participantJoined(RemoteParticipant participant) = ParticipantJoined;
  factory BroadcastEvent.participantRemoved(RemoteParticipant participant) = ParticipantRemoved;
  factory BroadcastEvent.participantStreamUpdate(RemoteParticipant participant) = ParticipantStreamUpdate;
  factory BroadcastEvent.participantMicroClicked(RemoteParticipantEntity participant) = ParticipantMicroClicked;
}
