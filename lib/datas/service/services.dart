

import '../model/blog.dart';
import 'package:http/http.dart' as http;

import '../model/login_model.dart';

class ApiService {
  /// blog apiden aldıklarımız
  Future<List<BlogModel>?> getBlogData() async {
    try {
      var Url = Uri.parse(BlogApi.apiUrl);
      var response = await http.get(Url);
      if (response.statusCode == 200) {
        var json = response.body;
        print(json);
        return postFromJson(json);
      }
    } catch (e) {
      print(e.toString());
    }
  }


  /// login api kullancağımız kısım
  Future<LoginModel?> getLoginData(String mail, password) async {
    var url = "http://isacanapi.tuzlatest.com/Uye/Giris?mailAdresi=" +
        mail +
        "&sifre=" +
        password;
    var Url = Uri.parse(url);
    var response = await http.get(Url);
    if (response.statusCode == 200) {
      var json = response.body;
      print("bağlantı başarılı");
      print(json);
      return loginModelFromJson(json);
    }
    return null;
  }
}




