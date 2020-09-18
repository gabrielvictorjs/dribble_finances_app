import 'package:dartz/dartz.dart';

import '../../../core/api/api_client.dart';
import '../../../core/failures/api_failure.dart';
import '../../../shared/models/transaction_model.dart';

class TransactionRepository {
  final ApiClient _apiClient;

  TransactionRepository(this._apiClient);

  Future<Either<ApiFailure, List<TransactionModel>>> fetchAll() async {
    try {
      final response = await _apiClient.get('transactions');
      final transactions = (response as List)
          .map((item) => TransactionModel.fromJson(item))
          .toList();

      return right(transactions);
    } catch (_) {
      return left(ApiFailure.notFound());
    }
  }
}
