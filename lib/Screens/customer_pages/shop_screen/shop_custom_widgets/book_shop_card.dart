import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/size_config.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    Key? key,
    required this.press,
    required this.books,
  }) : super(key: key);

  final GestureTapCallback press;
  final Books books;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: press,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(10),
            ),
            child: SizedBox(
              width: 200,
              child: Column(
                children: [
                  /// resim
                  Container(
                    height: 270,
                    width: 170,
                    decoration: BoxDecoration(
                      //color: Colors.purple,
                      image: DecorationImage(
                        image: AssetImage(books.images[0]),
                      ),
                    ),
                  ),

                  /// kitap adı - title
                  Container(
                    width: 170,
                    // color: Colors.purple,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        books.title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),

                  /// açıklama
                  Container(
                    width: 170,
                    // color: Colors.purple,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        books.description,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 6),

                  ///fiyat ve detay butonu
                  Container(
                    width: 170,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$7",
                          style: TextStyle(fontSize: 15, color: kPrimaryColor),
                        ),
                        SizedBox(width: 50),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("detay"),
                              Icon(Icons.arrow_right),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: getProportionateScreenWidth(160),
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
    );
  }
}

class Books {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Books({
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

List<Books> demoBooks = [
  Books(
    id: 1,
    images: [
      "assets/images/urun8.jpg",
      "assets/images/urun8.jpg",
      "assets/images/urun8.jpg",
      "assets/images/urun8.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "E-kitap 1",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Books(
    id: 2,
    images: [
      "assets/images/urun9.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "E-kitap 2",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Books(
    id: 3,
    images: [
      "assets/images/urun7.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "E-kitap 3",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Books(
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
    title: "E-kitap 4",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Books(
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
    title: "E-kitap 5",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
