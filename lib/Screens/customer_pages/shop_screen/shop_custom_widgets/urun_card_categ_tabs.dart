import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/size_config.dart';
import '../daha_fazlasini_goster_ekranlari/daha_fazla_urun_detail_01.dart';
import '../detail_screens/urun_detail_01.dart';
import '../shop_home_screen.dart';
import '../urunler_tabs/urun_page_01.dart';

class CateTabs extends StatefulWidget {
  const CateTabs({Key? key}) : super(key: key);

  @override
  State<CateTabs> createState() => _CateTabsState();
}

class _CateTabsState extends State<CateTabs> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

    return Column(
      children: [
        SizedBox(height: 20),
        Container(
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              controller: _tabController,
              // isScrollable: true,
              labelPadding: const EdgeInsets.only(left: 20, right: 20),
              tabs: [
                Tab(text: "Kategori 1 "),
                Tab(text: "kategori 2"),
              ],
            ),
          ),
        ),
        Container(
          width: double.maxFinite,
          height: 330,
          child: TabBarView(
            controller: _tabController,
            children: [
              Column(
                children: [
                  SectionTitle(
                    title: "Kategori 1 Ürünleri",
                    press: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Daha_fazla_urun_01_list()));
                    },
                  ),
                  SizedBox(height: getProportionateScreenWidth(20)),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                          demoUrunler.length,
                          (index) => UrunCard(
                            urunler: demoUrunler[index],
                            press: () {
                              Navigator.pushNamed(
                                  context, UrunDetail01.routeName,
                                  arguments: UrunDetailsArguments(
                                      urunler: demoUrunler[index]));
                            },
                          ),
                        ),
                        SizedBox(width: getProportionateScreenWidth(20)),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SectionTitle(
                    title: "Kategori 2 Ürünleri",
                    press: () {},
                  ),
                  SizedBox(height: getProportionateScreenWidth(20)),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                         6,
                          (index) => urunCard2(
                            press: () {},
                          ),
                        ),
                        SizedBox(width: getProportionateScreenWidth(20)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class UrunCard extends StatelessWidget {
  const UrunCard({
    Key? key,
    this.width = 140,
    this.aspectRetion = 1.02,
    required this.press,required this.urunler,
  }) : super(key: key);

  final double width, aspectRetion;
  final Urunler urunler;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: Column(
        children: [
          GestureDetector(
            onTap: press,
            child: SizedBox(
              width: getProportionateScreenWidth(width),
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: aspectRetion,
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(urunler.images[0]),
                        ),
                        color: kSecondaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // child: Image.asset(product.images[0]),
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: SizeConfig.screenWidth * 0.4,
                    // alanın %40'ını kullan
                    child: Text(
                      urunler.title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.w600),
                      maxLines: 1, // açıklamanın kaç satır gözükeceği
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$5",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(18),
                          fontWeight: FontWeight.w600,
                          color: kPrimaryColor,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "200",
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      // InkWell(
                      //   borderRadius: BorderRadius.circular(30),
                      //   onTap: () {},
                      //   child: Container(
                      //     padding:
                      //         EdgeInsets.all(getProportionateScreenWidth(8)),
                      //     width: getProportionateScreenWidth(28),
                      //     height: getProportionateScreenWidth(28),
                      //     decoration: BoxDecoration(
                      //       color: urunler.isFavourite
                      //           ? kSecondaryColor.withOpacity(0.1)
                      //           : kSecondaryColor.withOpacity(0.1),
                      //       shape: BoxShape.circle,
                      //     ),
                      //     child: SvgPicture.asset(
                      //       "assets/icons/Heart Icon_2.svg",
                      //       color: urunler.isFavourite
                      //           ? Color(0xFFFF4848)
                      //           : Color(0xFFDBDEE4),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 8),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: getProportionateScreenWidth(width),
              height: 25,
              child: Center(
                  child: Text(
                "Sepete Ekle",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 15,
                ),
              )),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class urunCard2 extends StatelessWidget {
  const urunCard2(
      {Key? key,
        this.width = 140,
        this.aspectRetion = 1.02,
        required this.press})
      : super(key: key);

  final double width, aspectRetion;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: Column(
        children: [
          GestureDetector(
            onTap: press,
            child: SizedBox(
              width: getProportionateScreenWidth(width),
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: aspectRetion,
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/adam.png"),
                        ),
                        color: kSecondaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // child: Image.asset(product.images[0]),
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: SizeConfig.screenWidth * 0.4,
                    // alanın %40'ını kullan
                    child: Text(
                      "urunler2.title",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.w600),
                      maxLines: 1, // açıklamanın kaç satır gözükeceği
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$5",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(18),
                          fontWeight: FontWeight.w600,
                          color: kPrimaryColor,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "200",
                          style:
                          TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      // InkWell(
                      //   borderRadius: BorderRadius.circular(30),
                      //   onTap: () {},
                      //   child: Container(
                      //     padding:
                      //     EdgeInsets.all(getProportionateScreenWidth(8)),
                      //     width: getProportionateScreenWidth(28),
                      //     height: getProportionateScreenWidth(28),
                      //     decoration: BoxDecoration(
                      //       color: urunler2.isFavourite
                      //           ? kSecondaryColor.withOpacity(0.1)
                      //           : kSecondaryColor.withOpacity(0.1),
                      //       shape: BoxShape.circle,
                      //     ),
                      //     child: SvgPicture.asset(
                      //       "assets/icons/Heart Icon_2.svg",
                      //       color: urunler2.isFavourite
                      //           ? Color(0xFFFF4848)
                      //           : Color(0xFFDBDEE4),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 8),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: getProportionateScreenWidth(width),
              height: 25,
              child: Center(
                  child: Text(
                    "Sepete Ekle",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  )),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
