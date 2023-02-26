// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:grock/grock.dart';
// import 'package:isa_can_akhan_01/datas/dio/riverpod/riverpod_managment.dart';
//
// class Login extends ConsumerStatefulWidget {
//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _LoginState();
// }
//
// class _LoginState extends ConsumerState<Login> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: ref.read(loginRiverpod).email,
//               decoration: InputDecoration(
//                 hintText: "E-mail",
//                 icon: Icon(Icons.mail),
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             TextField(
//               controller: ref.read(loginRiverpod).password,
//               decoration: InputDecoration(
//                 hintText: "şifre",
//                 icon: Icon(Icons.remove_red_eye_outlined),
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(
//               width: Grock.width,
//               child: ElevatedButton(
//                 onPressed: () {
//                   ref.read(loginRiverpod).loginfetch();
//                 print("butona tıklandı");
//                   },
//                 child: Text("Giriş Yap"),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
