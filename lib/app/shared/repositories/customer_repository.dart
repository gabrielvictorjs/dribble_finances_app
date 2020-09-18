import 'package:dartz/dartz.dart';

import '../../core/api/api_client.dart';
import '../../core/failures/auth_failure.dart';
import '../models/customer_model.dart';

class CustomerRepository {
  final ApiClient _apiClient;

  CustomerRepository(this._apiClient);

  Future<Either<AuthFailure, CustomerModel>> fetch() async {
    try {
      final response = await _apiClient.get('customer');
      return right(CustomerModel.fromJson(response));
    } catch (_) {
      return left(AuthFailure.userNotFound());
    }
  }
}
