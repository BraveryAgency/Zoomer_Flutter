part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  factory SignInEvent.emailChanged(String email) = EmailChanged;
  factory SignInEvent.passwordChanged(String password) = PasswordChanged;
  factory SignInEvent.rememberMeClicked() = RememberMeClicked;
  factory SignInEvent.enterClicked() = SignInClicked;
  factory SignInEvent.signInSuccess() = SignInSuccess;
  factory SignInEvent.signInFailure(Failure? error) = SignInFailure;
}
