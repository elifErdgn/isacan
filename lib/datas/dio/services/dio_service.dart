// import 'package:dio/dio.dart';
//
// import '../models/dio_login_model.dart';
//
// class Service {
//   final String baseUrl = "http://isacanapi.tuzlatest.com/";
//   final dio = Dio();
//
//   Future<LoginModel?> loginCall(
//       {required String email, required String password}) async {
//     Map<String, dynamic> json = {
//       "username": email,
//       "password": password,
//     };
//
//     var response = await dio.post(
//       baseUrl + "uyegirisi",
//       data: json,
//       options: Options(
//         headers: {
//           "Authorization": "auth-token",
//           "Accept": "application/json",
//           "Content-Type":"application/x-www-form-urlencoded"
//         },
//       ),
//     );
//     if (response.statusCode == 200) {
//       var result = LoginModel.fromJson(response.data);
//       print("Bağlantı başarılı");
//       return result;
//     } else {
//       print("Api de bir hata var");
//       throw ("Bir sorun oluştu ${response.statusCode}");
//     }
//   }
// }
