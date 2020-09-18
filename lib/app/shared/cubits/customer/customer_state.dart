part of 'customer_cubit.dart';

@freezed
abstract class CustomerState with _$CustomerState {
  const factory CustomerState.unauthenticated() = CustomerUnauthenticated;
  const factory CustomerState.authenticationInProgress() =
      CustomerAuthenticationInProgress;
  const factory CustomerState.authenticated(CustomerModel customer) =
      CustomerAuthenticated;
  const factory CustomerState.authenticationFailure(AuthFailure failure) =
      CustomerAuthenticationFailure;
}
