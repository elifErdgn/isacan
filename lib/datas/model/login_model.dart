import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    required this.statusCode,
    required this.message,
  });

  String statusCode;
  String message;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        statusCode: json["StatusCode"] == null ? null : json["StatusCode"],
        message: json["Message"] == null ? null : json["Message"],
      );

  Map<String, dynamic> toJson() => {
        "StatusCode": statusCode == null ? null : statusCode,
        "Message": message == null ? null : message,
      };
}
