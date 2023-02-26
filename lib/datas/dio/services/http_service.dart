// import 'package:http/http.dart' as http;
// import '../models/dio_login_model.dart';
//
//
// class HttpService {
//   var baseUrl = Uri.parse("http://isacanapi.tuzlatest.com/");
//
//   Future<Login?> loginCallApi(
//       {required String email, required String password}) async {
//     Map<String, dynamic> jsonBody = {
//       "username": email,
//       "password": password,
//     };
//
//     var response = await http.post(baseUrl,body: jsonBody, );
//     if(response.statusCode == 200) {
//       var json = response.body;
//       return loginToJson(json);
//     }
//
//   }
// }
