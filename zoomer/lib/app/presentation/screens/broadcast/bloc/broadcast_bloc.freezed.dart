// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'broadcast_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BroadcastEventTearOff {
  const _$BroadcastEventTearOff();

  Init init() {
    return Init();
  }

  LeaveClicked leaveClicked() {
    return LeaveClicked();
  }

  MuteClicked muteClicked() {
    return MuteClicked();
  }

  CameraClicked cameraClicked() {
    return CameraClicked();
  }

  CameraSwitchClicked cameraSwitchClicked() {
    return CameraSwitchClicked();
  }

  CountSecondsChanged countSecondsChanged(Duration countSeconds) {
    return CountSecondsChanged(
      countSeconds,
    );
  }
}

/// @nodoc
const $BroadcastEvent = _$BroadcastEventTearOff();

/// @nodoc
mixin _$BroadcastEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() leaveClicked,
    required TResult Function() muteClicked,
    required TResult Function() cameraClicked,
    required TResult Function() cameraSwitchClicked,
    required TResult Function(Duration countSeconds) countSecondsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? leaveClicked,
    TResult Function()? muteClicked,
    TResult Function()? cameraClicked,
    TResult Function()? cameraSwitchClicked,
    TResult Function(Duration countSeconds)? countSecondsChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(LeaveClicked value) leaveClicked,
    required TResult Function(MuteClicked value) muteClicked,
    required TResult Function(CameraClicked value) cameraClicked,
    required TResult Function(CameraSwitchClicked value) cameraSwitchClicked,
    required TResult Function(CountSecondsChanged value) countSecondsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LeaveClicked value)? leaveClicked,
    TResult Function(MuteClicked value)? muteClicked,
    TResult Function(CameraClicked value)? cameraClicked,
    TResult Function(CameraSwitchClicked value)? cameraSwitchClicked,
    TResult Function(CountSecondsChanged value)? countSecondsChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroadcastEventCopyWith<$Res> {
  factory $BroadcastEventCopyWith(
          BroadcastEvent value, $Res Function(BroadcastEvent) then) =
      _$BroadcastEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BroadcastEventCopyWithImpl<$Res>
    implements $BroadcastEventCopyWith<$Res> {
  _$BroadcastEventCopyWithImpl(this._value, this._then);

  final BroadcastEvent _value;
  // ignore: unused_field
  final $Res Function(BroadcastEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$BroadcastEventCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(Init _value, $Res Function(Init) _then)
      : super(_value, (v) => _then(v as Init));

  @override
  Init get _value => super._value as Init;
}

/// @nodoc

class _$Init implements Init {
  _$Init();

  @override
  String toString() {
    return 'BroadcastEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() leaveClicked,
    required TResult Function() muteClicked,
    required TResult Function() cameraClicked,
    required TResult Function() cameraSwitchClicked,
    required TResult Function(Duration countSeconds) countSecondsChanged,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? leaveClicked,
    TResult Function()? muteClicked,
    TResult Function()? cameraClicked,
    TResult Function()? cameraSwitchClicked,
    TResult Function(Duration countSeconds)? countSecondsChanged,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(LeaveClicked value) leaveClicked,
    required TResult Function(MuteClicked value) muteClicked,
    required TResult Function(CameraClicked value) cameraClicked,
    required TResult Function(CameraSwitchClicked value) cameraSwitchClicked,
    required TResult Function(CountSecondsChanged value) countSecondsChanged,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LeaveClicked value)? leaveClicked,
    TResult Function(MuteClicked value)? muteClicked,
    TResult Function(CameraClicked value)? cameraClicked,
    TResult Function(CameraSwitchClicked value)? cameraSwitchClicked,
    TResult Function(CountSecondsChanged value)? countSecondsChanged,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements BroadcastEvent {
  factory Init() = _$Init;
}

/// @nodoc
abstract class $LeaveClickedCopyWith<$Res> {
  factory $LeaveClickedCopyWith(
          LeaveClicked value, $Res Function(LeaveClicked) then) =
      _$LeaveClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LeaveClickedCopyWithImpl<$Res>
    extends _$BroadcastEventCopyWithImpl<$Res>
    implements $LeaveClickedCopyWith<$Res> {
  _$LeaveClickedCopyWithImpl(
      LeaveClicked _value, $Res Function(LeaveClicked) _then)
      : super(_value, (v) => _then(v as LeaveClicked));

  @override
  LeaveClicked get _value => super._value as LeaveClicked;
}

/// @nodoc

class _$LeaveClicked implements LeaveClicked {
  _$LeaveClicked();

  @override
  String toString() {
    return 'BroadcastEvent.leaveClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LeaveClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() leaveClicked,
    required TResult Function() muteClicked,
    required TResult Function() cameraClicked,
    required TResult Function() cameraSwitchClicked,
    required TResult Function(Duration countSeconds) countSecondsChanged,
  }) {
    return leaveClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? leaveClicked,
    TResult Function()? muteClicked,
    TResult Function()? cameraClicked,
    TResult Function()? cameraSwitchClicked,
    TResult Function(Duration countSeconds)? countSecondsChanged,
    required TResult orElse(),
  }) {
    if (leaveClicked != null) {
      return leaveClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(LeaveClicked value) leaveClicked,
    required TResult Function(MuteClicked value) muteClicked,
    required TResult Function(CameraClicked value) cameraClicked,
    required TResult Function(CameraSwitchClicked value) cameraSwitchClicked,
    required TResult Function(CountSecondsChanged value) countSecondsChanged,
  }) {
    return leaveClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LeaveClicked value)? leaveClicked,
    TResult Function(MuteClicked value)? muteClicked,
    TResult Function(CameraClicked value)? cameraClicked,
    TResult Function(CameraSwitchClicked value)? cameraSwitchClicked,
    TResult Function(CountSecondsChanged value)? countSecondsChanged,
    required TResult orElse(),
  }) {
    if (leaveClicked != null) {
      return leaveClicked(this);
    }
    return orElse();
  }
}

abstract class LeaveClicked implements BroadcastEvent {
  factory LeaveClicked() = _$LeaveClicked;
}

/// @nodoc
abstract class $MuteClickedCopyWith<$Res> {
  factory $MuteClickedCopyWith(
          MuteClicked value, $Res Function(MuteClicked) then) =
      _$MuteClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$MuteClickedCopyWithImpl<$Res> extends _$BroadcastEventCopyWithImpl<$Res>
    implements $MuteClickedCopyWith<$Res> {
  _$MuteClickedCopyWithImpl(
      MuteClicked _value, $Res Function(MuteClicked) _then)
      : super(_value, (v) => _then(v as MuteClicked));

  @override
  MuteClicked get _value => super._value as MuteClicked;
}

/// @nodoc

class _$MuteClicked implements MuteClicked {
  _$MuteClicked();

  @override
  String toString() {
    return 'BroadcastEvent.muteClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MuteClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() leaveClicked,
    required TResult Function() muteClicked,
    required TResult Function() cameraClicked,
    required TResult Function() cameraSwitchClicked,
    required TResult Function(Duration countSeconds) countSecondsChanged,
  }) {
    return muteClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? leaveClicked,
    TResult Function()? muteClicked,
    TResult Function()? cameraClicked,
    TResult Function()? cameraSwitchClicked,
    TResult Function(Duration countSeconds)? countSecondsChanged,
    required TResult orElse(),
  }) {
    if (muteClicked != null) {
      return muteClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(LeaveClicked value) leaveClicked,
    required TResult Function(MuteClicked value) muteClicked,
    required TResult Function(CameraClicked value) cameraClicked,
    required TResult Function(CameraSwitchClicked value) cameraSwitchClicked,
    required TResult Function(CountSecondsChanged value) countSecondsChanged,
  }) {
    return muteClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LeaveClicked value)? leaveClicked,
    TResult Function(MuteClicked value)? muteClicked,
    TResult Function(CameraClicked value)? cameraClicked,
    TResult Function(CameraSwitchClicked value)? cameraSwitchClicked,
    TResult Function(CountSecondsChanged value)? countSecondsChanged,
    required TResult orElse(),
  }) {
    if (muteClicked != null) {
      return muteClicked(this);
    }
    return orElse();
  }
}

abstract class MuteClicked implements BroadcastEvent {
  factory MuteClicked() = _$MuteClicked;
}

/// @nodoc
abstract class $CameraClickedCopyWith<$Res> {
  factory $CameraClickedCopyWith(
          CameraClicked value, $Res Function(CameraClicked) then) =
      _$CameraClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CameraClickedCopyWithImpl<$Res>
    extends _$BroadcastEventCopyWithImpl<$Res>
    implements $CameraClickedCopyWith<$Res> {
  _$CameraClickedCopyWithImpl(
      CameraClicked _value, $Res Function(CameraClicked) _then)
      : super(_value, (v) => _then(v as CameraClicked));

  @override
  CameraClicked get _value => super._value as CameraClicked;
}

/// @nodoc

class _$CameraClicked implements CameraClicked {
  _$CameraClicked();

  @override
  String toString() {
    return 'BroadcastEvent.cameraClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CameraClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() leaveClicked,
    required TResult Function() muteClicked,
    required TResult Function() cameraClicked,
    required TResult Function() cameraSwitchClicked,
    required TResult Function(Duration countSeconds) countSecondsChanged,
  }) {
    return cameraClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? leaveClicked,
    TResult Function()? muteClicked,
    TResult Function()? cameraClicked,
    TResult Function()? cameraSwitchClicked,
    TResult Function(Duration countSeconds)? countSecondsChanged,
    required TResult orElse(),
  }) {
    if (cameraClicked != null) {
      return cameraClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(LeaveClicked value) leaveClicked,
    required TResult Function(MuteClicked value) muteClicked,
    required TResult Function(CameraClicked value) cameraClicked,
    required TResult Function(CameraSwitchClicked value) cameraSwitchClicked,
    required TResult Function(CountSecondsChanged value) countSecondsChanged,
  }) {
    return cameraClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LeaveClicked value)? leaveClicked,
    TResult Function(MuteClicked value)? muteClicked,
    TResult Function(CameraClicked value)? cameraClicked,
    TResult Function(CameraSwitchClicked value)? cameraSwitchClicked,
    TResult Function(CountSecondsChanged value)? countSecondsChanged,
    required TResult orElse(),
  }) {
    if (cameraClicked != null) {
      return cameraClicked(this);
    }
    return orElse();
  }
}

abstract class CameraClicked implements BroadcastEvent {
  factory CameraClicked() = _$CameraClicked;
}

/// @nodoc
abstract class $CameraSwitchClickedCopyWith<$Res> {
  factory $CameraSwitchClickedCopyWith(
          CameraSwitchClicked value, $Res Function(CameraSwitchClicked) then) =
      _$CameraSwitchClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CameraSwitchClickedCopyWithImpl<$Res>
    extends _$BroadcastEventCopyWithImpl<$Res>
    implements $CameraSwitchClickedCopyWith<$Res> {
  _$CameraSwitchClickedCopyWithImpl(
      CameraSwitchClicked _value, $Res Function(CameraSwitchClicked) _then)
      : super(_value, (v) => _then(v as CameraSwitchClicked));

  @override
  CameraSwitchClicked get _value => super._value as CameraSwitchClicked;
}

/// @nodoc

class _$CameraSwitchClicked implements CameraSwitchClicked {
  _$CameraSwitchClicked();

  @override
  String toString() {
    return 'BroadcastEvent.cameraSwitchClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CameraSwitchClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() leaveClicked,
    required TResult Function() muteClicked,
    required TResult Function() cameraClicked,
    required TResult Function() cameraSwitchClicked,
    required TResult Function(Duration countSeconds) countSecondsChanged,
  }) {
    return cameraSwitchClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? leaveClicked,
    TResult Function()? muteClicked,
    TResult Function()? cameraClicked,
    TResult Function()? cameraSwitchClicked,
    TResult Function(Duration countSeconds)? countSecondsChanged,
    required TResult orElse(),
  }) {
    if (cameraSwitchClicked != null) {
      return cameraSwitchClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(LeaveClicked value) leaveClicked,
    required TResult Function(MuteClicked value) muteClicked,
    required TResult Function(CameraClicked value) cameraClicked,
    required TResult Function(CameraSwitchClicked value) cameraSwitchClicked,
    required TResult Function(CountSecondsChanged value) countSecondsChanged,
  }) {
    return cameraSwitchClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LeaveClicked value)? leaveClicked,
    TResult Function(MuteClicked value)? muteClicked,
    TResult Function(CameraClicked value)? cameraClicked,
    TResult Function(CameraSwitchClicked value)? cameraSwitchClicked,
    TResult Function(CountSecondsChanged value)? countSecondsChanged,
    required TResult orElse(),
  }) {
    if (cameraSwitchClicked != null) {
      return cameraSwitchClicked(this);
    }
    return orElse();
  }
}

abstract class CameraSwitchClicked implements BroadcastEvent {
  factory CameraSwitchClicked() = _$CameraSwitchClicked;
}

/// @nodoc
abstract class $CountSecondsChangedCopyWith<$Res> {
  factory $CountSecondsChangedCopyWith(
          CountSecondsChanged value, $Res Function(CountSecondsChanged) then) =
      _$CountSecondsChangedCopyWithImpl<$Res>;
  $Res call({Duration countSeconds});
}

/// @nodoc
class _$CountSecondsChangedCopyWithImpl<$Res>
    extends _$BroadcastEventCopyWithImpl<$Res>
    implements $CountSecondsChangedCopyWith<$Res> {
  _$CountSecondsChangedCopyWithImpl(
      CountSecondsChanged _value, $Res Function(CountSecondsChanged) _then)
      : super(_value, (v) => _then(v as CountSecondsChanged));

  @override
  CountSecondsChanged get _value => super._value as CountSecondsChanged;

  @override
  $Res call({
    Object? countSeconds = freezed,
  }) {
    return _then(CountSecondsChanged(
      countSeconds == freezed
          ? _value.countSeconds
          : countSeconds // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$CountSecondsChanged implements CountSecondsChanged {
  _$CountSecondsChanged(this.countSeconds);

  @override
  final Duration countSeconds;

  @override
  String toString() {
    return 'BroadcastEvent.countSecondsChanged(countSeconds: $countSeconds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CountSecondsChanged &&
            (identical(other.countSeconds, countSeconds) ||
                const DeepCollectionEquality()
                    .equals(other.countSeconds, countSeconds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(countSeconds);

  @JsonKey(ignore: true)
  @override
  $CountSecondsChangedCopyWith<CountSecondsChanged> get copyWith =>
      _$CountSecondsChangedCopyWithImpl<CountSecondsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() leaveClicked,
    required TResult Function() muteClicked,
    required TResult Function() cameraClicked,
    required TResult Function() cameraSwitchClicked,
    required TResult Function(Duration countSeconds) countSecondsChanged,
  }) {
    return countSecondsChanged(countSeconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? leaveClicked,
    TResult Function()? muteClicked,
    TResult Function()? cameraClicked,
    TResult Function()? cameraSwitchClicked,
    TResult Function(Duration countSeconds)? countSecondsChanged,
    required TResult orElse(),
  }) {
    if (countSecondsChanged != null) {
      return countSecondsChanged(countSeconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(LeaveClicked value) leaveClicked,
    required TResult Function(MuteClicked value) muteClicked,
    required TResult Function(CameraClicked value) cameraClicked,
    required TResult Function(CameraSwitchClicked value) cameraSwitchClicked,
    required TResult Function(CountSecondsChanged value) countSecondsChanged,
  }) {
    return countSecondsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(LeaveClicked value)? leaveClicked,
    TResult Function(MuteClicked value)? muteClicked,
    TResult Function(CameraClicked value)? cameraClicked,
    TResult Function(CameraSwitchClicked value)? cameraSwitchClicked,
    TResult Function(CountSecondsChanged value)? countSecondsChanged,
    required TResult orElse(),
  }) {
    if (countSecondsChanged != null) {
      return countSecondsChanged(this);
    }
    return orElse();
  }
}

abstract class CountSecondsChanged implements BroadcastEvent {
  factory CountSecondsChanged(Duration countSeconds) = _$CountSecondsChanged;

  Duration get countSeconds => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountSecondsChangedCopyWith<CountSecondsChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BroadcastStateTearOff {
  const _$BroadcastStateTearOff();

  _BroadcastState call(
      {BlocAction? action,
      BroadcastEntity? broadcast = null,
      List<ViewerEntity> viewers = const [],
      String broadcastTimer = '00:00',
      bool isMicrophoneEnabled = true,
      bool isCameraEnabled = true}) {
    return _BroadcastState(
      action: action,
      broadcast: broadcast,
      viewers: viewers,
      broadcastTimer: broadcastTimer,
      isMicrophoneEnabled: isMicrophoneEnabled,
      isCameraEnabled: isCameraEnabled,
    );
  }
}

/// @nodoc
const $BroadcastState = _$BroadcastStateTearOff();

/// @nodoc
mixin _$BroadcastState {
  BlocAction? get action => throw _privateConstructorUsedError;
  BroadcastEntity? get broadcast => throw _privateConstructorUsedError;
  List<ViewerEntity> get viewers => throw _privateConstructorUsedError;
  String get broadcastTimer => throw _privateConstructorUsedError;
  bool get isMicrophoneEnabled => throw _privateConstructorUsedError;
  bool get isCameraEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BroadcastStateCopyWith<BroadcastState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroadcastStateCopyWith<$Res> {
  factory $BroadcastStateCopyWith(
          BroadcastState value, $Res Function(BroadcastState) then) =
      _$BroadcastStateCopyWithImpl<$Res>;
  $Res call(
      {BlocAction? action,
      BroadcastEntity? broadcast,
      List<ViewerEntity> viewers,
      String broadcastTimer,
      bool isMicrophoneEnabled,
      bool isCameraEnabled});
}

/// @nodoc
class _$BroadcastStateCopyWithImpl<$Res>
    implements $BroadcastStateCopyWith<$Res> {
  _$BroadcastStateCopyWithImpl(this._value, this._then);

  final BroadcastState _value;
  // ignore: unused_field
  final $Res Function(BroadcastState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? broadcast = freezed,
    Object? viewers = freezed,
    Object? broadcastTimer = freezed,
    Object? isMicrophoneEnabled = freezed,
    Object? isCameraEnabled = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      broadcast: broadcast == freezed
          ? _value.broadcast
          : broadcast // ignore: cast_nullable_to_non_nullable
              as BroadcastEntity?,
      viewers: viewers == freezed
          ? _value.viewers
          : viewers // ignore: cast_nullable_to_non_nullable
              as List<ViewerEntity>,
      broadcastTimer: broadcastTimer == freezed
          ? _value.broadcastTimer
          : broadcastTimer // ignore: cast_nullable_to_non_nullable
              as String,
      isMicrophoneEnabled: isMicrophoneEnabled == freezed
          ? _value.isMicrophoneEnabled
          : isMicrophoneEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isCameraEnabled: isCameraEnabled == freezed
          ? _value.isCameraEnabled
          : isCameraEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$BroadcastStateCopyWith<$Res>
    implements $BroadcastStateCopyWith<$Res> {
  factory _$BroadcastStateCopyWith(
          _BroadcastState value, $Res Function(_BroadcastState) then) =
      __$BroadcastStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BlocAction? action,
      BroadcastEntity? broadcast,
      List<ViewerEntity> viewers,
      String broadcastTimer,
      bool isMicrophoneEnabled,
      bool isCameraEnabled});
}

/// @nodoc
class __$BroadcastStateCopyWithImpl<$Res>
    extends _$BroadcastStateCopyWithImpl<$Res>
    implements _$BroadcastStateCopyWith<$Res> {
  __$BroadcastStateCopyWithImpl(
      _BroadcastState _value, $Res Function(_BroadcastState) _then)
      : super(_value, (v) => _then(v as _BroadcastState));

  @override
  _BroadcastState get _value => super._value as _BroadcastState;

  @override
  $Res call({
    Object? action = freezed,
    Object? broadcast = freezed,
    Object? viewers = freezed,
    Object? broadcastTimer = freezed,
    Object? isMicrophoneEnabled = freezed,
    Object? isCameraEnabled = freezed,
  }) {
    return _then(_BroadcastState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      broadcast: broadcast == freezed
          ? _value.broadcast
          : broadcast // ignore: cast_nullable_to_non_nullable
              as BroadcastEntity?,
      viewers: viewers == freezed
          ? _value.viewers
          : viewers // ignore: cast_nullable_to_non_nullable
              as List<ViewerEntity>,
      broadcastTimer: broadcastTimer == freezed
          ? _value.broadcastTimer
          : broadcastTimer // ignore: cast_nullable_to_non_nullable
              as String,
      isMicrophoneEnabled: isMicrophoneEnabled == freezed
          ? _value.isMicrophoneEnabled
          : isMicrophoneEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isCameraEnabled: isCameraEnabled == freezed
          ? _value.isCameraEnabled
          : isCameraEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_BroadcastState implements _BroadcastState {
  _$_BroadcastState(
      {this.action,
      this.broadcast = null,
      this.viewers = const [],
      this.broadcastTimer = '00:00',
      this.isMicrophoneEnabled = true,
      this.isCameraEnabled = true});

  @override
  final BlocAction? action;
  @JsonKey(defaultValue: null)
  @override
  final BroadcastEntity? broadcast;
  @JsonKey(defaultValue: const [])
  @override
  final List<ViewerEntity> viewers;
  @JsonKey(defaultValue: '00:00')
  @override
  final String broadcastTimer;
  @JsonKey(defaultValue: true)
  @override
  final bool isMicrophoneEnabled;
  @JsonKey(defaultValue: true)
  @override
  final bool isCameraEnabled;

  @override
  String toString() {
    return 'BroadcastState(action: $action, broadcast: $broadcast, viewers: $viewers, broadcastTimer: $broadcastTimer, isMicrophoneEnabled: $isMicrophoneEnabled, isCameraEnabled: $isCameraEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BroadcastState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.broadcast, broadcast) ||
                const DeepCollectionEquality()
                    .equals(other.broadcast, broadcast)) &&
            (identical(other.viewers, viewers) ||
                const DeepCollectionEquality()
                    .equals(other.viewers, viewers)) &&
            (identical(other.broadcastTimer, broadcastTimer) ||
                const DeepCollectionEquality()
                    .equals(other.broadcastTimer, broadcastTimer)) &&
            (identical(other.isMicrophoneEnabled, isMicrophoneEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.isMicrophoneEnabled, isMicrophoneEnabled)) &&
            (identical(other.isCameraEnabled, isCameraEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.isCameraEnabled, isCameraEnabled)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(broadcast) ^
      const DeepCollectionEquality().hash(viewers) ^
      const DeepCollectionEquality().hash(broadcastTimer) ^
      const DeepCollectionEquality().hash(isMicrophoneEnabled) ^
      const DeepCollectionEquality().hash(isCameraEnabled);

  @JsonKey(ignore: true)
  @override
  _$BroadcastStateCopyWith<_BroadcastState> get copyWith =>
      __$BroadcastStateCopyWithImpl<_BroadcastState>(this, _$identity);
}

abstract class _BroadcastState implements BroadcastState {
  factory _BroadcastState(
      {BlocAction? action,
      BroadcastEntity? broadcast,
      List<ViewerEntity> viewers,
      String broadcastTimer,
      bool isMicrophoneEnabled,
      bool isCameraEnabled}) = _$_BroadcastState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  BroadcastEntity? get broadcast => throw _privateConstructorUsedError;
  @override
  List<ViewerEntity> get viewers => throw _privateConstructorUsedError;
  @override
  String get broadcastTimer => throw _privateConstructorUsedError;
  @override
  bool get isMicrophoneEnabled => throw _privateConstructorUsedError;
  @override
  bool get isCameraEnabled => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BroadcastStateCopyWith<_BroadcastState> get copyWith =>
      throw _privateConstructorUsedError;
}
