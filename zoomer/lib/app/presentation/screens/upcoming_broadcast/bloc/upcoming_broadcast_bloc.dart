import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:zoomer/app/navigation/navigation_actions.dart';
import 'package:zoomer/core/bloc/bloc_action.dart';
import 'package:zoomer/domain/entities/broadcast_entity.dart';

part 'upcoming_broadcast_event.dart';
part 'upcoming_broadcast_bloc.freezed.dart';
part 'upcoming_broadcast_state.dart';

class UpcomingBroadcastBloc extends Bloc<UpcomingBroadcastEvent, UpcomingBroadcastState> {
  UpcomingBroadcastBloc() : super(UpcomingBroadcastState()) {
    this.add(UpcomingBroadcastEvent.init());
  }

  @override
  Stream<UpcomingBroadcastState> mapEventToState(UpcomingBroadcastEvent event,) async* {
    yield* event.map(
      init: _init,
      profileClicked: _profileClicked,
      detailsClicked: _detailsClicked,
      streamNowClicked: _streamNowClicked,
    );
  }


  Stream<UpcomingBroadcastState> _init(Init value) async* {
    List<String> photos = [
      'https://klike.net/uploads/posts/2020-01/1579858769_1.jpg',
      'https://fotodomov.com/wp-content/uploads/2020/05/krovlya-iz-metallocherepicy1-635x478.jpg',
      'https://dekorin.me/wp-content/uploads/2017/11/5-dvuhetajnii-krasivii-dom-1280x720.jpg'
    ];
    BroadcastEntity newBroadcast = BroadcastEntity(
        id: 'asdasdasda',
        location: 'Dubai',
        building: 'Dubai Central Tower',
        images: photos,
        price: 15000,
        description:
        'Villas · 200.0m²-250.0m² · For sale · Swimming pool · Gym · Parking · SPA · Shopping mall · School',
        icon: 'https://fotodomov.com/wp-content/uploads/2020/05/krovlya-iz-metallocherepicy1-635x478.jpg',
    );

    yield state.copyWith(broadcast: newBroadcast);
  }

  Stream<UpcomingBroadcastState> _profileClicked(ProfileClicked value) async* {}

  Stream<UpcomingBroadcastState> _detailsClicked(DetailsClicked value) async* {}

  Stream<UpcomingBroadcastState> _streamNowClicked(StreamNowClicked value) async* {
    yield state.copyWith(action: NavigateToBroadcast());
  }

}
