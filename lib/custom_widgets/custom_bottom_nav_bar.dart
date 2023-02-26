import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Screens/customer_pages/egzersiz_yonlendirme_ekrani/egzersiz_yonlendirme_ekrani.dart';
import '../Screens/customer_pages/profile_screen/profile_screen.dart';
import '../Screens/customer_pages/shop_screen/shop_home_screen.dart';
import '../utils/constants.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -1),
            blurRadius: 10,
            color: Colors.black87.withOpacity(0.3),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShopHomeScreen(),
                    ));
              },
              icon: SvgPicture.asset(
                "assets/icons/shop (6).svg",
                color: MenuState.shop == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EgzersizYonlendirmeEkrani(),
                    ));
              },
              icon: SvgPicture.asset(
                "assets/icons/video icon.svg",
                color: MenuState.video == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(),
                    ));
              },
              icon: SvgPicture.asset(
                "assets/icons/User Icon.svg",
                color: MenuState.profile == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum MenuState { home, video, food, profile, statics, startUp, shop }

/// bottom nav bar da mevcut sayfanın neresi olduğunu açıklamak için kullanıyoruz
