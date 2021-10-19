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

  ScreenOpened screenOpened() {
    return ScreenOpened();
  }

  CameraPrepared cameraPrepared() {
    return CameraPrepared();
  }

  LeaveClicked leaveClicked() {
    return LeaveClicked();
  }

  MicroClicked microClicked() {
    return MicroClicked();
  }

  ExpandClicked expandClicked() {
    return ExpandClicked();
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

  ParticipantJoined participantJoined(RemoteParticipant participant) {
    return ParticipantJoined(
      participant,
    );
  }

  ParticipantRemoved participantRemoved(RemoteParticipant participant) {
    return ParticipantRemoved(
      participant,
    );
  }

  ParticipantStreamUpdate participantStreamUpdate(
      RemoteParticipant participant) {
    return ParticipantStreamUpdate(
      participant,
    );
  }

  ParticipantMicroClicked participantMicroClicked(
      RemoteParticipantEntity participant) {
    return ParticipantMicroClicked(
      participant,
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
    required TResult Function() screenOpened,
    required TResult Function() cameraPrepared,
    required TResult Function() leaveClicked,
    required TResult Function() microClicked,
    required TResult Function() expandClicked,
    required TResult Function() cameraClicked,
    required TResult Function() cameraSwitchClicked,
    required TResult Function(Duration countSeconds) countSecondsChanged,
    required TResult Function(RemoteParticipant participant) participantJoined,
    required TResult Function(RemoteParticipant participant) participantRemoved,
    required TResult Function(RemoteParticipant participant)
        participantStreamUpdate,
    required TResult Function(RemoteParticipantEntity participant)
        participantMicroClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function()? cameraPrepared,
    TResult Function()? leaveClicked,
    TResult Function()? microClicked,
    TResult Function()? expandClicked,
    TResult Function()? cameraClicked,
    TResult Function()? cameraSwitchClicked,
    TResult Function(Duration countSeconds)? countSecondsChanged,
    TResult Function(RemoteParticipant participant)? participantJoined,
    TResult Function(RemoteParticipant participant)? participantRemoved,
    TResult Function(RemoteParticipant participant)? participantStreamUpdate,
    TResult Function(RemoteParticipantEntity participant)?
        participantMicroClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(LeaveClicked value) leaveClicked,
    required TResult Function(MicroClicked value) microClicked,
    required TResult Function(ExpandClicked value) expandClicked,
    required TResult Function(CameraClicked value) cameraClicked,
    required TResult Function(CameraSwitchClicked value) cameraSwitchClicked,
    required TResult Function(CountSecondsChanged value) countSecondsChanged,
    required TResult Function(ParticipantJoined value) participantJoined,
    required TResult Function(ParticipantRemoved value) participantRemoved,
    required TResult Function(ParticipantStreamUpdate value)
        participantStreamUpdate,
    required TResult Function(ParticipantMicroClicked value)
        participantMicroClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(LeaveClicked value)? leaveClicked,
    TResult Function(MicroClicked value)? microClicked,
    TResult Function(ExpandClicked value)? expandClicked,
    TResult Function(CameraClicked value)? cameraClicked,
    TResult Function(CameraSwitchClicked value)? cameraSwitchClicked,
    TResult Function(CountSecondsChanged value)? countSecondsChanged,
    TResult Function(ParticipantJoined value)? participantJoined,
    TResult Function(ParticipantRemoved value)? participantRemoved,
    TResult Function(ParticipantStreamUpdate value)? participantStreamUpdate,
    TResult Function(ParticipantMicroClicked value)? participantMicroClicked,
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
    required TResult Function() screenOpened,
    required TResult Function() cameraPrepared,
    required TResult Function() leaveClicked,
    required TResult Function() microClicked,
    required TResult Function() expandClicked,
    required TResult Function() cameraClicked,
    required TResult Function() cameraSwitchClicked,
    required TResult Function(Duration countSeconds) countSecondsChanged,
    required TResult Function(RemoteParticipant participant) participantJoined,
    required TResult Function(RemoteParticipant participant) participantRemoved,
    required TResult Function(RemoteParticipant participant)
        participantStreamUpdate,
    required TResult Function(RemoteParticipantEntity participant)
        participantMicroClicked,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function()? cameraPrepared,
    TResult Function()? leaveClicked,
    TResult Function()? microClicked,
    TResult Function()? expandClicked,
    TResult Function()? cameraClicked,
    TResult Function()? cameraSwitchClicked,
    TResult Function(Duration countSeconds)? countSecondsChanged,
    TResult Function(RemoteParticipant participant)? participantJoined,
    TResult Function(RemoteParticipant participant)? participantRemoved,
    TResult Function(RemoteParticipant participant)? participantStreamUpdate,
    TResult Function(RemoteParticipantEntity participant)?
        participantMicroClicked,
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
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(LeaveClicked value) leaveClicked,
    required TResult Function(MicroClicked value) microClicked,
    required TResult Function(ExpandClicked value) expandClicked,
    required TResult Function(CameraClicked value) cameraClicked,
    required TResult Function(CameraSwitchClicked value) cameraSwitchClicked,
    required TResult Function(CountSecondsChanged value) countSecondsChanged,
    required TResult Function(ParticipantJoined value) participantJoined,
    required TResult Function(ParticipantRemoved value) participantRemoved,
    required TResult Function(ParticipantStreamUpdate value)
        participantStreamUpdate,
    required TResult Function(ParticipantMicroClicked value)
        participantMicroClicked,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(LeaveClicked value)? leaveClicked,
    TResult Function(MicroClicked value)? microClicked,
    TResult Function(ExpandClicked value)? expandClicked,
    TResult Function(CameraClicked value)? cameraClicked,
    TResult Function(CameraSwitchClicked value)? cameraSwitchClicked,
    TResult Function(CountSecondsChanged value)? countSecondsChanged,
    TResult Function(ParticipantJoined value)? participantJoined,
    TResult Function(ParticipantRemoved value)? participantRemoved,
    TResult Function(ParticipantStreamUpdate value)? participantStreamUpdate,
    TResult Function(ParticipantMicroClicked value)? participantMicroClicked,
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
abstract class $ScreenOpenedCopyWith<$Res> {
  factory $ScreenOpenedCopyWith(
          ScreenOpened value, $Res Function(ScreenOpened) then) =
      _$ScreenOpenedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScreenOpenedCopyWithImpl<$Res>
    extends _$BroadcastEventCopyWithImpl<$Res>
    implements $ScreenOpenedCopyWith<$Res> {
  _$ScreenOpenedCopyWithImpl(
      ScreenOpened _value, $Res Function(ScreenOpened) _then)
      : super(_value, (v) => _then(v as ScreenOpened));

  @override
  ScreenOpened get _value => super._value as ScreenOpened;
}

/// @nodoc

class _$ScreenOpened implements ScreenOpened {
  _$ScreenOpened();

  @override
  String toString() {
    return 'BroadcastEvent.screenOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ScreenOpened);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() screenOpened,
    required TResult Function() cameraPrepared,
    required TResult Function() leaveClicked,
    required TResult Function() microClicked,
    required TResult Function() expandClicked,
    required TResult Function() cameraClicked,
    required TResult Function() cameraSwitchClicked,
    required TResult Function(Duration countSeconds) countSecondsChanged,
    required TResult Function(RemoteParticipant participant) participantJoined,
    required TResult Function(RemoteParticipant participant) participantRemoved,
    required TResult Function(RemoteParticipant participant)
        participantStreamUpdate,
    required TResult Function(RemoteParticipantEntity participant)
        participantMicroClicked,
  }) {
    return screenOpened();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function()? cameraPrepared,
    TResult Function()? leaveClicked,
    TResult Function()? microClicked,
    TResult Function()? expandClicked,
    TResult Function()? cameraClicked,
    TResult Function()? cameraSwitchClicked,
    TResult Function(Duration countSeconds)? countSecondsChanged,
    TResult Function(RemoteParticipant participant)? participantJoined,
    TResult Function(RemoteParticipant participant)? participantRemoved,
    TResult Function(RemoteParticipant participant)? participantStreamUpdate,
    TResult Function(RemoteParticipantEntity participant)?
        participantMicroClicked,
    required TResult orElse(),
  }) {
    if (screenOpened != null) {
      return screenOpened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(LeaveClicked value) leaveClicked,
    required TResult Function(MicroClicked value) microClicked,
    required TResult Function(ExpandClicked value) expandClicked,
    required TResult Function(CameraClicked value) cameraClicked,
    required TResult Function(CameraSwitchClicked value) cameraSwitchClicked,
    required TResult Function(CountSecondsChanged value) countSecondsChanged,
    required TResult Function(ParticipantJoined value) participantJoined,
    required TResult Function(ParticipantRemoved value) participantRemoved,
    required TResult Function(ParticipantStreamUpdate value)
        participantStreamUpdate,
    required TResult Function(ParticipantMicroClicked value)
        participantMicroClicked,
  }) {
    return screenOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(LeaveClicked value)? leaveClicked,
    TResult Function(MicroClicked value)? microClicked,
    TResult Function(ExpandClicked value)? expandClicked,
    TResult Function(CameraClicked value)? cameraClicked,
    TResult Function(CameraSwitchClicked value)? cameraSwitchClicked,
    TResult Function(CountSecondsChanged value)? countSecondsChanged,
    TResult Function(ParticipantJoined value)? participantJoined,
    TResult Function(ParticipantRemoved value)? participantRemoved,
    TResult Function(ParticipantStreamUpdate value)? participantStreamUpdate,
    TResult Function(ParticipantMicroClicked value)? participantMicroClicked,
    required TResult orElse(),
  }) {
    if (screenOpened != null) {
      return screenOpened(this);
    }
    return orElse();
  }
}

abstract class ScreenOpened implements BroadcastEvent {
  factory ScreenOpened() = _$ScreenOpened;
}

/// @nodoc
abstract class $CameraPreparedCopyWith<$Res> {
  factory $CameraPreparedCopyWith(
          CameraPrepared value, $Res Function(CameraPrepared) then) =
      _$CameraPreparedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CameraPreparedCopyWithImpl<$Res>
    extends _$BroadcastEventCopyWithImpl<$Res>
    implements $CameraPreparedCopyWith<$Res> {
  _$CameraPreparedCopyWithImpl(
      CameraPrepared _value, $Res Function(CameraPrepared) _then)
      : super(_value, (v) => _then(v as CameraPrepared));

  @override
  CameraPrepared get _value => super._value as CameraPrepared;
}

/// @nodoc

class _$CameraPrepared implements CameraPrepared {
  _$CameraPrepared();

  @override
  String toString() {
    return 'BroadcastEvent.cameraPrepared()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CameraPrepared);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() screenOpened,
    required TResult Function() cameraPrepared,
    required TResult Function() leaveClicked,
    required TResult Function() microClicked,
    required TResult Function() expandClicked,
    required TResult Function() cameraClicked,
    required TResult Function() cameraSwitchClicked,
    required TResult Function(Duration countSeconds) countSecondsChanged,
    required TResult Function(RemoteParticipant participant) participantJoined,
    required TResult Function(RemoteParticipant participant) participantRemoved,
    required TResult Function(RemoteParticipant participant)
        participantStreamUpdate,
    required TResult Function(RemoteParticipantEntity participant)
        participantMicroClicked,
  }) {
    return cameraPrepared();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function()? cameraPrepared,
    TResult Function()? leaveClicked,
    TResult Function()? microClicked,
    TResult Function()? expandClicked,
    TResult Function()? cameraClicked,
    TResult Function()? cameraSwitchClicked,
    TResult Function(Duration countSeconds)? countSecondsChanged,
    TResult Function(RemoteParticipant participant)? participantJoined,
    TResult Function(RemoteParticipant participant)? participantRemoved,
    TResult Function(RemoteParticipant participant)? participantStreamUpdate,
    TResult Function(RemoteParticipantEntity participant)?
        participantMicroClicked,
    required TResult orElse(),
  }) {
    if (cameraPrepared != null) {
      return cameraPrepared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(LeaveClicked value) leaveClicked,
    required TResult Function(MicroClicked value) microClicked,
    required TResult Function(ExpandClicked value) expandClicked,
    required TResult Function(CameraClicked value) cameraClicked,
    required TResult Function(CameraSwitchClicked value) cameraSwitchClicked,
    required TResult Function(CountSecondsChanged value) countSecondsChanged,
    required TResult Function(ParticipantJoined value) participantJoined,
    required TResult Function(ParticipantRemoved value) participantRemoved,
    required TResult Function(ParticipantStreamUpdate value)
        participantStreamUpdate,
    required TResult Function(ParticipantMicroClicked value)
        participantMicroClicked,
  }) {
    return cameraPrepared(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(LeaveClicked value)? leaveClicked,
    TResult Function(MicroClicked value)? microClicked,
    TResult Function(ExpandClicked value)? expandClicked,
    TResult Function(CameraClicked value)? cameraClicked,
    TResult Function(CameraSwitchClicked value)? cameraSwitchClicked,
    TResult Function(CountSecondsChanged value)? countSecondsChanged,
    TResult Function(ParticipantJoined value)? participantJoined,
    TResult Function(ParticipantRemoved value)? participantRemoved,
    TResult Function(ParticipantStreamUpdate value)? participantStreamUpdate,
    TResult Function(ParticipantMicroClicked value)? participantMicroClicked,
    required TResult orElse(),
  }) {
    if (cameraPrepared != null) {
      return cameraPrepared(this);
    }
    return orElse();
  }
}

abstract class CameraPrepared implements BroadcastEvent {
  factory CameraPrepared() = _$CameraPrepared;
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
    required TResult Function() screenOpened,
    required TResult Function() cameraPrepared,
    required TResult Function() leaveClicked,
    required TResult Function() microClicked,
    required TResult Function() expandClicked,
    required TResult Function() cameraClicked,
    required TResult Function() cameraSwitchClicked,
    required TResult Function(Duration countSeconds) countSecondsChanged,
    required TResult Function(RemoteParticipant participant) participantJoined,
    required TResult Function(RemoteParticipant participant) participantRemoved,
    required TResult Function(RemoteParticipant participant)
        participantStreamUpdate,
    required TResult Function(RemoteParticipantEntity participant)
        participantMicroClicked,
  }) {
    return leaveClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function()? cameraPrepared,
    TResult Function()? leaveClicked,
    TResult Function()? microClicked,
    TResult Function()? expandClicked,
    TResult Function()? cameraClicked,
    TResult Function()? cameraSwitchClicked,
    TResult Function(Duration countSeconds)? countSecondsChanged,
    TResult Function(RemoteParticipant participant)? participantJoined,
    TResult Function(RemoteParticipant participant)? participantRemoved,
    TResult Function(RemoteParticipant participant)? participantStreamUpdate,
    TResult Function(RemoteParticipantEntity participant)?
        participantMicroClicked,
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
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(LeaveClicked value) leaveClicked,
    required TResult Function(MicroClicked value) microClicked,
    required TResult Function(ExpandClicked value) expandClicked,
    required TResult Function(CameraClicked value) cameraClicked,
    required TResult Function(CameraSwitchClicked value) cameraSwitchClicked,
    required TResult Function(CountSecondsChanged value) countSecondsChanged,
    required TResult Function(ParticipantJoined value) participantJoined,
    required TResult Function(ParticipantRemoved value) participantRemoved,
    required TResult Function(ParticipantStreamUpdate value)
        participantStreamUpdate,
    required TResult Function(ParticipantMicroClicked value)
        participantMicroClicked,
  }) {
    return leaveClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(LeaveClicked value)? leaveClicked,
    TResult Function(MicroClicked value)? microClicked,
    TResult Function(ExpandClicked value)? expandClicked,
    TResult Function(CameraClicked value)? cameraClicked,
    TResult Function(CameraSwitchClicked value)? cameraSwitchClicked,
    TResult Function(CountSecondsChanged value)? countSecondsChanged,
    TResult Function(ParticipantJoined value)? participantJoined,
    TResult Function(ParticipantRemoved value)? participantRemoved,
    TResult Function(ParticipantStreamUpdate value)? participantStreamUpdate,
    TResult Function(ParticipantMicroClicked value)? participantMicroClicked,
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
abstract class $MicroClickedCopyWith<$Res> {
  factory $MicroClickedCopyWith(
          MicroClicked value, $Res Function(MicroClicked) then) =
      _$MicroClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$MicroClickedCopyWithImpl<$Res>
    extends _$BroadcastEventCopyWithImpl<$Res>
    implements $MicroClickedCopyWith<$Res> {
  _$MicroClickedCopyWithImpl(
      MicroClicked _value, $Res Function(MicroClicked) _then)
      : super(_value, (v) => _then(v as MicroClicked));

  @override
  MicroClicked get _value => super._value as MicroClicked;
}

/// @nodoc

class _$MicroClicked implements MicroClicked {
  _$MicroClicked();

  @override
  String toString() {
    return 'BroadcastEvent.microClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MicroClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() screenOpened,
    required TResult Function() cameraPrepared,
    required TResult Function() leaveClicked,
    required TResult Function() microClicked,
    required TResult Function() expandClicked,
    required TResult Function() cameraClicked,
    required TResult Function() cameraSwitchClicked,
    required TResult Function(Duration countSeconds) countSecondsChanged,
    required TResult Function(RemoteParticipant participant) participantJoined,
    required TResult Function(RemoteParticipant participant) participantRemoved,
    required TResult Function(RemoteParticipant participant)
        participantStreamUpdate,
    required TResult Function(RemoteParticipantEntity participant)
        participantMicroClicked,
  }) {
    return microClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function()? cameraPrepared,
    TResult Function()? leaveClicked,
    TResult Function()? microClicked,
    TResult Function()? expandClicked,
    TResult Function()? cameraClicked,
    TResult Function()? cameraSwitchClicked,
    TResult Function(Duration countSeconds)? countSecondsChanged,
    TResult Function(RemoteParticipant participant)? participantJoined,
    TResult Function(RemoteParticipant participant)? participantRemoved,
    TResult Function(RemoteParticipant participant)? participantStreamUpdate,
    TResult Function(RemoteParticipantEntity participant)?
        participantMicroClicked,
    required TResult orElse(),
  }) {
    if (microClicked != null) {
      return microClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(LeaveClicked value) leaveClicked,
    required TResult Function(MicroClicked value) microClicked,
    required TResult Function(ExpandClicked value) expandClicked,
    required TResult Function(CameraClicked value) cameraClicked,
    required TResult Function(CameraSwitchClicked value) cameraSwitchClicked,
    required TResult Function(CountSecondsChanged value) countSecondsChanged,
    required TResult Function(ParticipantJoined value) participantJoined,
    required TResult Function(ParticipantRemoved value) participantRemoved,
    required TResult Function(ParticipantStreamUpdate value)
        participantStreamUpdate,
    required TResult Function(ParticipantMicroClicked value)
        participantMicroClicked,
  }) {
    return microClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(LeaveClicked value)? leaveClicked,
    TResult Function(MicroClicked value)? microClicked,
    TResult Function(ExpandClicked value)? expandClicked,
    TResult Function(CameraClicked value)? cameraClicked,
    TResult Function(CameraSwitchClicked value)? cameraSwitchClicked,
    TResult Function(CountSecondsChanged value)? countSecondsChanged,
    TResult Function(ParticipantJoined value)? participantJoined,
    TResult Function(ParticipantRemoved value)? participantRemoved,
    TResult Function(ParticipantStreamUpdate value)? participantStreamUpdate,
    TResult Function(ParticipantMicroClicked value)? participantMicroClicked,
    required TResult orElse(),
  }) {
    if (microClicked != null) {
      return microClicked(this);
    }
    return orElse();
  }
}

abstract class MicroClicked implements BroadcastEvent {
  factory MicroClicked() = _$MicroClicked;
}

/// @nodoc
abstract class $ExpandClickedCopyWith<$Res> {
  factory $ExpandClickedCopyWith(
          ExpandClicked value, $Res Function(ExpandClicked) then) =
      _$ExpandClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExpandClickedCopyWithImpl<$Res>
    extends _$BroadcastEventCopyWithImpl<$Res>
    implements $ExpandClickedCopyWith<$Res> {
  _$ExpandClickedCopyWithImpl(
      ExpandClicked _value, $Res Function(ExpandClicked) _then)
      : super(_value, (v) => _then(v as ExpandClicked));

  @override
  ExpandClicked get _value => super._value as ExpandClicked;
}

/// @nodoc

class _$ExpandClicked implements ExpandClicked {
  _$ExpandClicked();

  @override
  String toString() {
    return 'BroadcastEvent.expandClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ExpandClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() screenOpened,
    required TResult Function() cameraPrepared,
    required TResult Function() leaveClicked,
    required TResult Function() microClicked,
    required TResult Function() expandClicked,
    required TResult Function() cameraClicked,
    required TResult Function() cameraSwitchClicked,
    required TResult Function(Duration countSeconds) countSecondsChanged,
    required TResult Function(RemoteParticipant participant) participantJoined,
    required TResult Function(RemoteParticipant participant) participantRemoved,
    required TResult Function(RemoteParticipant participant)
        participantStreamUpdate,
    required TResult Function(RemoteParticipantEntity participant)
        participantMicroClicked,
  }) {
    return expandClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function()? cameraPrepared,
    TResult Function()? leaveClicked,
    TResult Function()? microClicked,
    TResult Function()? expandClicked,
    TResult Function()? cameraClicked,
    TResult Function()? cameraSwitchClicked,
    TResult Function(Duration countSeconds)? countSecondsChanged,
    TResult Function(RemoteParticipant participant)? participantJoined,
    TResult Function(RemoteParticipant participant)? participantRemoved,
    TResult Function(RemoteParticipant participant)? participantStreamUpdate,
    TResult Function(RemoteParticipantEntity participant)?
        participantMicroClicked,
    required TResult orElse(),
  }) {
    if (expandClicked != null) {
      return expandClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(LeaveClicked value) leaveClicked,
    required TResult Function(MicroClicked value) microClicked,
    required TResult Function(ExpandClicked value) expandClicked,
    required TResult Function(CameraClicked value) cameraClicked,
    required TResult Function(CameraSwitchClicked value) cameraSwitchClicked,
    required TResult Function(CountSecondsChanged value) countSecondsChanged,
    required TResult Function(ParticipantJoined value) participantJoined,
    required TResult Function(ParticipantRemoved value) participantRemoved,
    required TResult Function(ParticipantStreamUpdate value)
        participantStreamUpdate,
    required TResult Function(ParticipantMicroClicked value)
        participantMicroClicked,
  }) {
    return expandClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(LeaveClicked value)? leaveClicked,
    TResult Function(MicroClicked value)? microClicked,
    TResult Function(ExpandClicked value)? expandClicked,
    TResult Function(CameraClicked value)? cameraClicked,
    TResult Function(CameraSwitchClicked value)? cameraSwitchClicked,
    TResult Function(CountSecondsChanged value)? countSecondsChanged,
    TResult Function(ParticipantJoined value)? participantJoined,
    TResult Function(ParticipantRemoved value)? participantRemoved,
    TResult Function(ParticipantStreamUpdate value)? participantStreamUpdate,
    TResult Function(ParticipantMicroClicked value)? participantMicroClicked,
    required TResult orElse(),
  }) {
    if (expandClicked != null) {
      return expandClicked(this);
    }
    return orElse();
  }
}

abstract class ExpandClicked implements BroadcastEvent {
  factory ExpandClicked() = _$ExpandClicked;
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
    required TResult Function() screenOpened,
    required TResult Function() cameraPrepared,
    required TResult Function() leaveClicked,
    required TResult Function() microClicked,
    required TResult Function() expandClicked,
    required TResult Function() cameraClicked,
    required TResult Function() cameraSwitchClicked,
    required TResult Function(Duration countSeconds) countSecondsChanged,
    required TResult Function(RemoteParticipant participant) participantJoined,
    required TResult Function(RemoteParticipant participant) participantRemoved,
    required TResult Function(RemoteParticipant participant)
        participantStreamUpdate,
    required TResult Function(RemoteParticipantEntity participant)
        participantMicroClicked,
  }) {
    return cameraClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function()? cameraPrepared,
    TResult Function()? leaveClicked,
    TResult Function()? microClicked,
    TResult Function()? expandClicked,
    TResult Function()? cameraClicked,
    TResult Function()? cameraSwitchClicked,
    TResult Function(Duration countSeconds)? countSecondsChanged,
    TResult Function(RemoteParticipant participant)? participantJoined,
    TResult Function(RemoteParticipant participant)? participantRemoved,
    TResult Function(RemoteParticipant participant)? participantStreamUpdate,
    TResult Function(RemoteParticipantEntity participant)?
        participantMicroClicked,
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
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(LeaveClicked value) leaveClicked,
    required TResult Function(MicroClicked value) microClicked,
    required TResult Function(ExpandClicked value) expandClicked,
    required TResult Function(CameraClicked value) cameraClicked,
    required TResult Function(CameraSwitchClicked value) cameraSwitchClicked,
    required TResult Function(CountSecondsChanged value) countSecondsChanged,
    required TResult Function(ParticipantJoined value) participantJoined,
    required TResult Function(ParticipantRemoved value) participantRemoved,
    required TResult Function(ParticipantStreamUpdate value)
        participantStreamUpdate,
    required TResult Function(ParticipantMicroClicked value)
        participantMicroClicked,
  }) {
    return cameraClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(LeaveClicked value)? leaveClicked,
    TResult Function(MicroClicked value)? microClicked,
    TResult Function(ExpandClicked value)? expandClicked,
    TResult Function(CameraClicked value)? cameraClicked,
    TResult Function(CameraSwitchClicked value)? cameraSwitchClicked,
    TResult Function(CountSecondsChanged value)? countSecondsChanged,
    TResult Function(ParticipantJoined value)? participantJoined,
    TResult Function(ParticipantRemoved value)? participantRemoved,
    TResult Function(ParticipantStreamUpdate value)? participantStreamUpdate,
    TResult Function(ParticipantMicroClicked value)? participantMicroClicked,
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
    required TResult Function() screenOpened,
    required TResult Function() cameraPrepared,
    required TResult Function() leaveClicked,
    required TResult Function() microClicked,
    required TResult Function() expandClicked,
    required TResult Function() cameraClicked,
    required TResult Function() cameraSwitchClicked,
    required TResult Function(Duration countSeconds) countSecondsChanged,
    required TResult Function(RemoteParticipant participant) participantJoined,
    required TResult Function(RemoteParticipant participant) participantRemoved,
    required TResult Function(RemoteParticipant participant)
        participantStreamUpdate,
    required TResult Function(RemoteParticipantEntity participant)
        participantMicroClicked,
  }) {
    return cameraSwitchClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function()? cameraPrepared,
    TResult Function()? leaveClicked,
    TResult Function()? microClicked,
    TResult Function()? expandClicked,
    TResult Function()? cameraClicked,
    TResult Function()? cameraSwitchClicked,
    TResult Function(Duration countSeconds)? countSecondsChanged,
    TResult Function(RemoteParticipant participant)? participantJoined,
    TResult Function(RemoteParticipant participant)? participantRemoved,
    TResult Function(RemoteParticipant participant)? participantStreamUpdate,
    TResult Function(RemoteParticipantEntity participant)?
        participantMicroClicked,
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
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(LeaveClicked value) leaveClicked,
    required TResult Function(MicroClicked value) microClicked,
    required TResult Function(ExpandClicked value) expandClicked,
    required TResult Function(CameraClicked value) cameraClicked,
    required TResult Function(CameraSwitchClicked value) cameraSwitchClicked,
    required TResult Function(CountSecondsChanged value) countSecondsChanged,
    required TResult Function(ParticipantJoined value) participantJoined,
    required TResult Function(ParticipantRemoved value) participantRemoved,
    required TResult Function(ParticipantStreamUpdate value)
        participantStreamUpdate,
    required TResult Function(ParticipantMicroClicked value)
        participantMicroClicked,
  }) {
    return cameraSwitchClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(LeaveClicked value)? leaveClicked,
    TResult Function(MicroClicked value)? microClicked,
    TResult Function(ExpandClicked value)? expandClicked,
    TResult Function(CameraClicked value)? cameraClicked,
    TResult Function(CameraSwitchClicked value)? cameraSwitchClicked,
    TResult Function(CountSecondsChanged value)? countSecondsChanged,
    TResult Function(ParticipantJoined value)? participantJoined,
    TResult Function(ParticipantRemoved value)? participantRemoved,
    TResult Function(ParticipantStreamUpdate value)? participantStreamUpdate,
    TResult Function(ParticipantMicroClicked value)? participantMicroClicked,
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
    required TResult Function() screenOpened,
    required TResult Function() cameraPrepared,
    required TResult Function() leaveClicked,
    required TResult Function() microClicked,
    required TResult Function() expandClicked,
    required TResult Function() cameraClicked,
    required TResult Function() cameraSwitchClicked,
    required TResult Function(Duration countSeconds) countSecondsChanged,
    required TResult Function(RemoteParticipant participant) participantJoined,
    required TResult Function(RemoteParticipant participant) participantRemoved,
    required TResult Function(RemoteParticipant participant)
        participantStreamUpdate,
    required TResult Function(RemoteParticipantEntity participant)
        participantMicroClicked,
  }) {
    return countSecondsChanged(countSeconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function()? cameraPrepared,
    TResult Function()? leaveClicked,
    TResult Function()? microClicked,
    TResult Function()? expandClicked,
    TResult Function()? cameraClicked,
    TResult Function()? cameraSwitchClicked,
    TResult Function(Duration countSeconds)? countSecondsChanged,
    TResult Function(RemoteParticipant participant)? participantJoined,
    TResult Function(RemoteParticipant participant)? participantRemoved,
    TResult Function(RemoteParticipant participant)? participantStreamUpdate,
    TResult Function(RemoteParticipantEntity participant)?
        participantMicroClicked,
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
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(LeaveClicked value) leaveClicked,
    required TResult Function(MicroClicked value) microClicked,
    required TResult Function(ExpandClicked value) expandClicked,
    required TResult Function(CameraClicked value) cameraClicked,
    required TResult Function(CameraSwitchClicked value) cameraSwitchClicked,
    required TResult Function(CountSecondsChanged value) countSecondsChanged,
    required TResult Function(ParticipantJoined value) participantJoined,
    required TResult Function(ParticipantRemoved value) participantRemoved,
    required TResult Function(ParticipantStreamUpdate value)
        participantStreamUpdate,
    required TResult Function(ParticipantMicroClicked value)
        participantMicroClicked,
  }) {
    return countSecondsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(LeaveClicked value)? leaveClicked,
    TResult Function(MicroClicked value)? microClicked,
    TResult Function(ExpandClicked value)? expandClicked,
    TResult Function(CameraClicked value)? cameraClicked,
    TResult Function(CameraSwitchClicked value)? cameraSwitchClicked,
    TResult Function(CountSecondsChanged value)? countSecondsChanged,
    TResult Function(ParticipantJoined value)? participantJoined,
    TResult Function(ParticipantRemoved value)? participantRemoved,
    TResult Function(ParticipantStreamUpdate value)? participantStreamUpdate,
    TResult Function(ParticipantMicroClicked value)? participantMicroClicked,
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
abstract class $ParticipantJoinedCopyWith<$Res> {
  factory $ParticipantJoinedCopyWith(
          ParticipantJoined value, $Res Function(ParticipantJoined) then) =
      _$ParticipantJoinedCopyWithImpl<$Res>;
  $Res call({RemoteParticipant participant});
}

/// @nodoc
class _$ParticipantJoinedCopyWithImpl<$Res>
    extends _$BroadcastEventCopyWithImpl<$Res>
    implements $ParticipantJoinedCopyWith<$Res> {
  _$ParticipantJoinedCopyWithImpl(
      ParticipantJoined _value, $Res Function(ParticipantJoined) _then)
      : super(_value, (v) => _then(v as ParticipantJoined));

  @override
  ParticipantJoined get _value => super._value as ParticipantJoined;

  @override
  $Res call({
    Object? participant = freezed,
  }) {
    return _then(ParticipantJoined(
      participant == freezed
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as RemoteParticipant,
    ));
  }
}

/// @nodoc

class _$ParticipantJoined implements ParticipantJoined {
  _$ParticipantJoined(this.participant);

  @override
  final RemoteParticipant participant;

  @override
  String toString() {
    return 'BroadcastEvent.participantJoined(participant: $participant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParticipantJoined &&
            (identical(other.participant, participant) ||
                const DeepCollectionEquality()
                    .equals(other.participant, participant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(participant);

  @JsonKey(ignore: true)
  @override
  $ParticipantJoinedCopyWith<ParticipantJoined> get copyWith =>
      _$ParticipantJoinedCopyWithImpl<ParticipantJoined>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() screenOpened,
    required TResult Function() cameraPrepared,
    required TResult Function() leaveClicked,
    required TResult Function() microClicked,
    required TResult Function() expandClicked,
    required TResult Function() cameraClicked,
    required TResult Function() cameraSwitchClicked,
    required TResult Function(Duration countSeconds) countSecondsChanged,
    required TResult Function(RemoteParticipant participant) participantJoined,
    required TResult Function(RemoteParticipant participant) participantRemoved,
    required TResult Function(RemoteParticipant participant)
        participantStreamUpdate,
    required TResult Function(RemoteParticipantEntity participant)
        participantMicroClicked,
  }) {
    return participantJoined(participant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function()? cameraPrepared,
    TResult Function()? leaveClicked,
    TResult Function()? microClicked,
    TResult Function()? expandClicked,
    TResult Function()? cameraClicked,
    TResult Function()? cameraSwitchClicked,
    TResult Function(Duration countSeconds)? countSecondsChanged,
    TResult Function(RemoteParticipant participant)? participantJoined,
    TResult Function(RemoteParticipant participant)? participantRemoved,
    TResult Function(RemoteParticipant participant)? participantStreamUpdate,
    TResult Function(RemoteParticipantEntity participant)?
        participantMicroClicked,
    required TResult orElse(),
  }) {
    if (participantJoined != null) {
      return participantJoined(participant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(LeaveClicked value) leaveClicked,
    required TResult Function(MicroClicked value) microClicked,
    required TResult Function(ExpandClicked value) expandClicked,
    required TResult Function(CameraClicked value) cameraClicked,
    required TResult Function(CameraSwitchClicked value) cameraSwitchClicked,
    required TResult Function(CountSecondsChanged value) countSecondsChanged,
    required TResult Function(ParticipantJoined value) participantJoined,
    required TResult Function(ParticipantRemoved value) participantRemoved,
    required TResult Function(ParticipantStreamUpdate value)
        participantStreamUpdate,
    required TResult Function(ParticipantMicroClicked value)
        participantMicroClicked,
  }) {
    return participantJoined(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(LeaveClicked value)? leaveClicked,
    TResult Function(MicroClicked value)? microClicked,
    TResult Function(ExpandClicked value)? expandClicked,
    TResult Function(CameraClicked value)? cameraClicked,
    TResult Function(CameraSwitchClicked value)? cameraSwitchClicked,
    TResult Function(CountSecondsChanged value)? countSecondsChanged,
    TResult Function(ParticipantJoined value)? participantJoined,
    TResult Function(ParticipantRemoved value)? participantRemoved,
    TResult Function(ParticipantStreamUpdate value)? participantStreamUpdate,
    TResult Function(ParticipantMicroClicked value)? participantMicroClicked,
    required TResult orElse(),
  }) {
    if (participantJoined != null) {
      return participantJoined(this);
    }
    return orElse();
  }
}

abstract class ParticipantJoined implements BroadcastEvent {
  factory ParticipantJoined(RemoteParticipant participant) =
      _$ParticipantJoined;

  RemoteParticipant get participant => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParticipantJoinedCopyWith<ParticipantJoined> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantRemovedCopyWith<$Res> {
  factory $ParticipantRemovedCopyWith(
          ParticipantRemoved value, $Res Function(ParticipantRemoved) then) =
      _$ParticipantRemovedCopyWithImpl<$Res>;
  $Res call({RemoteParticipant participant});
}

/// @nodoc
class _$ParticipantRemovedCopyWithImpl<$Res>
    extends _$BroadcastEventCopyWithImpl<$Res>
    implements $ParticipantRemovedCopyWith<$Res> {
  _$ParticipantRemovedCopyWithImpl(
      ParticipantRemoved _value, $Res Function(ParticipantRemoved) _then)
      : super(_value, (v) => _then(v as ParticipantRemoved));

  @override
  ParticipantRemoved get _value => super._value as ParticipantRemoved;

  @override
  $Res call({
    Object? participant = freezed,
  }) {
    return _then(ParticipantRemoved(
      participant == freezed
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as RemoteParticipant,
    ));
  }
}

/// @nodoc

class _$ParticipantRemoved implements ParticipantRemoved {
  _$ParticipantRemoved(this.participant);

  @override
  final RemoteParticipant participant;

  @override
  String toString() {
    return 'BroadcastEvent.participantRemoved(participant: $participant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParticipantRemoved &&
            (identical(other.participant, participant) ||
                const DeepCollectionEquality()
                    .equals(other.participant, participant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(participant);

  @JsonKey(ignore: true)
  @override
  $ParticipantRemovedCopyWith<ParticipantRemoved> get copyWith =>
      _$ParticipantRemovedCopyWithImpl<ParticipantRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() screenOpened,
    required TResult Function() cameraPrepared,
    required TResult Function() leaveClicked,
    required TResult Function() microClicked,
    required TResult Function() expandClicked,
    required TResult Function() cameraClicked,
    required TResult Function() cameraSwitchClicked,
    required TResult Function(Duration countSeconds) countSecondsChanged,
    required TResult Function(RemoteParticipant participant) participantJoined,
    required TResult Function(RemoteParticipant participant) participantRemoved,
    required TResult Function(RemoteParticipant participant)
        participantStreamUpdate,
    required TResult Function(RemoteParticipantEntity participant)
        participantMicroClicked,
  }) {
    return participantRemoved(participant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function()? cameraPrepared,
    TResult Function()? leaveClicked,
    TResult Function()? microClicked,
    TResult Function()? expandClicked,
    TResult Function()? cameraClicked,
    TResult Function()? cameraSwitchClicked,
    TResult Function(Duration countSeconds)? countSecondsChanged,
    TResult Function(RemoteParticipant participant)? participantJoined,
    TResult Function(RemoteParticipant participant)? participantRemoved,
    TResult Function(RemoteParticipant participant)? participantStreamUpdate,
    TResult Function(RemoteParticipantEntity participant)?
        participantMicroClicked,
    required TResult orElse(),
  }) {
    if (participantRemoved != null) {
      return participantRemoved(participant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(LeaveClicked value) leaveClicked,
    required TResult Function(MicroClicked value) microClicked,
    required TResult Function(ExpandClicked value) expandClicked,
    required TResult Function(CameraClicked value) cameraClicked,
    required TResult Function(CameraSwitchClicked value) cameraSwitchClicked,
    required TResult Function(CountSecondsChanged value) countSecondsChanged,
    required TResult Function(ParticipantJoined value) participantJoined,
    required TResult Function(ParticipantRemoved value) participantRemoved,
    required TResult Function(ParticipantStreamUpdate value)
        participantStreamUpdate,
    required TResult Function(ParticipantMicroClicked value)
        participantMicroClicked,
  }) {
    return participantRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(LeaveClicked value)? leaveClicked,
    TResult Function(MicroClicked value)? microClicked,
    TResult Function(ExpandClicked value)? expandClicked,
    TResult Function(CameraClicked value)? cameraClicked,
    TResult Function(CameraSwitchClicked value)? cameraSwitchClicked,
    TResult Function(CountSecondsChanged value)? countSecondsChanged,
    TResult Function(ParticipantJoined value)? participantJoined,
    TResult Function(ParticipantRemoved value)? participantRemoved,
    TResult Function(ParticipantStreamUpdate value)? participantStreamUpdate,
    TResult Function(ParticipantMicroClicked value)? participantMicroClicked,
    required TResult orElse(),
  }) {
    if (participantRemoved != null) {
      return participantRemoved(this);
    }
    return orElse();
  }
}

abstract class ParticipantRemoved implements BroadcastEvent {
  factory ParticipantRemoved(RemoteParticipant participant) =
      _$ParticipantRemoved;

  RemoteParticipant get participant => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParticipantRemovedCopyWith<ParticipantRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantStreamUpdateCopyWith<$Res> {
  factory $ParticipantStreamUpdateCopyWith(ParticipantStreamUpdate value,
          $Res Function(ParticipantStreamUpdate) then) =
      _$ParticipantStreamUpdateCopyWithImpl<$Res>;
  $Res call({RemoteParticipant participant});
}

/// @nodoc
class _$ParticipantStreamUpdateCopyWithImpl<$Res>
    extends _$BroadcastEventCopyWithImpl<$Res>
    implements $ParticipantStreamUpdateCopyWith<$Res> {
  _$ParticipantStreamUpdateCopyWithImpl(ParticipantStreamUpdate _value,
      $Res Function(ParticipantStreamUpdate) _then)
      : super(_value, (v) => _then(v as ParticipantStreamUpdate));

  @override
  ParticipantStreamUpdate get _value => super._value as ParticipantStreamUpdate;

  @override
  $Res call({
    Object? participant = freezed,
  }) {
    return _then(ParticipantStreamUpdate(
      participant == freezed
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as RemoteParticipant,
    ));
  }
}

/// @nodoc

class _$ParticipantStreamUpdate implements ParticipantStreamUpdate {
  _$ParticipantStreamUpdate(this.participant);

  @override
  final RemoteParticipant participant;

  @override
  String toString() {
    return 'BroadcastEvent.participantStreamUpdate(participant: $participant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParticipantStreamUpdate &&
            (identical(other.participant, participant) ||
                const DeepCollectionEquality()
                    .equals(other.participant, participant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(participant);

  @JsonKey(ignore: true)
  @override
  $ParticipantStreamUpdateCopyWith<ParticipantStreamUpdate> get copyWith =>
      _$ParticipantStreamUpdateCopyWithImpl<ParticipantStreamUpdate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() screenOpened,
    required TResult Function() cameraPrepared,
    required TResult Function() leaveClicked,
    required TResult Function() microClicked,
    required TResult Function() expandClicked,
    required TResult Function() cameraClicked,
    required TResult Function() cameraSwitchClicked,
    required TResult Function(Duration countSeconds) countSecondsChanged,
    required TResult Function(RemoteParticipant participant) participantJoined,
    required TResult Function(RemoteParticipant participant) participantRemoved,
    required TResult Function(RemoteParticipant participant)
        participantStreamUpdate,
    required TResult Function(RemoteParticipantEntity participant)
        participantMicroClicked,
  }) {
    return participantStreamUpdate(participant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function()? cameraPrepared,
    TResult Function()? leaveClicked,
    TResult Function()? microClicked,
    TResult Function()? expandClicked,
    TResult Function()? cameraClicked,
    TResult Function()? cameraSwitchClicked,
    TResult Function(Duration countSeconds)? countSecondsChanged,
    TResult Function(RemoteParticipant participant)? participantJoined,
    TResult Function(RemoteParticipant participant)? participantRemoved,
    TResult Function(RemoteParticipant participant)? participantStreamUpdate,
    TResult Function(RemoteParticipantEntity participant)?
        participantMicroClicked,
    required TResult orElse(),
  }) {
    if (participantStreamUpdate != null) {
      return participantStreamUpdate(participant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(LeaveClicked value) leaveClicked,
    required TResult Function(MicroClicked value) microClicked,
    required TResult Function(ExpandClicked value) expandClicked,
    required TResult Function(CameraClicked value) cameraClicked,
    required TResult Function(CameraSwitchClicked value) cameraSwitchClicked,
    required TResult Function(CountSecondsChanged value) countSecondsChanged,
    required TResult Function(ParticipantJoined value) participantJoined,
    required TResult Function(ParticipantRemoved value) participantRemoved,
    required TResult Function(ParticipantStreamUpdate value)
        participantStreamUpdate,
    required TResult Function(ParticipantMicroClicked value)
        participantMicroClicked,
  }) {
    return participantStreamUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(LeaveClicked value)? leaveClicked,
    TResult Function(MicroClicked value)? microClicked,
    TResult Function(ExpandClicked value)? expandClicked,
    TResult Function(CameraClicked value)? cameraClicked,
    TResult Function(CameraSwitchClicked value)? cameraSwitchClicked,
    TResult Function(CountSecondsChanged value)? countSecondsChanged,
    TResult Function(ParticipantJoined value)? participantJoined,
    TResult Function(ParticipantRemoved value)? participantRemoved,
    TResult Function(ParticipantStreamUpdate value)? participantStreamUpdate,
    TResult Function(ParticipantMicroClicked value)? participantMicroClicked,
    required TResult orElse(),
  }) {
    if (participantStreamUpdate != null) {
      return participantStreamUpdate(this);
    }
    return orElse();
  }
}

abstract class ParticipantStreamUpdate implements BroadcastEvent {
  factory ParticipantStreamUpdate(RemoteParticipant participant) =
      _$ParticipantStreamUpdate;

  RemoteParticipant get participant => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParticipantStreamUpdateCopyWith<ParticipantStreamUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantMicroClickedCopyWith<$Res> {
  factory $ParticipantMicroClickedCopyWith(ParticipantMicroClicked value,
          $Res Function(ParticipantMicroClicked) then) =
      _$ParticipantMicroClickedCopyWithImpl<$Res>;
  $Res call({RemoteParticipantEntity participant});
}

/// @nodoc
class _$ParticipantMicroClickedCopyWithImpl<$Res>
    extends _$BroadcastEventCopyWithImpl<$Res>
    implements $ParticipantMicroClickedCopyWith<$Res> {
  _$ParticipantMicroClickedCopyWithImpl(ParticipantMicroClicked _value,
      $Res Function(ParticipantMicroClicked) _then)
      : super(_value, (v) => _then(v as ParticipantMicroClicked));

  @override
  ParticipantMicroClicked get _value => super._value as ParticipantMicroClicked;

  @override
  $Res call({
    Object? participant = freezed,
  }) {
    return _then(ParticipantMicroClicked(
      participant == freezed
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as RemoteParticipantEntity,
    ));
  }
}

/// @nodoc

class _$ParticipantMicroClicked implements ParticipantMicroClicked {
  _$ParticipantMicroClicked(this.participant);

  @override
  final RemoteParticipantEntity participant;

  @override
  String toString() {
    return 'BroadcastEvent.participantMicroClicked(participant: $participant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParticipantMicroClicked &&
            (identical(other.participant, participant) ||
                const DeepCollectionEquality()
                    .equals(other.participant, participant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(participant);

  @JsonKey(ignore: true)
  @override
  $ParticipantMicroClickedCopyWith<ParticipantMicroClicked> get copyWith =>
      _$ParticipantMicroClickedCopyWithImpl<ParticipantMicroClicked>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() screenOpened,
    required TResult Function() cameraPrepared,
    required TResult Function() leaveClicked,
    required TResult Function() microClicked,
    required TResult Function() expandClicked,
    required TResult Function() cameraClicked,
    required TResult Function() cameraSwitchClicked,
    required TResult Function(Duration countSeconds) countSecondsChanged,
    required TResult Function(RemoteParticipant participant) participantJoined,
    required TResult Function(RemoteParticipant participant) participantRemoved,
    required TResult Function(RemoteParticipant participant)
        participantStreamUpdate,
    required TResult Function(RemoteParticipantEntity participant)
        participantMicroClicked,
  }) {
    return participantMicroClicked(participant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function()? cameraPrepared,
    TResult Function()? leaveClicked,
    TResult Function()? microClicked,
    TResult Function()? expandClicked,
    TResult Function()? cameraClicked,
    TResult Function()? cameraSwitchClicked,
    TResult Function(Duration countSeconds)? countSecondsChanged,
    TResult Function(RemoteParticipant participant)? participantJoined,
    TResult Function(RemoteParticipant participant)? participantRemoved,
    TResult Function(RemoteParticipant participant)? participantStreamUpdate,
    TResult Function(RemoteParticipantEntity participant)?
        participantMicroClicked,
    required TResult orElse(),
  }) {
    if (participantMicroClicked != null) {
      return participantMicroClicked(participant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(CameraPrepared value) cameraPrepared,
    required TResult Function(LeaveClicked value) leaveClicked,
    required TResult Function(MicroClicked value) microClicked,
    required TResult Function(ExpandClicked value) expandClicked,
    required TResult Function(CameraClicked value) cameraClicked,
    required TResult Function(CameraSwitchClicked value) cameraSwitchClicked,
    required TResult Function(CountSecondsChanged value) countSecondsChanged,
    required TResult Function(ParticipantJoined value) participantJoined,
    required TResult Function(ParticipantRemoved value) participantRemoved,
    required TResult Function(ParticipantStreamUpdate value)
        participantStreamUpdate,
    required TResult Function(ParticipantMicroClicked value)
        participantMicroClicked,
  }) {
    return participantMicroClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(CameraPrepared value)? cameraPrepared,
    TResult Function(LeaveClicked value)? leaveClicked,
    TResult Function(MicroClicked value)? microClicked,
    TResult Function(ExpandClicked value)? expandClicked,
    TResult Function(CameraClicked value)? cameraClicked,
    TResult Function(CameraSwitchClicked value)? cameraSwitchClicked,
    TResult Function(CountSecondsChanged value)? countSecondsChanged,
    TResult Function(ParticipantJoined value)? participantJoined,
    TResult Function(ParticipantRemoved value)? participantRemoved,
    TResult Function(ParticipantStreamUpdate value)? participantStreamUpdate,
    TResult Function(ParticipantMicroClicked value)? participantMicroClicked,
    required TResult orElse(),
  }) {
    if (participantMicroClicked != null) {
      return participantMicroClicked(this);
    }
    return orElse();
  }
}

abstract class ParticipantMicroClicked implements BroadcastEvent {
  factory ParticipantMicroClicked(RemoteParticipantEntity participant) =
      _$ParticipantMicroClicked;

  RemoteParticipantEntity get participant => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParticipantMicroClickedCopyWith<ParticipantMicroClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BroadcastStateTearOff {
  const _$BroadcastStateTearOff();

  _BroadcastState call(
      {BlocAction? action,
      required BroadcastEntity broadcast,
      List<ViewerEntity> viewers = const [],
      String broadcastTimer = '00:00',
      bool isMicrophoneEnabled = true,
      bool isCameraEnabled = true,
      bool isExpanded = false,
      bool cameraReady = false,
      CameraLensDirection cameraDirection = CameraLensDirection.front,
      List<RemoteParticipantEntity> participants = const []}) {
    return _BroadcastState(
      action: action,
      broadcast: broadcast,
      viewers: viewers,
      broadcastTimer: broadcastTimer,
      isMicrophoneEnabled: isMicrophoneEnabled,
      isCameraEnabled: isCameraEnabled,
      isExpanded: isExpanded,
      cameraReady: cameraReady,
      cameraDirection: cameraDirection,
      participants: participants,
    );
  }
}

/// @nodoc
const $BroadcastState = _$BroadcastStateTearOff();

/// @nodoc
mixin _$BroadcastState {
  BlocAction? get action => throw _privateConstructorUsedError;
  BroadcastEntity get broadcast => throw _privateConstructorUsedError;
  List<ViewerEntity> get viewers => throw _privateConstructorUsedError;
  String get broadcastTimer => throw _privateConstructorUsedError;
  bool get isMicrophoneEnabled => throw _privateConstructorUsedError;
  bool get isCameraEnabled => throw _privateConstructorUsedError;
  bool get isExpanded => throw _privateConstructorUsedError;
  bool get cameraReady => throw _privateConstructorUsedError;
  CameraLensDirection get cameraDirection => throw _privateConstructorUsedError;
  List<RemoteParticipantEntity> get participants =>
      throw _privateConstructorUsedError;

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
      BroadcastEntity broadcast,
      List<ViewerEntity> viewers,
      String broadcastTimer,
      bool isMicrophoneEnabled,
      bool isCameraEnabled,
      bool isExpanded,
      bool cameraReady,
      CameraLensDirection cameraDirection,
      List<RemoteParticipantEntity> participants});

  $BroadcastEntityCopyWith<$Res> get broadcast;
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
    Object? isExpanded = freezed,
    Object? cameraReady = freezed,
    Object? cameraDirection = freezed,
    Object? participants = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      broadcast: broadcast == freezed
          ? _value.broadcast
          : broadcast // ignore: cast_nullable_to_non_nullable
              as BroadcastEntity,
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
      isExpanded: isExpanded == freezed
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraReady: cameraReady == freezed
          ? _value.cameraReady
          : cameraReady // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraDirection: cameraDirection == freezed
          ? _value.cameraDirection
          : cameraDirection // ignore: cast_nullable_to_non_nullable
              as CameraLensDirection,
      participants: participants == freezed
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<RemoteParticipantEntity>,
    ));
  }

  @override
  $BroadcastEntityCopyWith<$Res> get broadcast {
    return $BroadcastEntityCopyWith<$Res>(_value.broadcast, (value) {
      return _then(_value.copyWith(broadcast: value));
    });
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
      BroadcastEntity broadcast,
      List<ViewerEntity> viewers,
      String broadcastTimer,
      bool isMicrophoneEnabled,
      bool isCameraEnabled,
      bool isExpanded,
      bool cameraReady,
      CameraLensDirection cameraDirection,
      List<RemoteParticipantEntity> participants});

  @override
  $BroadcastEntityCopyWith<$Res> get broadcast;
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
    Object? isExpanded = freezed,
    Object? cameraReady = freezed,
    Object? cameraDirection = freezed,
    Object? participants = freezed,
  }) {
    return _then(_BroadcastState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      broadcast: broadcast == freezed
          ? _value.broadcast
          : broadcast // ignore: cast_nullable_to_non_nullable
              as BroadcastEntity,
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
      isExpanded: isExpanded == freezed
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraReady: cameraReady == freezed
          ? _value.cameraReady
          : cameraReady // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraDirection: cameraDirection == freezed
          ? _value.cameraDirection
          : cameraDirection // ignore: cast_nullable_to_non_nullable
              as CameraLensDirection,
      participants: participants == freezed
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<RemoteParticipantEntity>,
    ));
  }
}

/// @nodoc

class _$_BroadcastState implements _BroadcastState {
  _$_BroadcastState(
      {this.action,
      required this.broadcast,
      this.viewers = const [],
      this.broadcastTimer = '00:00',
      this.isMicrophoneEnabled = true,
      this.isCameraEnabled = true,
      this.isExpanded = false,
      this.cameraReady = false,
      this.cameraDirection = CameraLensDirection.front,
      this.participants = const []});

  @override
  final BlocAction? action;
  @override
  final BroadcastEntity broadcast;
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
  @JsonKey(defaultValue: false)
  @override
  final bool isExpanded;
  @JsonKey(defaultValue: false)
  @override
  final bool cameraReady;
  @JsonKey(defaultValue: CameraLensDirection.front)
  @override
  final CameraLensDirection cameraDirection;
  @JsonKey(defaultValue: const [])
  @override
  final List<RemoteParticipantEntity> participants;

  @override
  String toString() {
    return 'BroadcastState(action: $action, broadcast: $broadcast, viewers: $viewers, broadcastTimer: $broadcastTimer, isMicrophoneEnabled: $isMicrophoneEnabled, isCameraEnabled: $isCameraEnabled, isExpanded: $isExpanded, cameraReady: $cameraReady, cameraDirection: $cameraDirection, participants: $participants)';
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
                    .equals(other.isCameraEnabled, isCameraEnabled)) &&
            (identical(other.isExpanded, isExpanded) ||
                const DeepCollectionEquality()
                    .equals(other.isExpanded, isExpanded)) &&
            (identical(other.cameraReady, cameraReady) ||
                const DeepCollectionEquality()
                    .equals(other.cameraReady, cameraReady)) &&
            (identical(other.cameraDirection, cameraDirection) ||
                const DeepCollectionEquality()
                    .equals(other.cameraDirection, cameraDirection)) &&
            (identical(other.participants, participants) ||
                const DeepCollectionEquality()
                    .equals(other.participants, participants)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(broadcast) ^
      const DeepCollectionEquality().hash(viewers) ^
      const DeepCollectionEquality().hash(broadcastTimer) ^
      const DeepCollectionEquality().hash(isMicrophoneEnabled) ^
      const DeepCollectionEquality().hash(isCameraEnabled) ^
      const DeepCollectionEquality().hash(isExpanded) ^
      const DeepCollectionEquality().hash(cameraReady) ^
      const DeepCollectionEquality().hash(cameraDirection) ^
      const DeepCollectionEquality().hash(participants);

  @JsonKey(ignore: true)
  @override
  _$BroadcastStateCopyWith<_BroadcastState> get copyWith =>
      __$BroadcastStateCopyWithImpl<_BroadcastState>(this, _$identity);
}

abstract class _BroadcastState implements BroadcastState {
  factory _BroadcastState(
      {BlocAction? action,
      required BroadcastEntity broadcast,
      List<ViewerEntity> viewers,
      String broadcastTimer,
      bool isMicrophoneEnabled,
      bool isCameraEnabled,
      bool isExpanded,
      bool cameraReady,
      CameraLensDirection cameraDirection,
      List<RemoteParticipantEntity> participants}) = _$_BroadcastState;

  @override
  BlocAction? get action => throw _privateConstructorUsedError;
  @override
  BroadcastEntity get broadcast => throw _privateConstructorUsedError;
  @override
  List<ViewerEntity> get viewers => throw _privateConstructorUsedError;
  @override
  String get broadcastTimer => throw _privateConstructorUsedError;
  @override
  bool get isMicrophoneEnabled => throw _privateConstructorUsedError;
  @override
  bool get isCameraEnabled => throw _privateConstructorUsedError;
  @override
  bool get isExpanded => throw _privateConstructorUsedError;
  @override
  bool get cameraReady => throw _privateConstructorUsedError;
  @override
  CameraLensDirection get cameraDirection => throw _privateConstructorUsedError;
  @override
  List<RemoteParticipantEntity> get participants =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BroadcastStateCopyWith<_BroadcastState> get copyWith =>
      throw _privateConstructorUsedError;
}
