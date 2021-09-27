// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInEventTearOff {
  const _$SignInEventTearOff();

  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

  RememberMeClicked rememberMeClicked() {
    return RememberMeClicked();
  }

  SignInClicked enterClicked() {
    return SignInClicked();
  }

  SignInSuccess signInSuccess() {
    return SignInSuccess();
  }

  SignInFailure signInFailure(Failure? error) {
    return SignInFailure(
      error,
    );
  }
}

/// @nodoc
const $SignInEvent = _$SignInEventTearOff();

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() rememberMeClicked,
    required TResult Function() enterClicked,
    required TResult Function() signInSuccess,
    required TResult Function(Failure? error) signInFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? rememberMeClicked,
    TResult Function()? enterClicked,
    TResult Function()? signInSuccess,
    TResult Function(Failure? error)? signInFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RememberMeClicked value) rememberMeClicked,
    required TResult Function(SignInClicked value) enterClicked,
    required TResult Function(SignInSuccess value) signInSuccess,
    required TResult Function(SignInFailure value) signInFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RememberMeClicked value)? rememberMeClicked,
    TResult Function(SignInClicked value)? enterClicked,
    TResult Function(SignInSuccess value)? signInSuccess,
    TResult Function(SignInFailure value)? signInFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res> implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  final SignInEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  _$EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SignInEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() rememberMeClicked,
    required TResult Function() enterClicked,
    required TResult Function() signInSuccess,
    required TResult Function(Failure? error) signInFailure,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? rememberMeClicked,
    TResult Function()? enterClicked,
    TResult Function()? signInSuccess,
    TResult Function(Failure? error)? signInFailure,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RememberMeClicked value) rememberMeClicked,
    required TResult Function(SignInClicked value) enterClicked,
    required TResult Function(SignInSuccess value) signInSuccess,
    required TResult Function(SignInFailure value) signInFailure,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RememberMeClicked value)? rememberMeClicked,
    TResult Function(SignInClicked value)? enterClicked,
    TResult Function(SignInSuccess value)? signInSuccess,
    TResult Function(SignInFailure value)? signInFailure,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInEvent {
  factory EmailChanged(String email) = _$EmailChanged;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(PasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  _$PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() rememberMeClicked,
    required TResult Function() enterClicked,
    required TResult Function() signInSuccess,
    required TResult Function(Failure? error) signInFailure,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? rememberMeClicked,
    TResult Function()? enterClicked,
    TResult Function()? signInSuccess,
    TResult Function(Failure? error)? signInFailure,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RememberMeClicked value) rememberMeClicked,
    required TResult Function(SignInClicked value) enterClicked,
    required TResult Function(SignInSuccess value) signInSuccess,
    required TResult Function(SignInFailure value) signInFailure,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RememberMeClicked value)? rememberMeClicked,
    TResult Function(SignInClicked value)? enterClicked,
    TResult Function(SignInSuccess value)? signInSuccess,
    TResult Function(SignInFailure value)? signInFailure,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInEvent {
  factory PasswordChanged(String password) = _$PasswordChanged;

  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RememberMeClickedCopyWith<$Res> {
  factory $RememberMeClickedCopyWith(
          RememberMeClicked value, $Res Function(RememberMeClicked) then) =
      _$RememberMeClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RememberMeClickedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $RememberMeClickedCopyWith<$Res> {
  _$RememberMeClickedCopyWithImpl(
      RememberMeClicked _value, $Res Function(RememberMeClicked) _then)
      : super(_value, (v) => _then(v as RememberMeClicked));

  @override
  RememberMeClicked get _value => super._value as RememberMeClicked;
}

/// @nodoc

class _$RememberMeClicked implements RememberMeClicked {
  _$RememberMeClicked();

  @override
  String toString() {
    return 'SignInEvent.rememberMeClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RememberMeClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() rememberMeClicked,
    required TResult Function() enterClicked,
    required TResult Function() signInSuccess,
    required TResult Function(Failure? error) signInFailure,
  }) {
    return rememberMeClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? rememberMeClicked,
    TResult Function()? enterClicked,
    TResult Function()? signInSuccess,
    TResult Function(Failure? error)? signInFailure,
    required TResult orElse(),
  }) {
    if (rememberMeClicked != null) {
      return rememberMeClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RememberMeClicked value) rememberMeClicked,
    required TResult Function(SignInClicked value) enterClicked,
    required TResult Function(SignInSuccess value) signInSuccess,
    required TResult Function(SignInFailure value) signInFailure,
  }) {
    return rememberMeClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RememberMeClicked value)? rememberMeClicked,
    TResult Function(SignInClicked value)? enterClicked,
    TResult Function(SignInSuccess value)? signInSuccess,
    TResult Function(SignInFailure value)? signInFailure,
    required TResult orElse(),
  }) {
    if (rememberMeClicked != null) {
      return rememberMeClicked(this);
    }
    return orElse();
  }
}

abstract class RememberMeClicked implements SignInEvent {
  factory RememberMeClicked() = _$RememberMeClicked;
}

/// @nodoc
abstract class $SignInClickedCopyWith<$Res> {
  factory $SignInClickedCopyWith(
          SignInClicked value, $Res Function(SignInClicked) then) =
      _$SignInClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInClickedCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements $SignInClickedCopyWith<$Res> {
  _$SignInClickedCopyWithImpl(
      SignInClicked _value, $Res Function(SignInClicked) _then)
      : super(_value, (v) => _then(v as SignInClicked));

  @override
  SignInClicked get _value => super._value as SignInClicked;
}

/// @nodoc

class _$SignInClicked implements SignInClicked {
  _$SignInClicked();

  @override
  String toString() {
    return 'SignInEvent.enterClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() rememberMeClicked,
    required TResult Function() enterClicked,
    required TResult Function() signInSuccess,
    required TResult Function(Failure? error) signInFailure,
  }) {
    return enterClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? rememberMeClicked,
    TResult Function()? enterClicked,
    TResult Function()? signInSuccess,
    TResult Function(Failure? error)? signInFailure,
    required TResult orElse(),
  }) {
    if (enterClicked != null) {
      return enterClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RememberMeClicked value) rememberMeClicked,
    required TResult Function(SignInClicked value) enterClicked,
    required TResult Function(SignInSuccess value) signInSuccess,
    required TResult Function(SignInFailure value) signInFailure,
  }) {
    return enterClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RememberMeClicked value)? rememberMeClicked,
    TResult Function(SignInClicked value)? enterClicked,
    TResult Function(SignInSuccess value)? signInSuccess,
    TResult Function(SignInFailure value)? signInFailure,
    required TResult orElse(),
  }) {
    if (enterClicked != null) {
      return enterClicked(this);
    }
    return orElse();
  }
}

abstract class SignInClicked implements SignInEvent {
  factory SignInClicked() = _$SignInClicked;
}

/// @nodoc
abstract class $SignInSuccessCopyWith<$Res> {
  factory $SignInSuccessCopyWith(
          SignInSuccess value, $Res Function(SignInSuccess) then) =
      _$SignInSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInSuccessCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements $SignInSuccessCopyWith<$Res> {
  _$SignInSuccessCopyWithImpl(
      SignInSuccess _value, $Res Function(SignInSuccess) _then)
      : super(_value, (v) => _then(v as SignInSuccess));

  @override
  SignInSuccess get _value => super._value as SignInSuccess;
}

/// @nodoc

class _$SignInSuccess implements SignInSuccess {
  _$SignInSuccess();

  @override
  String toString() {
    return 'SignInEvent.signInSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() rememberMeClicked,
    required TResult Function() enterClicked,
    required TResult Function() signInSuccess,
    required TResult Function(Failure? error) signInFailure,
  }) {
    return signInSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? rememberMeClicked,
    TResult Function()? enterClicked,
    TResult Function()? signInSuccess,
    TResult Function(Failure? error)? signInFailure,
    required TResult orElse(),
  }) {
    if (signInSuccess != null) {
      return signInSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RememberMeClicked value) rememberMeClicked,
    required TResult Function(SignInClicked value) enterClicked,
    required TResult Function(SignInSuccess value) signInSuccess,
    required TResult Function(SignInFailure value) signInFailure,
  }) {
    return signInSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RememberMeClicked value)? rememberMeClicked,
    TResult Function(SignInClicked value)? enterClicked,
    TResult Function(SignInSuccess value)? signInSuccess,
    TResult Function(SignInFailure value)? signInFailure,
    required TResult orElse(),
  }) {
    if (signInSuccess != null) {
      return signInSuccess(this);
    }
    return orElse();
  }
}

abstract class SignInSuccess implements SignInEvent {
  factory SignInSuccess() = _$SignInSuccess;
}

/// @nodoc
abstract class $SignInFailureCopyWith<$Res> {
  factory $SignInFailureCopyWith(
          SignInFailure value, $Res Function(SignInFailure) then) =
      _$SignInFailureCopyWithImpl<$Res>;
  $Res call({Failure? error});
}

/// @nodoc
class _$SignInFailureCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements $SignInFailureCopyWith<$Res> {
  _$SignInFailureCopyWithImpl(
      SignInFailure _value, $Res Function(SignInFailure) _then)
      : super(_value, (v) => _then(v as SignInFailure));

  @override
  SignInFailure get _value => super._value as SignInFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SignInFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$SignInFailure implements SignInFailure {
  _$SignInFailure(this.error);

  @override
  final Failure? error;

  @override
  String toString() {
    return 'SignInEvent.signInFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $SignInFailureCopyWith<SignInFailure> get copyWith =>
      _$SignInFailureCopyWithImpl<SignInFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() rememberMeClicked,
    required TResult Function() enterClicked,
    required TResult Function() signInSuccess,
    required TResult Function(Failure? error) signInFailure,
  }) {
    return signInFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? rememberMeClicked,
    TResult Function()? enterClicked,
    TResult Function()? signInSuccess,
    TResult Function(Failure? error)? signInFailure,
    required TResult orElse(),
  }) {
    if (signInFailure != null) {
      return signInFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RememberMeClicked value) rememberMeClicked,
    required TResult Function(SignInClicked value) enterClicked,
    required TResult Function(SignInSuccess value) signInSuccess,
    required TResult Function(SignInFailure value) signInFailure,
  }) {
    return signInFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RememberMeClicked value)? rememberMeClicked,
    TResult Function(SignInClicked value)? enterClicked,
    TResult Function(SignInSuccess value)? signInSuccess,
    TResult Function(SignInFailure value)? signInFailure,
    required TResult orElse(),
  }) {
    if (signInFailure != null) {
      return signInFailure(this);
    }
    return orElse();
  }
}

abstract class SignInFailure implements SignInEvent {
  factory SignInFailure(Failure? error) = _$SignInFailure;

  Failure? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInFailureCopyWith<SignInFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  _SignInState call(
      {BlocAction? action,
      DefaultForm email = const DefaultForm.pure(),
      PasswordForm password = const PasswordForm.pure(),
      bool rememberMeChecked = false,
      String? errorMessage}) {
    return _SignInState(
      action: action,
      email: email,
      password: password,
      rememberMeChecked: rememberMeChecked,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $SignInState = _$SignInStateTearOff();

/// @nodoc
mixin _$SignInState {
  BlocAction? get action => throw _privateConstructorUsedError;
  DefaultForm get email => throw _privateConstructorUsedError;
  PasswordForm get password => throw _privateConstructorUsedError;
  bool get rememberMeChecked => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call(
      {BlocAction? action,
      DefaultForm email,
      PasswordForm password,
      bool rememberMeChecked,
      String? errorMessage});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? rememberMeChecked = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as DefaultForm,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordForm,
      rememberMeChecked: rememberMeChecked == freezed
          ? _value.rememberMeChecked
          : rememberMeChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(
          _SignInState value, $Res Function(_SignInState) then) =
      __$SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BlocAction? action,
      DefaultForm email,
      PasswordForm password,
      bool rememberMeChecked,
      String? errorMessage});
}

/// @nodoc
class __$SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$SignInStateCopyWith<$Res> {
  __$SignInStateCopyWithImpl(
      _SignInState _value, $Res Function(_SignInState) _then)
      : super(_value, (v) => _then(v as _SignInState));

  @override
  _SignInState get _value => super._value as _SignInState;

  @override
  $Res call({
    Object? action = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? rememberMeChecked = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_SignInState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as DefaultForm,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordForm,
      rememberMeChecked: rememberMeChecked == freezed
          ? _value.rememberMeChecked
          : rememberMeChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  _$_SignInState(
      {this.action,
      this.email = const DefaultForm.pure(),
      this.password = const PasswordForm.pure(),
      this.rememberMeChecked = false,
      this.errorMessage});

  @override
  final BlocAction? action;
  @JsonKey(defaultValue: const DefaultForm.pure())
  @override
  final DefaultForm email;
  @JsonKey(defaultValue: const PasswordForm.pure())
  @override
  final PasswordForm password;
  @JsonKey(defaultValue: false)
  @override
  final bool rememberMeChecked;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SignInState(action: $action, email: $email, password: $password, rememberMeChecked: $rememberMeChecked, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.rememberMeChecked, rememberMeChecked) ||
                const DeepCollectionEquality()
                    .equals(other.rememberMeChecked, rememberMeChecked)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(rememberMeChecked) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  factory _SignInState(
      {BlocAction? action,
      DefaultForm email,
      PasswordForm password,
      bool rememberMeChecked,
      String? errorMessage}) = _$_SignInState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  DefaultForm get email => throw _privateConstructorUsedError;
  @override
  PasswordForm get password => throw _privateConstructorUsedError;
  @override
  bool get rememberMeChecked => throw _privateConstructorUsedError;
  @override
  String? get errorMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
