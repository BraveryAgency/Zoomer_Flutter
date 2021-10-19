part of 'broadcast_bloc.dart';

@freezed
class BroadcastState with _$BroadcastState {
  factory BroadcastState({
    BlocAction? action,
    required BroadcastEntity broadcast,
    @Default([]) List<ViewerEntity> viewers,
    @Default('00:00') String broadcastTimer,
    @Default(true) bool isMicrophoneEnabled,
    @Default(true) bool isCameraEnabled,
    @Default(false) bool isExpanded,
    @Default(false) bool cameraReady,
  @Default(CameraLensDirection.front) CameraLensDirection cameraDirection,
    @Default([]) List<RemoteParticipantEntity> participants,
  }) = _BroadcastState;
}

class ChangeCamera extends BlocAction {
  ChangeCamera({required this.direction,});
  CameraLensDirection direction;
}
