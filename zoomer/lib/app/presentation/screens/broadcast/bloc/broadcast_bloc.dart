import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:zoomer/app/navigation/navigation_actions.dart';
import 'package:zoomer/core/bloc/bloc_action.dart';
import 'package:zoomer/domain/entities/briadcast_image_entity.dart';
import 'package:zoomer/domain/entities/broadcast_entity.dart';
import 'package:zoomer/domain/entities/viewer_entity.dart';

part 'broadcast_event.dart';
part 'broadcast_bloc.freezed.dart';
part 'broadcast_state.dart';


class BroadcastBloc extends Bloc<BroadcastEvent,BroadcastState> {
  BroadcastBloc({
    required this.broadcast,
  }) : super(BroadcastState(broadcast: broadcast)) {
    this.add(BroadcastEvent.init());
  }

  BroadcastEntity broadcast;

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

    List<ViewerEntity> newViewers = [
      ViewerEntity(
          image: 'https://www.film.ru/sites/default/files/filefield_paths/shutterstock_9669042a.jpg',
          name: 'Kevin Braflowski',
          isMicrophoneEnabled:true,
          isCameraEnabled: true,),
      ViewerEntity(
          image: 'https://www.zastavki.com/pictures/originals/2015/Girls_Smiling_beautiful_girl__photo_George_Chernyad_ev_111193_.jpg',
          name: 'Zara Keln',
        isMicrophoneEnabled:true,
        isCameraEnabled: true,),
      ViewerEntity(
          image: 'https://memepedia.ru/wp-content/uploads/2020/03/soft-girl-5.png',
          name: 'Britney Spike',
        isMicrophoneEnabled:true,
        isCameraEnabled: true,),
    ];
    
    yield state.copyWith(viewers: newViewers);

     _startBroadcastTimer();
  }

  Stream<BroadcastState>_leaveClicked(LeaveClicked value) async* {
    yield state.copyWith(action: NavigateBack());
  }

  Stream<BroadcastState>_cameraSwitchClicked(CameraSwitchClicked value) async* {}

  Stream<BroadcastState>_cameraClicked(CameraClicked value) async* {
    yield state.copyWith(isCameraEnabled: !state.isCameraEnabled);
  }

  Stream<BroadcastState>_muteClicked(MuteClicked value) async* {
    yield state.copyWith(isMicrophoneEnabled: !state.isMicrophoneEnabled);

  }


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
