import 'package:flutter/material.dart';
import 'package:isa_can_akhan_01/Screens/customer_pages/shop_screen/daha_fazlasini_goster_ekranlari/daha_fazla_paketler.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRetion = 1.02,
    required this.press, required this.product,
  }) : super(key: key);

  final double width, aspectRetion;
  final Product product;
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
                          image: AssetImage(product.images[0]),
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
                      product.title,
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
                        "\$${product.price}",
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
                      //       color: product.isFavourite
                      //           ? kSecondaryColor.withOpacity(0.1)
                      //           : kSecondaryColor.withOpacity(0.1),
                      //       shape: BoxShape.circle,
                      //     ),
                      //     child: SvgPicture.asset(
                      //       "assets/icons/Heart Icon_2.svg",
                      //       color: product.isFavourite
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