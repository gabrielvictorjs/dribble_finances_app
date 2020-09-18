// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'api_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ApiFailureTearOff {
  const _$ApiFailureTearOff();

// ignore: unused_element
  ServerError serverError([String message]) {
    return ServerError(
      message,
    );
  }

// ignore: unused_element
  NotFound notFound() {
    return const NotFound();
  }
}

// ignore: unused_element
const $ApiFailure = _$ApiFailureTearOff();

mixin _$ApiFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(String message),
    @required Result notFound(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(String message),
    Result notFound(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result notFound(NotFound value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result notFound(NotFound value),
    @required Result orElse(),
  });
}

abstract class $ApiFailureCopyWith<$Res> {
  factory $ApiFailureCopyWith(
          ApiFailure value, $Res Function(ApiFailure) then) =
      _$ApiFailureCopyWithImpl<$Res>;
}

class _$ApiFailureCopyWithImpl<$Res> implements $ApiFailureCopyWith<$Res> {
  _$ApiFailureCopyWithImpl(this._value, this._then);

  final ApiFailure _value;
  // ignore: unused_field
  final $Res Function(ApiFailure) _then;
}

abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$ServerErrorCopyWithImpl<$Res> extends _$ApiFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ServerError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$ServerError implements ServerError {
  const _$ServerError([this.message]);

  @override
  final String message;

  @override
  String toString() {
    return 'ApiFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServerError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $ServerErrorCopyWith<ServerError> get copyWith =>
      _$ServerErrorCopyWithImpl<ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(String message),
    @required Result notFound(),
  }) {
    assert(serverError != null);
    assert(notFound != null);
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(String message),
    Result notFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result notFound(NotFound value),
  }) {
    assert(serverError != null);
    assert(notFound != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result notFound(NotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements ApiFailure {
  const factory ServerError([String message]) = _$ServerError;

  String get message;
  $ServerErrorCopyWith<ServerError> get copyWith;
}

abstract class $NotFoundCopyWith<$Res> {
  factory $NotFoundCopyWith(NotFound value, $Res Function(NotFound) then) =
      _$NotFoundCopyWithImpl<$Res>;
}

class _$NotFoundCopyWithImpl<$Res> extends _$ApiFailureCopyWithImpl<$Res>
    implements $NotFoundCopyWith<$Res> {
  _$NotFoundCopyWithImpl(NotFound _value, $Res Function(NotFound) _then)
      : super(_value, (v) => _then(v as NotFound));

  @override
  NotFound get _value => super._value as NotFound;
}

class _$NotFound implements NotFound {
  const _$NotFound();

  @override
  String toString() {
    return 'ApiFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(String message),
    @required Result notFound(),
  }) {
    assert(serverError != null);
    assert(notFound != null);
    return notFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(String message),
    Result notFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result notFound(NotFound value),
  }) {
    assert(serverError != null);
    assert(notFound != null);
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result notFound(NotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound implements ApiFailure {
  const factory NotFound() = _$NotFound;
}
