import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/size_config.dart';
import '../../../login_Register/onboard/onboard_Screen.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  static String routeName = "/MyCart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: CartBody(),
      bottomNavigationBar: CheckoutCard(),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    title: SizedBox(
      width: SizeConfig.screenWidth * 0.7,
      child: Column(
        children: [
          Text(
            "Sepetim",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "3 ürün",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    ),
  );
}

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(15),
        horizontal: getProportionateScreenWidth(30),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: getProportionateScreenWidth(40),
                  width: getProportionateScreenWidth(40),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset("assets/icons/receipt.svg"),
                ),
                Spacer(),
                Text("indirim kodunu girin"),
                const SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kTextColor,
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Toplam : \n",
                    children: [
                      TextSpan(
                        text: "54562",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  child: DefaultButton(
                    text: "Devam et",
                    press: () {},
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CartBody extends StatefulWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoCart.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
            key: Key(demoCart[index].id.toString()),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              setState(() {
                demoCart.removeAt(index);
              });
            },
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Spacer(),
                  SvgPicture.asset("assets/icons/Trash.svg"),
                ],
              ),
            ),
            child: CartCard(
              myCart: demoCart[index],
            ),
          ),
        ),
      ),
    );
  }
}

class CartCard extends StatelessWidget {
  const CartCard({Key? key, required this.myCart}) : super(key: key);

  final MyCart myCart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(myCart.image),
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              myCart.title,
              style: TextStyle(color: Colors.black, fontSize: 16),
              maxLines: 2,
            ),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
                  text: "\$${myCart.price}",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),
                  children: [
                    TextSpan(
                        text: " x1 adet",
                        style: Theme.of(context).textTheme.bodyText1),
                  ]),
            ),
          ],
        ),
      ],
    );
  }
}

class MyCart {
  final int id;
  final String image, title, description;
  final double price;

  MyCart({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });
}

List<MyCart> demoCart = [
  MyCart(
    id: 1,
    image: "assets/images/adam.png",
    title: "Eğitim Paketi 1",
    description:
        "eğitim paketi açıklama  sşdlfksşldfk sdflksdlfkşsfl sdlfksşlfklsşdkfdslf slfksdlşfklsdfk sflskdfş",
    price: 38.25,
  ),
  MyCart(
    id: 1,
    image: "assets/images/urun2.jpg",
    title: "Urun 2",
    description: "urun açıklama  sşdlfkslşdfk sşdlfksşldfk ",
    price: 102.50,
  ),
  MyCart(
    id: 1,
    image: "assets/images/urun8.jpg",
    title: "E-kitap 1",
    description:
        "e kitap açıklama sşdlfksşldfk sdflksdlfkşsfl sdlfksşlfklsşdkfdslf slfksdlşfklsdfk sflskdfş",
    price: 38.25,
  ),
];
