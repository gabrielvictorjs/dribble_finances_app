import 'package:bloc/bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/failures/api_failure.dart';
import '../../../../shared/models/transaction_model.dart';
import '../../repositories/transaction_repository.dart';

part 'transactions_cubit.freezed.dart';
part 'transactions_state.dart';

class TransactionsCubit extends Cubit<TransactionsState> implements Disposable {
  final TransactionRepository _repository;
  TransactionsCubit(this._repository) : super(TransactionsState.initial());

  Future<void> performBackgroundLoading() async {
    final result = await _repository.fetchAll();
    result.fold(
      (failure) => emit(TransactionsState.loadFailure(failure)),
      (transactions) => emit(TransactionsState.loadSuccess(transactions)),
    );
  }

  void performLoading() async {
    emit(TransactionsState.loadInProgress());
    performBackgroundLoading();
  }

  @override
  void dispose() => close();
}
