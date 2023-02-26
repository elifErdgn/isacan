import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';

class EducationPackgetScreen extends StatelessWidget {
  const EducationPackgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3D82AE),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: getProportionateScreenWidth(238),
                        child: AspectRatio(
                          aspectRatio: 1.5,
                          child: Hero(
                              tag: "ürün 1",
                              child: Image.asset("assets/images/adam.png")),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: getProportionateScreenWidth(10)),
                        padding: EdgeInsets.only(top: getProportionateScreenWidth(20)),
                        width: double.infinity,
                        height: 418,
                        // height: 500,
                        //color: Colors.yellow,
                        decoration: BoxDecoration(
                          //  border: Border.all(color: kPrimaryColor),
                          color: Color(0xFFF5F6F9),
                          //color: Colors.purpleAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: getProportionateScreenWidth(10)),
                                child: Text(
                                  "Eğitim Paketi 1",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: getProportionateScreenWidth(10)),
                              child: Text(
                                "Açıklama Açıklama Açıklama Açıklama Açıklama Açıklama Açıklama Açıklama Açıklama Açıklama Açıklama  Açıklama Açıklama Açıklama AçıklamaAçıklama Açıklama Açıklama  ",
                                //maxLines: 2, //kaç satırın ekranda gösterileceğini ayarlıyoruz
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: getProportionateScreenWidth(10)),
                              child: Text(
                                  "şsdlfşisdf şsdlfşisdf şsdlfşisdf  şsdlfşisdf şsdlfşisdf şsdlfşisdf şsdlfşisdf şsdlfşisdf şsdlfşisdf şsdlfşisdf şsdlfşisdf şsdlfşisdf şsdlfşisdf "),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: getProportionateScreenWidth(10)),
                              child: Text(
                                  "şsdlfşisdf şsdlfşisdf şsdlfşisdf  şsdlfşisdf şsdlfşisdf şsdlfşisdf şsdlfşisdf şsdlfşisdf şsdlfşisdf şsdlfşisdf şsdlfşisdf şsdlfşisdf şsdlfşisdf "),
                            ),
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
      backgroundColor: Color(0xFF3D82AE),
    );
  }
}
