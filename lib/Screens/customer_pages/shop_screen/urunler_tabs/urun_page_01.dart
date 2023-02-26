import 'package:flutter/material.dart';

import '../detail_screens/urun_detail_01.dart';
import '../shop_custom_widgets/urun_card_categ_tabs.dart';

class UrunPage01 extends StatelessWidget {
  const UrunPage01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: demoUrunler.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) => UrunCard(
                      press: () =>Navigator.pushNamed(
                          context, UrunDetail01.routeName,
                          arguments: UrunDetailsArguments(
                              urunler: demoUrunler[index])),
                      urunler: demoUrunler[index],
                    )),
              ))
        ],
      ) ,
    );
  }
}

class Urunler {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Urunler({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Urunler> demoUrunler = [
  Urunler(
    id: 1,
    images: [
      "assets/images/urun1.jpg",
      "assets/images/urun2.jpg",
      "assets/images/urun3.jpg",
      "assets/images/urun4.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Urun 1",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Urunler(
    id: 2,
    images: [
      "assets/images/urun6.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Urun 2",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Urunler(
    id: 3,
    images: [
      "assets/images/urun8.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Urun 3",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Urunler(
    id: 4,
    images: [
      "assets/images/urun5.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Urun 4",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Urunler(
    id: 4,
    images: [
      "assets/images/urun9.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Urun 5",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];


const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
