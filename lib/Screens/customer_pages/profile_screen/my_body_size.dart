import 'package:flutter/material.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class MyBodySizePage extends StatelessWidget {
  const MyBodySizePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: BodySizeBody(),
    );
  }
}

class BodySizeBody extends StatelessWidget {
  const BodySizeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 50,
            left: 20,
          ),
          child: Container(
            height: 40,
            width: SizeConfig.screenWidth,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child:  Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.8,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => SizesWithDateWidget(
              press: () => Navigator(),
              image: "asset",
            ),
          ),
        ),
      ],
    );
  }
}

class SizesWithDateWidget extends StatelessWidget {
  const SizesWithDateWidget(
      {Key? key, required this.image, required this.press})
      : super(key: key);

  final String image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: SizeConfig.screenWidth,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Container(
                      height: 40,
                      child: Icon(Icons.home),
                    ),
                  ),
                  Text(
                    "12.10  -  TARİHİNDEKİ ÖLÇÜLER",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              Container(
                height: 1,
                color: Colors.black26,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
