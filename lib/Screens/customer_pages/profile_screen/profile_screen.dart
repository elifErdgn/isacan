import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../custom_widgets/custom_bottom_nav_bar.dart';
import '../../../utils/constants.dart';
import '../../login_Register/login_screen.dart';
import 'benim_hesabim.dart';
import 'bildirimler.dart';
import 'bilgilerim_page.dart';
import 'blog_screen_cust.dart';
import 'comment_screen.dart';
import 'e-kitap_screen.dart';
import 'egitim_paketi.dart';
import 'my_body_size.dart';
import 'settings_page.dart';
import 'siparislerim_page.dart';
import 'yardim_page.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileBodyWidget(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}

class ProfileBodyWidget extends StatelessWidget {
  const ProfileBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(height: 20),
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "Hesabım",
            icon: "assets/icons/User Icon.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyAccountScreen(),
                ),
              );
            },
          ),
          ProfileMenu(
            text: "Ölçülerim",
            icon: "assets/icons/measure_3.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyBodySizePage(),
                ),
              );
            },
          ),
          ProfileMenu(
            text: "Siparişlerim",
            icon: "assets/icons/shop (6).svg",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OrderScreen()));
            },
          ),
          ProfileMenu(
            text: "Bloglar",
            icon: "assets/icons/bllog.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BlogsForCustomer(),
                ),
              );
            },
          ),
          ProfileMenu(
            text: "Aktif Eğitim Paketim",
            icon: "assets/icons/Book_2.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EducationPackgetScreen(),
                ),
              );
            },
          ),
          ProfileMenu(
            text: "E-Kitap",
            icon: "assets/icons/e-book.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => E_kitap_screen(),
                ),
              );
            },
          ),
          // profil sayfası tarzında bir ekranla kişisel bilgileri listeleyim
          ProfileMenu(
            text: "Bilgilerim",
            icon: "assets/icons/personal-information.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Bilgilerim_Screen(),
                ),
              );
            },
          ),
          ProfileMenu(
            text: "Benim Yorumlarım",
            icon: "assets/icons/comment_3.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Comment_Page(),
                ),
              );
            },
          ),
          ProfileMenu(
            text: "Bildirimler",
            icon: "assets/icons/Bell.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Bildirimler(),
                ),
              );
            },
          ),

          ProfileMenu(
            text: "Ayarlar",
            icon: "assets/icons/Settings.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Settings_page(),
                ),
              );
            },
          ),
          ProfileMenu(
            text: "Yardım",
            icon: "assets/icons/Question mark.svg",
            press: ()  {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Yardim_Page(),
                ),
              ) ;
            },
          ),
          ProfileMenu(
            text: "Çıkış Yap",
            icon: "assets/icons/Log out.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

/// Profil fotoğrafı widget
class ProfilePic extends StatelessWidget {
  const ProfilePic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 115,
          width: 115,
          child: Stack(
            fit: StackFit.expand,
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/adam.png"),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Text(
              "ASLI SEREZ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Üye Kodu: ",
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  "69659556",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

/// Menu widget - kategori
class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Colors.grey[200],
          // backgroundColor: Color(0xFFF5F6F9),
        ),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              color: kTextColor,
              width: 22,
            ),
            SizedBox(width: 20),
            Expanded(child: Text(text)),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
