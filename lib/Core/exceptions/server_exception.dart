import 'package:is_it_good_tho/Core/model/error_message_model.dart';

/// Server Exceptions
class ServerException implements Exception {
  const ServerException(this.errorMessage);
  final ErrorMessageModel errorMessage;
}
