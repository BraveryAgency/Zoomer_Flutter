part of 'upcoming_broadcast_bloc.dart';

@freezed
class UpcomingBroadcastEvent with _$UpcomingBroadcastEvent {
  factory UpcomingBroadcastEvent.init() = Init;
  factory UpcomingBroadcastEvent.screenOpened() = ScreenOpened;
  factory UpcomingBroadcastEvent.profileClicked() = ProfileClicked;
  factory UpcomingBroadcastEvent.detailsClicked() = DetailsClicked;
  factory UpcomingBroadcastEvent.streamNowClicked() = StreamNowClicked;
}
