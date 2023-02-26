import 'package:flutter/material.dart';

import 'profile_screen.dart';

class Bilgilerim_Screen extends StatelessWidget {
  const Bilgilerim_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "İsim Soyisim",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                Text("boy - kilo - yaş"),
              ],
            ),
            SizedBox(height: 30),
            ProfileMenu(
              text: "Sorularım(0)",
              icon: "assets/icons/prof.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Üye Öncesi Sonrası",
              icon: "assets/icons/prof.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Par-Q Testi",
              icon: "assets/icons/prof.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Perhiz",
              icon: "assets/icons/prof.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Havale Bildirimlerim",
              icon: "assets/icons/prof.svg",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
