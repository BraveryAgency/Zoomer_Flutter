import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zoomer/app/navigation/navigation_actions.dart';
import 'package:zoomer/core/bloc/bloc_action.dart';
import 'package:zoomer/core/enums/message_type.dart';
import 'package:zoomer/core/failures.dart';
import 'package:zoomer/core/validation/default_form.dart';
import 'package:zoomer/core/validation/email.dart';
import 'package:zoomer/core/validation/password.dart';
import 'package:zoomer/data/gateways/local/preferences_local_gateway.dart';
import 'package:zoomer/data/repositories/authorization_repository.dart';
import 'package:zoomer/domain/entities/login_entity.dart';


part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';


class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc({required this.authorizationRepository, required this.preferencesLocalGateway}) : super(SignInState());


  PreferencesLocalGateway preferencesLocalGateway;
  AuthorizationRepository authorizationRepository;

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
    // yield state.copyWith(action: NavigateToUpcomingBroadcast());
    if (fieldsAreValid) {
        yield* _signIn();
      } else {

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
    yield state.copyWith(action: HideLoader());
    await preferencesLocalGateway.setToken(value.login.apiToken);
    yield state.copyWith(action: NavigateToUpcomingBroadcast());
  }

  Stream<SignInState> _signInFailure(SignInFailure value) async* {
    yield state.copyWith(action: HideLoader());
    // if (++_numberFailedAttempts >= 3) {
    //   _timeToTryAgain = DateTime.now().add(Duration(minutes: 5));
    //   Future.delayed(Duration(minutes: 5), () {
    //     _numberFailedAttempts = 0;
    //   });
    // }
    yield* _handleError(value.error);
  }

  Stream<SignInState> _handleError(Failure? error) async* {
    if (error is RequestFailure) {
      // switch (error.code) {
      //   case 404:
      //     yield state.copyWith(errorMessage: app.userDoesNotExist);
      //     break;
      //   case 403:
      //     yield state.copyWith(errorMessage: localizations.invalidLoginOrPassword);
      //     break;
      //   default:
      //     yield state.copyWith(action: ShowMessage(messageType: MessageType.serverError));
      // }
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

