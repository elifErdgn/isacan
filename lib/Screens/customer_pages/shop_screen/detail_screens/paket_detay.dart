import 'package:flutter/material.dart';

import '../../../../custom_widgets/color_Dots.dart';
import '../../../../custom_widgets/productImages.dart';
import '../../../../custom_widgets/product_description.dart';
import '../../../../custom_widgets/top_rounded_container.dart';
import '../../../../utils/size_config.dart';
import '../../profile_screen/benim_hesabim.dart';
import '../daha_fazlasini_goster_ekranlari/daha_fazla_paketler.dart';

class PaketDetail extends StatelessWidget {
  const PaketDetail({
    Key? key,
  }) : super(key: key);
  static String routeName ="/productDetail";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments args =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;

    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      body: PaketDetailBody(
        product: args.product,
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}


class PaketDetailBody extends StatelessWidget {
  final Product product;

  const PaketDetailBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: DefaultButton(
                          text: "Add to Cart",
                          press: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

