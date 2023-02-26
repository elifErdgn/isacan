import 'package:flutter/material.dart';
import '../detail_screens/e_kitap_detail.dart';

import '../shop_custom_widgets/book_shop_card.dart';

class Daha_fazla_e_book extends StatelessWidget {
  const Daha_fazla_e_book({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("E KİTAPLAR EKRANI",style: TextStyle(fontSize: 20),),
          Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: demoBooks.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.45,
                ),
                itemBuilder: (context, index) => BookCard(
                  press: () {
                    Navigator.pushNamed(context, e_Kitap_Detail.routeName,
                        arguments:
                        BookDetailsArguments(books: demoBooks[index]));
                  },
                  books: demoBooks[index],
                ),
              )),
        ],
      ),
    );
  }
}
