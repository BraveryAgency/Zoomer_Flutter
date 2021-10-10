import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zoomer/app/navigation/navigation_actions.dart';
import 'package:zoomer/core/bloc/bloc_action.dart';
import 'package:zoomer/data/gateways/local/preferences_local_gateway.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc({
    required this.preferencesLocalGateway,
  }) : super(SplashState()) {
    this.add(SplashEvent.checkAuthorizationStatus());
  }

  PreferencesLocalGateway preferencesLocalGateway;

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    if (event is CheckAuthorizationStatus) {
      String? token = await preferencesLocalGateway.getToken();
      bool rememberMeStatus = await preferencesLocalGateway.getRememberMeStatus();
      if (token != null && rememberMeStatus) {
        yield state.copyWith(action: NavigateToUpcomingBroadcast());
      } else {
        yield state.copyWith(action: NavigateToSignIn());
      }
    }
  }
}
