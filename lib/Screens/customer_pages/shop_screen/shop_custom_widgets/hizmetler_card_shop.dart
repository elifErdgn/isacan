import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/size_config.dart';
import '../daha_fazlasini_goster_ekranlari/daha_fazla_hizmetler.dart';

class OurServiceCard extends StatelessWidget {
  const OurServiceCard({
    Key? key,
    required this.press,required this.ourServices,
  }) : super(key: key);

  final GestureTapCallback press;
  final OurServices ourServices;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: press,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(5),
                vertical: getProportionateScreenWidth(10)),
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
                        fit: BoxFit.cover,
                        image: AssetImage(ourServices.image),
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
                        ourServices.title,
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
                        ourServices.description,
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
                          "\$5",
                          style: TextStyle(fontSize: 15, color: kPrimaryColor),
                        ),
                        SizedBox(width: 50),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Text("detay"),
                              Icon(Icons.arrow_right),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){},
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