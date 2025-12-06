class ErrorResponseModel {
  final String? status;
  final int? statusCode;
  final String? message;

  ErrorResponseModel({
    this.status,
    this.statusCode,
    this.message,
  });

  factory ErrorResponseModel.fromJson(Map<String, dynamic> json) => ErrorResponseModel(
        status: json["status"],
        statusCode: json["statusCode"],
        message: json["message"],
      );
}
