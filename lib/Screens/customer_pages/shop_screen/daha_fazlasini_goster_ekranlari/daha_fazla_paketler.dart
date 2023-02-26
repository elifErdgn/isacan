import 'package:flutter/material.dart';

import '../../../../utils/size_config.dart';
import '../detail_screens/paket_detay.dart';

class Daha_fazla_paketler extends StatelessWidget {
  const Daha_fazla_paketler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: demoProducts.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.9, // kartlar arasındaki boşluk
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
                crossAxisCount: 1,
              ),
              itemBuilder: (context, index) => PackageCard(
                product: demoProducts[index],
                press: () {
                  Navigator.pushNamed(context, PaketDetail.routeName,
                      arguments: ProductDetailsArguments(
                          product: demoProducts[index]));
                },
              ),
            ),
          ))
        ],
      ),
    );
  }
}


class PackageCard extends StatelessWidget {
  const PackageCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Text("SDFSDFGHJHKL", style: TextStyle(color: Colors.red),),
        Padding(
          padding:  EdgeInsets.all(8.0),
          child: Stack(
            children: [
              InkWell(
                onTap: press,
                child: Row(
                  children: [
                    // resim
                    Container(
                      width: 150,
                      height: 170,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(product.images[0]),
                          )),
                    ),
                    SizedBox(width: 20),
                    // yazı kart kısmı
                    Container(
                      height: 170,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.title,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 200,
                            child: Center(
                              child: Text(
                                product.description,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),

                          Spacer(),
                          // SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: SizeConfig.screenWidth * 0.3,
                                child: Text(
                                  "\$${product.price}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600, fontSize: 16),
                                ),
                              ),
                              //  SizedBox(width: 70),
                              GestureDetector(
                                onTap: press,
                                child: Row(
                                  children: [
                                    Text(
                                      "2 hafta",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(Icons.watch_outlined, size: 18,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        //Text("dfsdflşsdkfşsldkflş"),
      ],
    );
  }
}



class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
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

// Our demo Products -- model daha sonra silinecek

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/adam.png",
      "assets/images/adam.png",
      "assets/images/adam.png",
      "assets/images/adam.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Eğitim Paketi 1",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/gym.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Eğitim Paketi 2",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/lift.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Eğitim Paketi 3",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/adam.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Eğitim Paketi 4",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
