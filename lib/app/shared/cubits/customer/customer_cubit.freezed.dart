// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'customer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CustomerStateTearOff {
  const _$CustomerStateTearOff();

// ignore: unused_element
  CustomerUnauthenticated unauthenticated() {
    return const CustomerUnauthenticated();
  }

// ignore: unused_element
  CustomerAuthenticationInProgress authenticationInProgress() {
    return const CustomerAuthenticationInProgress();
  }

// ignore: unused_element
  CustomerAuthenticated authenticated(CustomerModel customer) {
    return CustomerAuthenticated(
      customer,
    );
  }

// ignore: unused_element
  CustomerAuthenticationFailure authenticationFailure(AuthFailure failure) {
    return CustomerAuthenticationFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $CustomerState = _$CustomerStateTearOff();

mixin _$CustomerState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthenticated(),
    @required Result authenticationInProgress(),
    @required Result authenticated(CustomerModel customer),
    @required Result authenticationFailure(AuthFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthenticated(),
    Result authenticationInProgress(),
    Result authenticated(CustomerModel customer),
    Result authenticationFailure(AuthFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthenticated(CustomerUnauthenticated value),
    @required
        Result authenticationInProgress(CustomerAuthenticationInProgress value),
    @required Result authenticated(CustomerAuthenticated value),
    @required Result authenticationFailure(CustomerAuthenticationFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthenticated(CustomerUnauthenticated value),
    Result authenticationInProgress(CustomerAuthenticationInProgress value),
    Result authenticated(CustomerAuthenticated value),
    Result authenticationFailure(CustomerAuthenticationFailure value),
    @required Result orElse(),
  });
}

abstract class $CustomerStateCopyWith<$Res> {
  factory $CustomerStateCopyWith(
          CustomerState value, $Res Function(CustomerState) then) =
      _$CustomerStateCopyWithImpl<$Res>;
}

class _$CustomerStateCopyWithImpl<$Res>
    implements $CustomerStateCopyWith<$Res> {
  _$CustomerStateCopyWithImpl(this._value, this._then);

  final CustomerState _value;
  // ignore: unused_field
  final $Res Function(CustomerState) _then;
}

abstract class $CustomerUnauthenticatedCopyWith<$Res> {
  factory $CustomerUnauthenticatedCopyWith(CustomerUnauthenticated value,
          $Res Function(CustomerUnauthenticated) then) =
      _$CustomerUnauthenticatedCopyWithImpl<$Res>;
}

class _$CustomerUnauthenticatedCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res>
    implements $CustomerUnauthenticatedCopyWith<$Res> {
  _$CustomerUnauthenticatedCopyWithImpl(CustomerUnauthenticated _value,
      $Res Function(CustomerUnauthenticated) _then)
      : super(_value, (v) => _then(v as CustomerUnauthenticated));

  @override
  CustomerUnauthenticated get _value => super._value as CustomerUnauthenticated;
}

class _$CustomerUnauthenticated implements CustomerUnauthenticated {
  const _$CustomerUnauthenticated();

  @override
  String toString() {
    return 'CustomerState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CustomerUnauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthenticated(),
    @required Result authenticationInProgress(),
    @required Result authenticated(CustomerModel customer),
    @required Result authenticationFailure(AuthFailure failure),
  }) {
    assert(unauthenticated != null);
    assert(authenticationInProgress != null);
    assert(authenticated != null);
    assert(authenticationFailure != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthenticated(),
    Result authenticationInProgress(),
    Result authenticated(CustomerModel customer),
    Result authenticationFailure(AuthFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthenticated(CustomerUnauthenticated value),
    @required
        Result authenticationInProgress(CustomerAuthenticationInProgress value),
    @required Result authenticated(CustomerAuthenticated value),
    @required Result authenticationFailure(CustomerAuthenticationFailure value),
  }) {
    assert(unauthenticated != null);
    assert(authenticationInProgress != null);
    assert(authenticated != null);
    assert(authenticationFailure != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthenticated(CustomerUnauthenticated value),
    Result authenticationInProgress(CustomerAuthenticationInProgress value),
    Result authenticated(CustomerAuthenticated value),
    Result authenticationFailure(CustomerAuthenticationFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class CustomerUnauthenticated implements CustomerState {
  const factory CustomerUnauthenticated() = _$CustomerUnauthenticated;
}

abstract class $CustomerAuthenticationInProgressCopyWith<$Res> {
  factory $CustomerAuthenticationInProgressCopyWith(
          CustomerAuthenticationInProgress value,
          $Res Function(CustomerAuthenticationInProgress) then) =
      _$CustomerAuthenticationInProgressCopyWithImpl<$Res>;
}

class _$CustomerAuthenticationInProgressCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res>
    implements $CustomerAuthenticationInProgressCopyWith<$Res> {
  _$CustomerAuthenticationInProgressCopyWithImpl(
      CustomerAuthenticationInProgress _value,
      $Res Function(CustomerAuthenticationInProgress) _then)
      : super(_value, (v) => _then(v as CustomerAuthenticationInProgress));

  @override
  CustomerAuthenticationInProgress get _value =>
      super._value as CustomerAuthenticationInProgress;
}

class _$CustomerAuthenticationInProgress
    implements CustomerAuthenticationInProgress {
  const _$CustomerAuthenticationInProgress();

  @override
  String toString() {
    return 'CustomerState.authenticationInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CustomerAuthenticationInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthenticated(),
    @required Result authenticationInProgress(),
    @required Result authenticated(CustomerModel customer),
    @required Result authenticationFailure(AuthFailure failure),
  }) {
    assert(unauthenticated != null);
    assert(authenticationInProgress != null);
    assert(authenticated != null);
    assert(authenticationFailure != null);
    return authenticationInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthenticated(),
    Result authenticationInProgress(),
    Result authenticated(CustomerModel customer),
    Result authenticationFailure(AuthFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticationInProgress != null) {
      return authenticationInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthenticated(CustomerUnauthenticated value),
    @required
        Result authenticationInProgress(CustomerAuthenticationInProgress value),
    @required Result authenticated(CustomerAuthenticated value),
    @required Result authenticationFailure(CustomerAuthenticationFailure value),
  }) {
    assert(unauthenticated != null);
    assert(authenticationInProgress != null);
    assert(authenticated != null);
    assert(authenticationFailure != null);
    return authenticationInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthenticated(CustomerUnauthenticated value),
    Result authenticationInProgress(CustomerAuthenticationInProgress value),
    Result authenticated(CustomerAuthenticated value),
    Result authenticationFailure(CustomerAuthenticationFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticationInProgress != null) {
      return authenticationInProgress(this);
    }
    return orElse();
  }
}

abstract class CustomerAuthenticationInProgress implements CustomerState {
  const factory CustomerAuthenticationInProgress() =
      _$CustomerAuthenticationInProgress;
}

abstract class $CustomerAuthenticatedCopyWith<$Res> {
  factory $CustomerAuthenticatedCopyWith(CustomerAuthenticated value,
          $Res Function(CustomerAuthenticated) then) =
      _$CustomerAuthenticatedCopyWithImpl<$Res>;
  $Res call({CustomerModel customer});
}

class _$CustomerAuthenticatedCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res>
    implements $CustomerAuthenticatedCopyWith<$Res> {
  _$CustomerAuthenticatedCopyWithImpl(
      CustomerAuthenticated _value, $Res Function(CustomerAuthenticated) _then)
      : super(_value, (v) => _then(v as CustomerAuthenticated));

  @override
  CustomerAuthenticated get _value => super._value as CustomerAuthenticated;

  @override
  $Res call({
    Object customer = freezed,
  }) {
    return _then(CustomerAuthenticated(
      customer == freezed ? _value.customer : customer as CustomerModel,
    ));
  }
}

class _$CustomerAuthenticated implements CustomerAuthenticated {
  const _$CustomerAuthenticated(this.customer) : assert(customer != null);

  @override
  final CustomerModel customer;

  @override
  String toString() {
    return 'CustomerState.authenticated(customer: $customer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CustomerAuthenticated &&
            (identical(other.customer, customer) ||
                const DeepCollectionEquality()
                    .equals(other.customer, customer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(customer);

  @override
  $CustomerAuthenticatedCopyWith<CustomerAuthenticated> get copyWith =>
      _$CustomerAuthenticatedCopyWithImpl<CustomerAuthenticated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthenticated(),
    @required Result authenticationInProgress(),
    @required Result authenticated(CustomerModel customer),
    @required Result authenticationFailure(AuthFailure failure),
  }) {
    assert(unauthenticated != null);
    assert(authenticationInProgress != null);
    assert(authenticated != null);
    assert(authenticationFailure != null);
    return authenticated(customer);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthenticated(),
    Result authenticationInProgress(),
    Result authenticated(CustomerModel customer),
    Result authenticationFailure(AuthFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(customer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthenticated(CustomerUnauthenticated value),
    @required
        Result authenticationInProgress(CustomerAuthenticationInProgress value),
    @required Result authenticated(CustomerAuthenticated value),
    @required Result authenticationFailure(CustomerAuthenticationFailure value),
  }) {
    assert(unauthenticated != null);
    assert(authenticationInProgress != null);
    assert(authenticated != null);
    assert(authenticationFailure != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthenticated(CustomerUnauthenticated value),
    Result authenticationInProgress(CustomerAuthenticationInProgress value),
    Result authenticated(CustomerAuthenticated value),
    Result authenticationFailure(CustomerAuthenticationFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class CustomerAuthenticated implements CustomerState {
  const factory CustomerAuthenticated(CustomerModel customer) =
      _$CustomerAuthenticated;

  CustomerModel get customer;
  $CustomerAuthenticatedCopyWith<CustomerAuthenticated> get copyWith;
}

abstract class $CustomerAuthenticationFailureCopyWith<$Res> {
  factory $CustomerAuthenticationFailureCopyWith(
          CustomerAuthenticationFailure value,
          $Res Function(CustomerAuthenticationFailure) then) =
      _$CustomerAuthenticationFailureCopyWithImpl<$Res>;
  $Res call({AuthFailure failure});

  $AuthFailureCopyWith<$Res> get failure;
}

class _$CustomerAuthenticationFailureCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res>
    implements $CustomerAuthenticationFailureCopyWith<$Res> {
  _$CustomerAuthenticationFailureCopyWithImpl(
      CustomerAuthenticationFailure _value,
      $Res Function(CustomerAuthenticationFailure) _then)
      : super(_value, (v) => _then(v as CustomerAuthenticationFailure));

  @override
  CustomerAuthenticationFailure get _value =>
      super._value as CustomerAuthenticationFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(CustomerAuthenticationFailure(
      failure == freezed ? _value.failure : failure as AuthFailure,
    ));
  }

  @override
  $AuthFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $AuthFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$CustomerAuthenticationFailure implements CustomerAuthenticationFailure {
  const _$CustomerAuthenticationFailure(this.failure) : assert(failure != null);

  @override
  final AuthFailure failure;

  @override
  String toString() {
    return 'CustomerState.authenticationFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CustomerAuthenticationFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $CustomerAuthenticationFailureCopyWith<CustomerAuthenticationFailure>
      get copyWith => _$CustomerAuthenticationFailureCopyWithImpl<
          CustomerAuthenticationFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthenticated(),
    @required Result authenticationInProgress(),
    @required Result authenticated(CustomerModel customer),
    @required Result authenticationFailure(AuthFailure failure),
  }) {
    assert(unauthenticated != null);
    assert(authenticationInProgress != null);
    assert(authenticated != null);
    assert(authenticationFailure != null);
    return authenticationFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthenticated(),
    Result authenticationInProgress(),
    Result authenticated(CustomerModel customer),
    Result authenticationFailure(AuthFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticationFailure != null) {
      return authenticationFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthenticated(CustomerUnauthenticated value),
    @required
        Result authenticationInProgress(CustomerAuthenticationInProgress value),
    @required Result authenticated(CustomerAuthenticated value),
    @required Result authenticationFailure(CustomerAuthenticationFailure value),
  }) {
    assert(unauthenticated != null);
    assert(authenticationInProgress != null);
    assert(authenticated != null);
    assert(authenticationFailure != null);
    return authenticationFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthenticated(CustomerUnauthenticated value),
    Result authenticationInProgress(CustomerAuthenticationInProgress value),
    Result authenticated(CustomerAuthenticated value),
    Result authenticationFailure(CustomerAuthenticationFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticationFailure != null) {
      return authenticationFailure(this);
    }
    return orElse();
  }
}

abstract class CustomerAuthenticationFailure implements CustomerState {
  const factory CustomerAuthenticationFailure(AuthFailure failure) =
      _$CustomerAuthenticationFailure;

  AuthFailure get failure;
  $CustomerAuthenticationFailureCopyWith<CustomerAuthenticationFailure>
      get copyWith;
}
