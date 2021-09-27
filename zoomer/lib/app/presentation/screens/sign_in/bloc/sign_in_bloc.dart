import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zoomer/core/bloc/bloc_action.dart';
import 'package:zoomer/core/enums/message_type.dart';
import 'package:zoomer/core/failures.dart';
import 'package:zoomer/core/validation/default_form.dart';
import 'package:zoomer/core/validation/password.dart';


part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';


class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInState());

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
    yield state.copyWith(email: DefaultForm.pure(value.email), errorMessage: null);
  }

  Stream<SignInState> _passwordChanged(PasswordChanged value) async* {
    yield state.copyWith(password: PasswordForm.pure(value.password), errorMessage: null);
  }

  Stream<SignInState> _rememberMeClicked(RememberMeClicked value) async* {
    yield state.copyWith(rememberMeChecked: !state.rememberMeChecked);
  }



  Stream<SignInState> _enterClicked(SignInClicked value) async* {
    if (fieldsAreValid) {
      //if (_timeToTryAgain == null || DateTime.now().isAfter(_timeToTryAgain!)) {
        yield* _signIn();
      } else {
      //  int minutesLeftToTryAgain = _timeToTryAgain!.difference(DateTime.now()).inMinutes + 1;
        yield state.copyWith(
        //   action: ShowMessage(
        //     messageType: MessageType.customMessage,
        //     title: localizations.error,
        //     message: localizations.limitOfAttemptsExceededPleaseTryIn +
        //         ' $minutesLeftToTryAgain ' +
        //         _declensionMinutes(minutesLeftToTryAgain),
        //   ),
         );
        }
  }


  Stream<SignInState> _signIn() async* {
    // yield state.copyWith(action: ShowLoader());
    // var result = await authorizationRepository.login(
    //   phone: state.phone.getRawNumber(),
    //   password: state.password.value,
    //   rememberMe: state.rememberMeChecked,
    // );
    // result.fold(
    //       (data) => this.add(SignInSuccess(data)),
    //       (error) => this.add(SignInFailure(error)),
    // );
    // // yield state.copyWith(phone: phone);
  }

  Stream<SignInState> _signInSuccess(SignInSuccess value) async* {
    // yield state.copyWith(action: HideLoader());
    // if (value.login.isVerifyed) {
    //   await preferencesLocalGateway.setToken(value.login.apiToken);
    //   yield state.copyWith(action: NavigateToNavigation());
    // } else {
    //   yield state.copyWith(
    //     action: NavigateToConfirmPhone(
    //       confirmPhoneType: ConfirmPhoneType.registration,
    //       phone: state.phone.getRawNumber(),
    //     ),
    //   );
    // }
  }

  Stream<SignInState> _signInFailure(SignInFailure value) async* {
    // yield state.copyWith(action: HideLoader());
    // if (++_numberFailedAttempts >= 3) {
    //   _timeToTryAgain = DateTime.now().add(Duration(minutes: 5));
    //   Future.delayed(Duration(minutes: 5), () {
    //     _numberFailedAttempts = 0;
    //   });
    // }
    // yield* _handleError(value.error);
  }

  Stream<SignInState> _handleError(Failure? error) async* {
  //   if (error is RequestFailure) {
  //     switch (error.code) {
  //       case 404:
  //         yield state.copyWith(errorMessage: localizations.userDoesNotExist);
  //         break;
  //       case 403:
  //         yield state.copyWith(errorMessage: localizations.invalidLoginOrPassword);
  //         break;
  //       default:
  //         yield state.copyWith(action: ShowMessage(messageType: MessageType.serverError));
  //     }
  //   }
  //   if (error is NetworkFailure) {
  //     yield state.copyWith(action: ShowMessage(messageType: MessageType.noConnection));
  //   }
  //   if (error is UndefinedFailure) {
  //     yield state.copyWith(action: ShowMessage(messageType: MessageType.serverError));
  //   }
  //   // if (error is RequestFailure) {
  //   //   yield state.copyWith(errorMessage: localizations.userDoesNotExist);
  //   // }
  //   // if (error = "User not") {}
   }

  bool get fieldsAreValid => state.password.value.trim().isNotEmpty && state.email.valid;
}

