import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';
import '../../customer_pages/shop_screen/shop_custom_widgets/shoppage_custom_widgets.dart';
import '../alisveris_kartlari/alisveris_kart_page.dart';

class Ana_Baslangic_Ekrani extends StatelessWidget {
  const Ana_Baslangic_Ekrani({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.48,
            child: Container(
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/gym_2.jpg",
                    height: 280,
                    width: SizeConfig.screenWidth,
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      colors: [Colors.black54, Colors.black54],
                    )),
                  ),
                  Column(
                    children: [
                      AppBarWidget(),
                      //  OnboardAppBar(),
                      Expanded(
                        child: Align(
                          alignment: Alignment(0, -0.8),
                          child: Text(
                            "UYGULAMAMIZA HOŞ GELDİNİZ",
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.65, // nav bar kullanırsan burayı 60 yap
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF5D6D7E),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                      ),
                      Column(
                        children: [
                          /// Yorumlar kısmı
                          //YORUMLAR BAŞLIĞI
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "YORUMLAR",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          // YORUMLAR WİDGET
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Container(
                                  height: 200,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fitWidth,
                                          image: AssetImage(
                                              "assets/images/minimal.jpg"))),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Container(
                                  height: 200,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                    colors: [
                                      Colors.black45,
                                      Colors.black45,
                                    ],
                                  )),
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Text("Yorumlar olacak burda"),
                                    // ...List.generate(
                                    //   demoComments.length,
                                    //   (index) => Comment_Card(
                                    //     comment: demoComments[index],
                                    //   ),
                                    // )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),

                          /// blog
                          ///BLOG BAŞLIĞI
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Bloglara Göz At",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                                GestureDetector(
                                  onTap: (){},
                                  child: Row(
                                    children: [
                                      Text(
                                        "Daha Fazlası",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_right,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          ///BLOG WİDGET
                          // SingleChildScrollView(
                          //   scrollDirection: Axis.horizontal,
                          //   child: Row(
                          //     children: [
                          //       ...List.generate(
                          //         demoBooks.length,
                          //         (index) => BlogCard2(
                          //           blog: demoBlogs[index],
                          //           press: () => Navigator.pushNamed(
                          //               context, BlogDetailScreen.routeName,
                          //               arguments: BlogDetailArguments(
                          //                   blog: demoBlogs[index])),
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),

                          SizedBox(height: 20),

                          ///değişimleri göster butonu - Containerı
                          Stack(
                            children: [
                              Container(
                                // color: Colors.purpleAccent,
                                height: 100,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    //color: Color(0xFFBC8F8F)
                                    // image: DecorationImage(
                                    //     fit: BoxFit.cover,
                                    //     image:
                                    //         AssetImage("assets/images/yol1.jpg")
                                    ),
                              ),
                              GestureDetector(
                                onTap: () => Navigator.pushNamed(
                                    context, ChangesScreen.routeName),
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                    vertical: getProportionateScreenWidth(10),
                                    horizontal:
                                        getProportionateScreenHeight(20),
                                  ),
                                  width: double.infinity,
                                  //  height: 90,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: getProportionateScreenWidth(20),
                                    vertical: getProportionateScreenWidth(15),
                                  ),
                                  decoration: BoxDecoration(
                                      color:
                                          Colors.transparent.withOpacity(0.2),
                                      border: Border.all(
                                        color: Colors.black38,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(30),
                                        bottomLeft: Radius.circular(30),
                                        topLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                        //  bottomRight: Radius.circular(30),
                                      )),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Değişimleri Görüntüle",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 25),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 48, left: 16, right: 16),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: Titles.App_Name,
                  style: TextStyles.appNameTextStyle,
                ),
                TextSpan(text: "\n"),
                TextSpan(
                  text: Titles.Tag_Line,
                  style: TextStyles.tadLineTextStyle,
                ),
              ],
            ),
          ),
          Spacer(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/home (1).svg",
            press: () {},
            color: Colors.white,
          ),
          SizedBox(width: 10),
          IconBtnWithCounter(
            svgSrc: "assets/icons/shop (4).svg",
            press: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AlisverisKartPage(),
              ),
            ),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class Titles {
  Titles._();

  static const String App_Name = "ISACAN AKHAN";
  static const String Tag_Line = "PERSONEL TRAINER - Diet";
  static const String Baslamaya_Hazir_Misin = "BAŞLAMAYA HAZIR MISIN ?";
}

class TextStyles {
  TextStyles._();

  static final TextStyle appNameTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w800,
    color: Colors.white,
  );

  static final TextStyle tadLineTextStyle = TextStyle(
    fontSize: 12,
    color: Colors.white,
  );
}

class ChangesScreen extends StatelessWidget {
  const ChangesScreen({Key? key}) : super(key: key);

  static String routeName = "/change";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            "DEĞİŞİMLER",
            style: TextStyle(fontSize: 20),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: demoChanges.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.95, // RESİMLER ARASINDAKİ ARALIK
                ),
                itemBuilder: (context, index) => ChangeCard(
                  change: demoChanges[index],
                  press: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChangeCard extends StatelessWidget {
  const ChangeCard({Key? key, required this.change, required this.press})
      : super(key: key);

  final Change change;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              // image: AssetImage("assets/images/degisim_4.jpg"),
              image: AssetImage(change.images[0]),
            ),
          ),
        ),
      ),
    );
  }
}

class Change {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Change({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Change> demoChanges = [
  Change(
    id: 1,
    images: [
      "assets/images/degisim_1.jpg",
      "assets/images/degisim_1.jpg",
      "assets/images/degisim_1.jpg",
      "assets/images/degisim_1.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Eğitim Paketi 1",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Change(
    id: 2,
    images: [
      "assets/images/degisim_2.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Eğitim Paketi 2",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Change(
    id: 4,
    images: [
      "assets/images/degisim_3.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Eğitim Paketi 4",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Change(
    id: 4,
    images: [
      "assets/images/degisim_4.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Eğitim Paketi 4",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Change(
    id: 4,
    images: [
      "assets/images/degisim_4.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Eğitim Paketi 4",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Change(
    id: 1,
    images: [
      "assets/images/degisim_1.jpg",
      "assets/images/degisim_1.jpg",
      "assets/images/degisim_1.jpg",
      "assets/images/degisim_1.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Eğitim Paketi 1",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Change(
    id: 2,
    images: [
      "assets/images/degisim_2.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Eğitim Paketi 2",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
