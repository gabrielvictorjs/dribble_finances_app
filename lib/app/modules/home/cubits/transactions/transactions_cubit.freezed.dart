// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transactions_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TransactionsStateTearOff {
  const _$TransactionsStateTearOff();

// ignore: unused_element
  TransactionsInitial initial() {
    return const TransactionsInitial();
  }

// ignore: unused_element
  TransactionsLoadInProgress loadInProgress() {
    return const TransactionsLoadInProgress();
  }

// ignore: unused_element
  TransactionsLoadSuccess loadSuccess(List<TransactionModel> transactions) {
    return TransactionsLoadSuccess(
      transactions,
    );
  }

// ignore: unused_element
  TransactionsLoadFailure loadFailure(ApiFailure failure) {
    return TransactionsLoadFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $TransactionsState = _$TransactionsStateTearOff();

mixin _$TransactionsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<TransactionModel> transactions),
    @required Result loadFailure(ApiFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<TransactionModel> transactions),
    Result loadFailure(ApiFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(TransactionsInitial value),
    @required Result loadInProgress(TransactionsLoadInProgress value),
    @required Result loadSuccess(TransactionsLoadSuccess value),
    @required Result loadFailure(TransactionsLoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(TransactionsInitial value),
    Result loadInProgress(TransactionsLoadInProgress value),
    Result loadSuccess(TransactionsLoadSuccess value),
    Result loadFailure(TransactionsLoadFailure value),
    @required Result orElse(),
  });
}

abstract class $TransactionsStateCopyWith<$Res> {
  factory $TransactionsStateCopyWith(
          TransactionsState value, $Res Function(TransactionsState) then) =
      _$TransactionsStateCopyWithImpl<$Res>;
}

class _$TransactionsStateCopyWithImpl<$Res>
    implements $TransactionsStateCopyWith<$Res> {
  _$TransactionsStateCopyWithImpl(this._value, this._then);

  final TransactionsState _value;
  // ignore: unused_field
  final $Res Function(TransactionsState) _then;
}

abstract class $TransactionsInitialCopyWith<$Res> {
  factory $TransactionsInitialCopyWith(
          TransactionsInitial value, $Res Function(TransactionsInitial) then) =
      _$TransactionsInitialCopyWithImpl<$Res>;
}

class _$TransactionsInitialCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res>
    implements $TransactionsInitialCopyWith<$Res> {
  _$TransactionsInitialCopyWithImpl(
      TransactionsInitial _value, $Res Function(TransactionsInitial) _then)
      : super(_value, (v) => _then(v as TransactionsInitial));

  @override
  TransactionsInitial get _value => super._value as TransactionsInitial;
}

class _$TransactionsInitial implements TransactionsInitial {
  const _$TransactionsInitial();

  @override
  String toString() {
    return 'TransactionsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TransactionsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<TransactionModel> transactions),
    @required Result loadFailure(ApiFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<TransactionModel> transactions),
    Result loadFailure(ApiFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(TransactionsInitial value),
    @required Result loadInProgress(TransactionsLoadInProgress value),
    @required Result loadSuccess(TransactionsLoadSuccess value),
    @required Result loadFailure(TransactionsLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(TransactionsInitial value),
    Result loadInProgress(TransactionsLoadInProgress value),
    Result loadSuccess(TransactionsLoadSuccess value),
    Result loadFailure(TransactionsLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TransactionsInitial implements TransactionsState {
  const factory TransactionsInitial() = _$TransactionsInitial;
}

abstract class $TransactionsLoadInProgressCopyWith<$Res> {
  factory $TransactionsLoadInProgressCopyWith(TransactionsLoadInProgress value,
          $Res Function(TransactionsLoadInProgress) then) =
      _$TransactionsLoadInProgressCopyWithImpl<$Res>;
}

class _$TransactionsLoadInProgressCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res>
    implements $TransactionsLoadInProgressCopyWith<$Res> {
  _$TransactionsLoadInProgressCopyWithImpl(TransactionsLoadInProgress _value,
      $Res Function(TransactionsLoadInProgress) _then)
      : super(_value, (v) => _then(v as TransactionsLoadInProgress));

  @override
  TransactionsLoadInProgress get _value =>
      super._value as TransactionsLoadInProgress;
}

class _$TransactionsLoadInProgress implements TransactionsLoadInProgress {
  const _$TransactionsLoadInProgress();

  @override
  String toString() {
    return 'TransactionsState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TransactionsLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<TransactionModel> transactions),
    @required Result loadFailure(ApiFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<TransactionModel> transactions),
    Result loadFailure(ApiFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(TransactionsInitial value),
    @required Result loadInProgress(TransactionsLoadInProgress value),
    @required Result loadSuccess(TransactionsLoadSuccess value),
    @required Result loadFailure(TransactionsLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(TransactionsInitial value),
    Result loadInProgress(TransactionsLoadInProgress value),
    Result loadSuccess(TransactionsLoadSuccess value),
    Result loadFailure(TransactionsLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class TransactionsLoadInProgress implements TransactionsState {
  const factory TransactionsLoadInProgress() = _$TransactionsLoadInProgress;
}

abstract class $TransactionsLoadSuccessCopyWith<$Res> {
  factory $TransactionsLoadSuccessCopyWith(TransactionsLoadSuccess value,
          $Res Function(TransactionsLoadSuccess) then) =
      _$TransactionsLoadSuccessCopyWithImpl<$Res>;
  $Res call({List<TransactionModel> transactions});
}

class _$TransactionsLoadSuccessCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res>
    implements $TransactionsLoadSuccessCopyWith<$Res> {
  _$TransactionsLoadSuccessCopyWithImpl(TransactionsLoadSuccess _value,
      $Res Function(TransactionsLoadSuccess) _then)
      : super(_value, (v) => _then(v as TransactionsLoadSuccess));

  @override
  TransactionsLoadSuccess get _value => super._value as TransactionsLoadSuccess;

  @override
  $Res call({
    Object transactions = freezed,
  }) {
    return _then(TransactionsLoadSuccess(
      transactions == freezed
          ? _value.transactions
          : transactions as List<TransactionModel>,
    ));
  }
}

class _$TransactionsLoadSuccess implements TransactionsLoadSuccess {
  const _$TransactionsLoadSuccess(this.transactions)
      : assert(transactions != null);

  @override
  final List<TransactionModel> transactions;

  @override
  String toString() {
    return 'TransactionsState.loadSuccess(transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransactionsLoadSuccess &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(transactions);

  @override
  $TransactionsLoadSuccessCopyWith<TransactionsLoadSuccess> get copyWith =>
      _$TransactionsLoadSuccessCopyWithImpl<TransactionsLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<TransactionModel> transactions),
    @required Result loadFailure(ApiFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(transactions);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<TransactionModel> transactions),
    Result loadFailure(ApiFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(transactions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(TransactionsInitial value),
    @required Result loadInProgress(TransactionsLoadInProgress value),
    @required Result loadSuccess(TransactionsLoadSuccess value),
    @required Result loadFailure(TransactionsLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(TransactionsInitial value),
    Result loadInProgress(TransactionsLoadInProgress value),
    Result loadSuccess(TransactionsLoadSuccess value),
    Result loadFailure(TransactionsLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class TransactionsLoadSuccess implements TransactionsState {
  const factory TransactionsLoadSuccess(List<TransactionModel> transactions) =
      _$TransactionsLoadSuccess;

  List<TransactionModel> get transactions;
  $TransactionsLoadSuccessCopyWith<TransactionsLoadSuccess> get copyWith;
}

abstract class $TransactionsLoadFailureCopyWith<$Res> {
  factory $TransactionsLoadFailureCopyWith(TransactionsLoadFailure value,
          $Res Function(TransactionsLoadFailure) then) =
      _$TransactionsLoadFailureCopyWithImpl<$Res>;
  $Res call({ApiFailure failure});

  $ApiFailureCopyWith<$Res> get failure;
}

class _$TransactionsLoadFailureCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res>
    implements $TransactionsLoadFailureCopyWith<$Res> {
  _$TransactionsLoadFailureCopyWithImpl(TransactionsLoadFailure _value,
      $Res Function(TransactionsLoadFailure) _then)
      : super(_value, (v) => _then(v as TransactionsLoadFailure));

  @override
  TransactionsLoadFailure get _value => super._value as TransactionsLoadFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(TransactionsLoadFailure(
      failure == freezed ? _value.failure : failure as ApiFailure,
    ));
  }

  @override
  $ApiFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $ApiFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$TransactionsLoadFailure implements TransactionsLoadFailure {
  const _$TransactionsLoadFailure(this.failure) : assert(failure != null);

  @override
  final ApiFailure failure;

  @override
  String toString() {
    return 'TransactionsState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransactionsLoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $TransactionsLoadFailureCopyWith<TransactionsLoadFailure> get copyWith =>
      _$TransactionsLoadFailureCopyWithImpl<TransactionsLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<TransactionModel> transactions),
    @required Result loadFailure(ApiFailure failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<TransactionModel> transactions),
    Result loadFailure(ApiFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(TransactionsInitial value),
    @required Result loadInProgress(TransactionsLoadInProgress value),
    @required Result loadSuccess(TransactionsLoadSuccess value),
    @required Result loadFailure(TransactionsLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(TransactionsInitial value),
    Result loadInProgress(TransactionsLoadInProgress value),
    Result loadSuccess(TransactionsLoadSuccess value),
    Result loadFailure(TransactionsLoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class TransactionsLoadFailure implements TransactionsState {
  const factory TransactionsLoadFailure(ApiFailure failure) =
      _$TransactionsLoadFailure;

  ApiFailure get failure;
  $TransactionsLoadFailureCopyWith<TransactionsLoadFailure> get copyWith;
}
