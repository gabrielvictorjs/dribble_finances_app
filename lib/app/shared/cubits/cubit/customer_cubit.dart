import 'package:bloc/bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/failures/auth_failure.dart';
import '../../models/customer_model.dart';
import '../../repositories/customer_repository.dart';

part 'customer_cubit.freezed.dart';
part 'customer_state.dart';

class CustomerCubit extends Cubit<CustomerState> implements Disposable {
  final CustomerRepository _repository;

  CustomerCubit(this._repository) : super(CustomerState.unauthenticated());

  void performAuthentication() async {
    emit(CustomerState.authenticationInProgress());
    final result = await _repository.fetch();
    result.fold(
      (failure) => emit(CustomerState.authenticationFailure(failure)),
      (customer) => emit(CustomerState.authenticated(customer)),
    );
  }

  @override
  void dispose() => close();
}
