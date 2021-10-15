import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:zoomer/app/navigation/navigation_actions.dart';
import 'package:zoomer/core/bloc/bloc_action.dart';
import 'package:zoomer/core/enums/message_type.dart';
import 'package:zoomer/core/failures.dart';
import 'package:zoomer/core/validation/email.dart';
import 'package:zoomer/core/validation/password.dart';
import 'package:zoomer/data/gateways/local/preferences_local_gateway.dart';
import 'package:zoomer/data/repositories/authorization_repository.dart';
import 'package:zoomer/domain/entities/login_entity.dart';
import 'package:zoomer/localization/app_localizations.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc({required this.authorizationRepository, required this.preferencesLocalGateway,
  required this.localizations,}) : super(SignInState());

  PreferencesLocalGateway preferencesLocalGateway;
  AuthorizationRepository authorizationRepository;
  AppLocalizations localizations;

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    yield* event.map(
      emailChanged: _emailChanged,
      passwordChanged: _passwordChanged,
      rememberMeClicked: _rememberMeClicked,
      enterClicked: _enterClicked,
      signInSuccess: _signInSuccess,
      signInFailure: _signInFailure,
    );
  }

  Stream<SignInState> _emailChanged(EmailChanged value) async* {
    yield state.copyWith(email: EmailForm.pure(value.email), errorMessage: null);
  }

  Stream<SignInState> _passwordChanged(PasswordChanged value) async* {
    yield state.copyWith(password: PasswordForm.pure(value.password), errorMessage: null);
  }

  Stream<SignInState> _rememberMeClicked(RememberMeClicked value) async* {
    yield state.copyWith(rememberMeChecked: !state.rememberMeChecked);
  }

  Stream<SignInState> _enterClicked(SignInClicked value) async* {
    if (fieldsAreValid) {
      yield* _signIn();
    } else {
      yield state.copyWith(
        email: EmailForm.dirty(state.email.value),
        password: PasswordForm.dirty(state.password.value),
      );
    }
  }

  Stream<SignInState> _signIn() async* {
    yield state.copyWith(action: ShowLoader());
    var result = await authorizationRepository.login(
      email: state.email.value,
      password: state.password.value,
    );
    result.fold(
      (data) => this.add(SignInSuccess(data)),
      (error) => this.add(SignInFailure(error)),
    );
  }

  Stream<SignInState> _signInSuccess(SignInSuccess value) async* {
    await preferencesLocalGateway.setToken(value.login.apiToken);
    await preferencesLocalGateway.setRememberMeStatus(state.rememberMeChecked);
    FirebaseMessaging.instance.getToken().then((firebaseToken) async {
      var newTokenResponse = await authorizationRepository.sendDeviceToken(
        token: value.login.apiToken,
        deviceToken: firebaseToken ?? '',
      );
    });
    yield* await Future.delayed(Duration(seconds: 3), () {
      return Stream.fromIterable([
        state.copyWith(action: HideLoader()),
        state.copyWith(action: NavigateToUpcomingBroadcast()),
      ]);
    });
  }

  Stream<SignInState> _signInFailure(SignInFailure value) async* {
    yield state.copyWith(action: HideLoader());
    yield* _handleError(value.error);
  }

  Stream<SignInState> _handleError(Failure? error) async* {
    if (error is RequestFailure) {
      switch (error.code) {
        case 409:
          yield state.copyWith(errorMessage: localizations.invalidLoginOrPassword);
          break;
        case 403:
          yield state.copyWith(errorMessage: localizations.invalidLoginOrPassword);
          break;
        default:
          yield state.copyWith(action: ShowMessage(messageType: MessageType.serverError));
      }
    }
    if (error is NetworkFailure) {
      yield state.copyWith(action: ShowMessage(messageType: MessageType.noConnection));
    }
    if (error is UndefinedFailure) {
      yield state.copyWith(action: ShowMessage(messageType: MessageType.serverError));
    }
    // if (error is RequestFailure) {
    //   yield state.copyWith(errorMessage: localizations.userDoesNotExist);
    // }
    // if (error = "User not") {}
  }

  bool get fieldsAreValid => state.password.value.trim().isNotEmpty && state.email.valid;
}
