part of 'broadcast_bloc.dart';

@freezed
class BroadcastEvent with _$BroadcastEvent {
  factory BroadcastEvent.init() = Init;
  factory BroadcastEvent.leaveClicked() = LeaveClicked;
  factory BroadcastEvent.muteClicked() = MuteClicked;
  factory BroadcastEvent.cameraClicked() = CameraClicked;
  factory BroadcastEvent.cameraSwitchClicked() = CameraSwitchClicked;
  factory BroadcastEvent.countSecondsChanged(Duration countSeconds) = CountSecondsChanged;
}
