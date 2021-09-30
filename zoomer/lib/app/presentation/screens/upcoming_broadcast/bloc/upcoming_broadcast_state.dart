part of 'upcoming_broadcast_bloc.dart';

@freezed
class UpcomingBroadcastState with _$UpcomingBroadcastState {
  factory UpcomingBroadcastState({
    BlocAction? action,
    @Default(null) BroadcastEntity? broadcast,
  }) = _UpcomingBroadcastState;
}
