import 'package:flutter/material.dart';

import '../detail_screens/hizmet_detail.dart';
import '../shop_custom_widgets/hizmetler_card_shop.dart';

class Daha_fazla_hizmetlerimiz extends StatelessWidget {
  const Daha_fazla_hizmetlerimiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OurServiceBody(),
    );
  }
}

class OurServiceBody extends StatelessWidget {
  const OurServiceBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("hizmetler ekranı "),
        Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: demoServices.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.44,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) => OurServiceCard(
                ourServices: demoServices[index],
                press: (){
                  Navigator.pushNamed(
                      context, ServiceDetail.routeName,
                      arguments: ServiceDetailsArguments(
                          services: demoServices[index]));
                },
              ),
            ))
      ],
    );
  }
}


class OurServices {
  final int id;
  final String title, description, image;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  OurServices({
    required this.id,
    required this.image,
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

List<OurServices> demoServices= [
  OurServices(
    id: 1,
    image: "assets/images/sevice1.jpg",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Hizmet 1",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  OurServices(
    id: 1,
    image: "assets/images/service2.jpg",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Hizmet 2",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  OurServices(
    id: 1,
    image: "assets/images/sevice3.jpg",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Hizmet 3",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  OurServices(
    id: 1,
    image: "assets/images/service4.jpg",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Hizmet 4",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),

];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";

