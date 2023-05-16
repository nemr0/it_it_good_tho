import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  const ErrorMessageModel(
      {required this.statusCode, required this.statusMessage});

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) =>
      ErrorMessageModel(
          statusCode: json['status_code'],
          statusMessage: json['status_message']);
  final int statusCode;
  final int statusMessage;

  @override
  List<Object?> get props => <Object?>[statusCode, statusMessage];
}
