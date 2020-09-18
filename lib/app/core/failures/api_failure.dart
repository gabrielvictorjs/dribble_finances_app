import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failure.freezed.dart';

@freezed
abstract class ApiFailure with _$ApiFailure {
  const factory ApiFailure.serverError([String message]) = ServerError;
  const factory ApiFailure.notFound() = NotFound;
}
