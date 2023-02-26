import 'package:flutter/material.dart';

import '../detail_screens/urun_detail_01.dart';
import '../shop_custom_widgets/urun_card_categ_tabs.dart';
import '../urunler_tabs/urun_page_01.dart';

class Daha_fazla_urun_01_list extends StatelessWidget {
  const Daha_fazla_urun_01_list({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: demoUrunler.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 15,
                    ),
                    itemBuilder: (context, index) => UrunCard(
                      press: () =>Navigator.pushNamed(
                          context, UrunDetail01.routeName,
                          arguments: UrunDetailsArguments(
                              urunler: demoUrunler[index])),
                      urunler: demoUrunler[index],
                    )),
              ))
        ],
      ),
    );
  }
}
