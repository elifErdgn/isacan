import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';
import 'edit_profile_screen.dart';
import 'profile_screen.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: BenimHesabimBody(),
    );
  }
}

class BenimHesabimBody extends StatelessWidget {
  const BenimHesabimBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(height: 20),
        HeadinWidget(heading: "Kişisel Bilgiler"),
        SizedBox(height: 10),
        Menu(
          icon: "assets/icons/Mail.svg",
          title: "BİŞİLER@gmail.com",
        ),
        Menu(
          icon: "assets/icons/Phone_2.svg",
          title: "0533 333 33 33",
        ),
        Menu(
          icon: "assets/icons/date-2.svg",
          title: "1990-03.08",
        ),
        Menu(
          icon: "assets/icons/gender.svg",
          title: "KADIN",
        ),
        Menu(
          icon: "assets/icons/v-card.svg",
          title: "ÜYELİK TİP 2",
        ),
        Menu(
          icon: "assets/icons/timer.svg",
          title: "324 Gün Kaldı",
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 10,
            left: 200,
            top: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              DefaultButton(
                text: "Düzenle",
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditScreen(),
                      ));
                },
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

class HeadinWidget extends StatelessWidget {
  const HeadinWidget({Key? key, required this.heading}) : super(key: key);

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320, // %80
      child: Text(
        heading,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

/// BİLGİLER LİSTESİ tek satır s
class Menu extends StatelessWidget {
  const Menu({Key? key, this.icon, this.title}) : super(key: key);

  final String? icon, title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: Card(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: ListTile(
              //leading: Icon(Icons.email),
              leading: Padding(
                padding: const EdgeInsets.all(7.0),
                child: SvgPicture.asset(
                  icon!,
                  width: 25,
                ),
              ),
              title: Text(title!),
            ),
          ),
        ],
      )),
    );
  }
}

/// ÖZEL TASARIM BUTONUMUZ
class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;

 final VoidCallback? press;
 // final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: kPrimaryColor,
        ),
      onPressed: press,
      //  onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
