import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:isa_can_akhan_01/Screens/customer_pages/shop_screen/daha_fazlasini_goster_ekranlari/daha_fazla_e_kitap.dart';
import 'package:isa_can_akhan_01/Screens/customer_pages/shop_screen/daha_fazlasini_goster_ekranlari/daha_fazla_hizmetler.dart';
import 'package:isa_can_akhan_01/Screens/customer_pages/shop_screen/daha_fazlasini_goster_ekranlari/daha_fazla_paketler.dart';
import 'package:isa_can_akhan_01/Screens/customer_pages/shop_screen/daha_fazlasini_goster_ekranlari/daha_fazla_urun_detail_01.dart';
import 'package:isa_can_akhan_01/Screens/login_Register/login_screen.dart';

import '../../../utils/size_config.dart';
import '../../customer_pages/shop_screen/shop_custom_widgets/shoppage_custom_widgets.dart';
import '../ana_sayfa/ana_baslangic_page.dart';

class AlisverisKartPage extends StatelessWidget {
  const AlisverisKartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: SizeConfig.screenHeight * .45,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/meditation_bg.png")),
                color: Color(0xFFF5CEB8),
              ),
            ),
            SafeArea(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          alignment: Alignment.center,
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            color: Color(0xFFF2BEA1),
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/profile (2).svg",
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Alışverişe Başlamak İçin Giriş Yap !",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        //fontFamily: "Muli"
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  AppBarWidgetShop(),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Daha_fazla_paketler(),
                              ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: SizedBox(
                              width: 170,
                              height: 170,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/adam.png",
                                          ),
                                        )),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 5),
                                      child: Text(
                                        "  PAKETLERİ  \nGÖRÜNTÜLE",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),

                      /// urunler
                      GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: SizedBox(
                              width: 170,
                              height: 170,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/urun1.jpg",
                                          ),
                                        )),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 5),
                                      child: Text(
                                        "  ÜRÜNLERİ  \nGÖRÜNTÜLE",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Daha_fazla_e_book(),
                              ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: SizedBox(
                              width: 170,
                              height: 170,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/urun9.jpg",
                                          ),
                                        )),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 5),
                                      child: Text(
                                        "E-KİTAPLARI \nGÖRÜNTÜLE",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                      GestureDetector(
                        // hizmet
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Daha_fazla_hizmetlerimiz(),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: SizedBox(
                              width: 170,
                              height: 170,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            "assets/images/sevice1.jpg",
                                          ),
                                        )),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 5),
                                      child: Text(
                                        "HİZMETLERİ  \nGÖRÜNTÜLE",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class AppBarWidgetShop extends StatelessWidget {
  const AppBarWidgetShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
              svgSrc: "assets/icons/home (1).svg",
              numOfitem: 0,
              press: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Ana_Baslangic_Ekrani(),
                  ))),
          IconBtnWithCounter(
            svgSrc: "assets/icons/shop (6).svg",
            numOfitem: 3,
            press: (){},
          ),
        ],
      ),
    );
  }
}
