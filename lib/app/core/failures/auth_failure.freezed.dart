// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  UserUndefinedError undefinedError([String message]) {
    return UserUndefinedError(
      message,
    );
  }

// ignore: unused_element
  UserNotFound userNotFound() {
    return const UserNotFound();
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result undefinedError(String message),
    @required Result userNotFound(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result undefinedError(String message),
    Result userNotFound(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result undefinedError(UserUndefinedError value),
    @required Result userNotFound(UserNotFound value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result undefinedError(UserUndefinedError value),
    Result userNotFound(UserNotFound value),
    @required Result orElse(),
  });
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

abstract class $UserUndefinedErrorCopyWith<$Res> {
  factory $UserUndefinedErrorCopyWith(
          UserUndefinedError value, $Res Function(UserUndefinedError) then) =
      _$UserUndefinedErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$UserUndefinedErrorCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $UserUndefinedErrorCopyWith<$Res> {
  _$UserUndefinedErrorCopyWithImpl(
      UserUndefinedError _value, $Res Function(UserUndefinedError) _then)
      : super(_value, (v) => _then(v as UserUndefinedError));

  @override
  UserUndefinedError get _value => super._value as UserUndefinedError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(UserUndefinedError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$UserUndefinedError implements UserUndefinedError {
  const _$UserUndefinedError([this.message]);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthFailure.undefinedError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserUndefinedError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $UserUndefinedErrorCopyWith<UserUndefinedError> get copyWith =>
      _$UserUndefinedErrorCopyWithImpl<UserUndefinedError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result undefinedError(String message),
    @required Result userNotFound(),
  }) {
    assert(undefinedError != null);
    assert(userNotFound != null);
    return undefinedError(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result undefinedError(String message),
    Result userNotFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (undefinedError != null) {
      return undefinedError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result undefinedError(UserUndefinedError value),
    @required Result userNotFound(UserNotFound value),
  }) {
    assert(undefinedError != null);
    assert(userNotFound != null);
    return undefinedError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result undefinedError(UserUndefinedError value),
    Result userNotFound(UserNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (undefinedError != null) {
      return undefinedError(this);
    }
    return orElse();
  }
}

abstract class UserUndefinedError implements AuthFailure {
  const factory UserUndefinedError([String message]) = _$UserUndefinedError;

  String get message;
  $UserUndefinedErrorCopyWith<UserUndefinedError> get copyWith;
}

abstract class $UserNotFoundCopyWith<$Res> {
  factory $UserNotFoundCopyWith(
          UserNotFound value, $Res Function(UserNotFound) then) =
      _$UserNotFoundCopyWithImpl<$Res>;
}

class _$UserNotFoundCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $UserNotFoundCopyWith<$Res> {
  _$UserNotFoundCopyWithImpl(
      UserNotFound _value, $Res Function(UserNotFound) _then)
      : super(_value, (v) => _then(v as UserNotFound));

  @override
  UserNotFound get _value => super._value as UserNotFound;
}

class _$UserNotFound implements UserNotFound {
  const _$UserNotFound();

  @override
  String toString() {
    return 'AuthFailure.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result undefinedError(String message),
    @required Result userNotFound(),
  }) {
    assert(undefinedError != null);
    assert(userNotFound != null);
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result undefinedError(String message),
    Result userNotFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result undefinedError(UserUndefinedError value),
    @required Result userNotFound(UserNotFound value),
  }) {
    assert(undefinedError != null);
    assert(userNotFound != null);
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result undefinedError(UserUndefinedError value),
    Result userNotFound(UserNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class UserNotFound implements AuthFailure {
  const factory UserNotFound() = _$UserNotFound;
}
