part of 'transactions_cubit.dart';

@freezed
abstract class TransactionsState with _$TransactionsState {
  const factory TransactionsState.initial() = TransactionsInitial;
  const factory TransactionsState.loadInProgress() = TransactionsLoadInProgress;
  const factory TransactionsState.loadSuccess(
      List<TransactionModel> transactions) = TransactionsLoadSuccess;
  const factory TransactionsState.loadFailure(ApiFailure failure) =
      TransactionsLoadFailure;
}
