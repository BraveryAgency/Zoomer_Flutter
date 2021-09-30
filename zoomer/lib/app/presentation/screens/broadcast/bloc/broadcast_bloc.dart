import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:zoomer/app/navigation/navigation_actions.dart';
import 'package:zoomer/core/bloc/bloc_action.dart';
import 'package:zoomer/domain/entities/broadcast_entity.dart';
import 'package:zoomer/domain/entities/viewer_entity.dart';

part 'broadcast_event.dart';
part 'broadcast_bloc.freezed.dart';
part 'broadcast_state.dart';


class BroadcastBloc extends Bloc<BroadcastEvent,BroadcastState> {
  BroadcastBloc() : super(BroadcastState()) {
    this.add(BroadcastEvent.init());
  }

  @override
  Stream<BroadcastState> mapEventToState(BroadcastEvent event) async* {
    yield* event.map(
      init: _init,
      leaveClicked: _leaveClicked,
      cameraSwitchClicked: _cameraSwitchClicked ,
      cameraClicked: _cameraClicked ,
      muteClicked: _muteClicked ,
      countSecondsChanged: _countSecondsChanged,
    );
  }


  Stream<BroadcastState> _init(Init value) async* {
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
    
    List<ViewerEntity> newViewers = [
      ViewerEntity(
          image: 'https://www.film.ru/sites/default/files/filefield_paths/shutterstock_9669042a.jpg',
          name: 'Kevin Braflowski'),
      ViewerEntity(
          image: 'https://www.zastavki.com/pictures/originals/2015/Girls_Smiling_beautiful_girl__photo_George_Chernyad_ev_111193_.jpg',
          name: 'Zara Keln'),
      ViewerEntity(
          image: 'https://memepedia.ru/wp-content/uploads/2020/03/soft-girl-5.png',
          name: 'Britney Spike'),
    ];
    
    yield state.copyWith(broadcast: newBroadcast,viewers: newViewers);

     _startBroadcastTimer();
  }

  Stream<BroadcastState>_leaveClicked(LeaveClicked value) async* {
    yield state.copyWith(action: NavigateToUpcomingBroadcast());
  }

  Stream<BroadcastState>_cameraSwitchClicked(CameraSwitchClicked value) async* {}

  Stream<BroadcastState>_cameraClicked(CameraClicked value) async* {}

  Stream<BroadcastState>_muteClicked(MuteClicked value) async* {}


  Timer? _timer;

  Duration _currentCountSeconds = Duration(seconds: 1);

  _startBroadcastTimer() {
    _timer?.cancel();
    _currentCountSeconds = Duration.zero;
    this.add(CountSecondsChanged(_currentCountSeconds));
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {this.add(
          CountSecondsChanged(_currentCountSeconds += Duration(seconds: 1)));
    });
  }

    Stream<BroadcastState> _countSecondsChanged(CountSecondsChanged value) async* {
      yield state.copyWith(broadcastTimer: _getTime(value.countSeconds));
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

}
