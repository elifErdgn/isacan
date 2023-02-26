import 'package:flutter/material.dart';
import 'package:isa_can_akhan_01/Screens/customer_pages/shop_screen/daha_fazlasini_goster_ekranlari/daha_fazla_hizmetler.dart';
import 'package:isa_can_akhan_01/Screens/customer_pages/shop_screen/detail_screens/e_kitap_detail.dart';
import 'package:isa_can_akhan_01/Screens/customer_pages/shop_screen/detail_screens/paket_detay.dart';

import '../../../custom_widgets/custom_bottom_nav_bar.dart';
import '../../../utils/size_config.dart';
import 'daha_fazlasini_goster_ekranlari/daha_fazla_e_kitap.dart';
import 'daha_fazlasini_goster_ekranlari/daha_fazla_paketler.dart';
import 'detail_screens/hizmet_detail.dart';
import 'shop_custom_widgets/book_shop_card.dart';
import 'shop_custom_widgets/hizmetler_card_shop.dart';
import 'shop_custom_widgets/shoppage_custom_widgets.dart';
import 'shop_custom_widgets/urun_card_categ_tabs.dart';
import 'shop_custom_widgets/uygulama_paket_card.dart';

class ShopHomeScreen extends StatelessWidget {
  const ShopHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ShopScreenBody(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.shop,
      ),
    );
  }
}

class ShopScreenBody extends StatefulWidget {
  const ShopScreenBody({Key? key}) : super(key: key);

  @override
  State<ShopScreenBody> createState() => _ShopScreenBodyState();
}

class _ShopScreenBodyState extends State<ShopScreenBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            HomeHeader(),

            ///App bar
            SizedBox(height: 10),

            /// Paketler kartları ve yönlendirme
            Column(
              children: [
                SectionTitle(
                  title: "Eğitim Paketlerimiz",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Daha_fazla_paketler()));
                  },
                ),
                SizedBox(height: getProportionateScreenWidth(20)),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                        demoProducts.length,
                        (index) => ProductCard(
                          press: () {
                            Navigator.pushNamed(context, PaketDetail.routeName,
                                arguments: ProductDetailsArguments(
                                  product: demoProducts[index],
                                ));
                          },
                          product: demoProducts[index],
                        ),
                      ),
                      SizedBox(width: getProportionateScreenWidth(20)),
                    ],
                  ),
                ),
              ],
            ),

            /// Ürünler Kartları ve yönlendirme
            CateTabs(), SizedBox(height: 10),

            /// E- kitap başlık
            SectionTitle(
              title: "E-KİTAPLAR",
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Daha_fazla_e_book()));
              },
            ),

            /// E-KİTAP Kart widget listesi
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    demoBooks.length,
                    (index) => BookCard(
                      books: demoBooks[index],
                      press: () {
                        Navigator.pushNamed(context, e_Kitap_Detail.routeName,
                            arguments:
                                BookDetailsArguments(books: demoBooks[index]));
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            /// hizmetler başlık
            SectionTitle(
              title: "HİZMETLERİMİZ",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Daha_fazla_hizmetlerimiz()));
              },
            ),

            /// hizmetler kart listesi
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    demoServices.length,
                    (index) => OurServiceCard(
                      press: () {
                        Navigator.pushNamed(
                            context, ServiceDetail.routeName,
                            arguments: ServiceDetailsArguments(
                                services: demoServices[index]));
                      },
                      ourServices: demoServices[index],

                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

/// Kendi tasarım APPBAR ımız
class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/shop (5).svg",
            color: Colors.grey,
            numOfitem: 0,
            press: () {},
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            color: Colors.grey,
            numOfitem: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}

/// Konu başlığı ve yönlendirme metni olan başlık
class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              color: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Row(
              children: [
                Text(
                  "Daha Fazlası",
                  style: TextStyle(
                    color: Color(0xFFBBBBBB),
                  ),
                ),
                Icon(
                  Icons.arrow_right,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
