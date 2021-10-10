part of 'sign_in_bloc.dart';


@freezed
class SignInState with _$SignInState {
  factory SignInState({
    BlocAction? action,
    @Default(EmailForm.pure()) EmailForm email,
    @Default(PasswordForm.pure()) PasswordForm password,
    @Default(false) bool rememberMeChecked,
    String? errorMessage,
  }) = _SignInState;
}
