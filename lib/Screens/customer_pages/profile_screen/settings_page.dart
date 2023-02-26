import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';

class Settings_page extends StatelessWidget {
  const Settings_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 50,
                width: SizeConfig.screenWidth,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "GENEL AYARLAR",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SettingsWidget(
                      press: () {},
                      color: Colors.orange,
                      settingName: "Profilim",
                    ),
                    SettingsWidget(
                      press: () {},
                      color: Colors.green,
                      settingName: "Egzersiz Ayarları",
                    ),
                    SettingsWidget(
                      press: () {},
                      color: Colors.indigo,
                      settingName: "Genel Ayarlar",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "UYGULAMA AYARLAR",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SettingsWidget(
                      press: () {},
                      color: Colors.orange,
                      settingName: "Reklamlar",
                    ),
                    SettingsWidget(
                      press: () {},
                      color: Colors.green,
                      settingName: "Bize Oy Verin",
                    ),
                    SettingsWidget(
                      press: () {},
                      color: Colors.indigo,
                      settingName: "Genel Ayarlar",
                    ),
                    SettingsWidget(
                      press: () {},
                      color: Colors.purple,
                      settingName: "Dil Seçenekleri",
                    ),
                    SettingsWidget(
                      press: () {},
                      color: Colors.purple,
                      settingName: "Geri Bildirim",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({
    Key? key,
    required this.settingName,
    required this.color,
    required this.press,
  }) : super(key: key);

  final Color color;
  final String settingName;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        height: 50,
        child: Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: color,
              ),
            ),
            SizedBox(width: 20),
            Text(
              settingName,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
