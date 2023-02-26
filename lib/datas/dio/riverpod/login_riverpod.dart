// import 'package:flutter/material.dart';
// import 'package:grock/grock.dart';
// import 'package:isa_can_akhan_01/datas/dio/services/dio_service.dart';
//
// import '../home.dart';
// import '../loading_popuop.dart';
//
// class LoginRiverpod extends ChangeNotifier {
//   Service service = Service();
//   TextEditingController email = TextEditingController();
//   TextEditingController password = TextEditingController();
//  // bool isLoading = false;
//
//
//   /// giriiş yap butonuna basıldığında çalışacak metot
//   void loginfetch() {
//     loadingPopup();
//     service
//         .loginCall(email: email.text, password: password.text)
//         .then((value) {
//         if(value != null && value.tokenType! == "bearer"){
//           Grock.back();
//           print("giriş başarılı");
//           Grock.toRemove(const Home_Blog());
//         } else {
//           Grock.back();
//           print("Bİr sorun oluştu");
//           Grock.snackBar(title: "Hata", description: "Bir sorun oluştu");
//         }
//     });
//   }
// }
