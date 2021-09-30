part of 'broadcast_bloc.dart';

@freezed
class BroadcastState with _$BroadcastState {
  factory BroadcastState({
    BlocAction? action,
    @Default(null) BroadcastEntity? broadcast,
    @Default([]) List<ViewerEntity> viewers,
    @Default('00:00') String broadcastTimer,
  }) = _BroadcastState;
}