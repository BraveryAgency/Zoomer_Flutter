part of 'sign_in_bloc.dart';


@freezed
class SignInState with _$SignInState {
  factory SignInState({
    BlocAction? action,
    @Default(DefaultForm.pure()) DefaultForm email,
    @Default(PasswordForm.pure()) PasswordForm password,
    @Default(false) bool rememberMeChecked,
    String? errorMessage,
  }) = _SignInState;
}
