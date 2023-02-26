import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../custom_widgets/color_Dots.dart';
import '../../../../custom_widgets/top_rounded_container.dart';
import '../../../../utils/constants.dart';
import '../../../../utils/size_config.dart';
import '../../../login_Register/onboard/onboard_Screen.dart';
import '../urunler_tabs/urun_page_01.dart';

class UrunDetail01 extends StatelessWidget {
  const UrunDetail01({Key? key}) : super(key: key);

  static String routeName = "/detailUrun";


  @override
  Widget build(BuildContext context) {

    final UrunDetailsArguments argmnt =
    ModalRoute
        .of(context)!
        .settings
        .arguments as UrunDetailsArguments;

    return Scaffold(
    body: UrunDetail01Body(
      urunler: argmnt.urunler,
    ),
    );
  }
}

class UrunDetailsArguments {
  final Urunler urunler;

  UrunDetailsArguments({required this.urunler});
}

class UrunDetail01Body extends StatelessWidget {
  const UrunDetail01Body({Key? key,required this.urunler}) : super(key: key);


  final Urunler urunler;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        UrunImages(urunler: urunler),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              UrunDescription(
                urunler: urunler,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(urunler: urunler),
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

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key? key,
    required this.urunler,
  }) : super(key: key);

  final Urunler urunler;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            urunler.colors.length,
                (index) => ColorDot(
              color: urunler.colors[index],
              isSelected: index == selectedColor,
            ),
          ),
          Spacer(),
          RoundedIconBtn(
            icon: Icons.remove,
            press: () {},
          ),
          SizedBox(width: getProportionateScreenWidth(20)),
          RoundedIconBtn(
            icon: Icons.add,
            showShadow: true,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class UrunDescription extends StatelessWidget {
  final Urunler urunler;
  final GestureTapCallback? pressOnSeeMore;

  const UrunDescription(
      {Key? key, required this.urunler, this.pressOnSeeMore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            urunler.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            width: getProportionateScreenWidth(64),
            decoration: BoxDecoration(
              color:
              urunler.isFavourite ? Color(0xFFFFE6E6) : Color(0xFFF5F6F9),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: SvgPicture.asset(
              "assets/icons/Heart Icon_2.svg",
              color:
              urunler.isFavourite ? Color(0xFFFF4848) : Color(0xFFDBDEE4),
              height: getProportionateScreenWidth(16),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
          ),
          child: Text(
            urunler.description,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: 10,
          ),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  "See More Detail",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: kPrimaryColor),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kPrimaryColor,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}


class UrunImages extends StatefulWidget {
  const UrunImages({Key? key, required this.urunler}) : super(key: key);

  final Urunler urunler;

  @override
  State<UrunImages> createState() => _UrunImagesState();
}

class _UrunImagesState extends State<UrunImages> {
  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Hero(
              tag: widget.urunler.id.toString(),
              child: Image.asset(widget.urunler.images[selectedImage]),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.urunler.images.length,
                    (index) => buildSmallProductPreview(index)),
          ],
        ),
      ],
    );
  }

  GestureDetector buildSmallProductPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(8),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: kPrimaryColor.withOpacity(selectedImage == index ? 1 : 0)),
        ),
        child: Image.asset(widget.urunler.images[index]),
      ),
    );
  }
}
