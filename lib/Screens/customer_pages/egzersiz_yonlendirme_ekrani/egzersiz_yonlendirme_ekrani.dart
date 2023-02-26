import 'package:flutter/material.dart';
import '../../../custom_widgets/custom_bottom_nav_bar.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';
import 'radialProgressandPainter.dart';

class EgzersizYonlendirmeEkrani extends StatelessWidget {
  const EgzersizYonlendirmeEkrani({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor3,
      body: EgzersizYonlendirmeBody(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.video,
      ),
    );
  }
}

class EgzersizYonlendirmeBody extends StatelessWidget {
  const EgzersizYonlendirmeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, left: 20, right: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ///AppBar - başlık kısmı
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Egzersizlerim",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: Colors.black,
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.calendar_today_sharp,
                  size: 20,
                  color: Colors.black,
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(height: 10),

            /// Mini başlık ve detay butonu
            // Row(
            //   children: [
            //     Text(
            //       "Egzersiz Planlamam",
            //       style: TextStyle(
            //           fontSize: 20,
            //           // color: Colors.blueGrey,
            //           fontWeight: FontWeight.w700),
            //     ),
            //     Expanded(child: Container()),
            //     Text(
            //       "Detay",
            //       style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
            //     ),
            //     SizedBox(width: 5),
            //    // Icon(Icons.arrow_forward, size: 17),
            //   ],
            // ),

            /// KOŞAN KADININ OLDUĞU KART
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 5),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 20),
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/minimal.jpg"),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            color: Colors.black38.withOpacity(0.3),
                          ),
                        ]),
                  ),
                  Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(right: 180, bottom: 30),
                    decoration: BoxDecoration(
                      //color: Colors.redAccent.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/images/run (1).png"),
                          //  fit: BoxFit.fitHeight,
                        )),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 100,
                    //color: Colors.redAccent.withOpacity(0.4),
                    margin: EdgeInsets.only(left: 140, top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Harika Gidiyorsun",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        RichText(
                          text: TextSpan(
                            text: "Devam Et \n",
                            style: TextStyle(fontSize: 16, color: kTextColor),
                            children: [
                              TextSpan(
                                text: "Plana sadık kal !",
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ///Günlük egzersiz sayfasına yönlendiren kart ve oynat ikonu linki
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFF6A8E9E),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(50),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2, 10),
                      blurRadius: 10,
                      color: Colors.black38.withOpacity(0.1),
                    )
                  ]),
              child: Container(
                padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sırada ki Workout",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    //SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bacak Sıklaştırma\nve Karın Egersizleri",
                          style: TextStyle(fontSize: 23, color: Colors.white),
                        ),
                        RadialProgress(
                          textColor: Colors.white,
                          color: Colors.white,
                          title: "Video",
                          height: SizeConfig.screenHeight * 0.13,
                          width: SizeConfig.screenHeight * 0.13,
                          progress: 0.7 ,
                        ),
                        // Container(
                        //   decoration: BoxDecoration(
                        //     color: Color(0xFFFFF3E3),
                        //    borderRadius: BorderRadius.circular(20),
                        //   ),
                        //   height: 90,
                        //   width: 90,
                        //   child: Center(
                        //     child: Text("İlerleme\n grafiği"),
                        //   ),
                        // )
                      ],
                    ),
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.timer, size: 20, color: Colors.white),
                        SizedBox(width: 5),
                        Text(
                          "60 dk",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: InkWell(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.white),
                                //color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "Başla",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(Icons.play_circle_fill,
                                      color: Colors.white),
                                ],
                              ),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            /// Egzersiz kategori kartları BAŞLIĞI
            Row(
              children: [
                Text(
                  "Egzersizler",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            /// EGZERSİZ CARD YAPISI
            ...List.generate(
              5,
                  (index) => ExerciseCard(
                exerciseName: "Kol ve Sırt ",
                image: "assets/images/adam.png",
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}


class PictureCard extends StatelessWidget {
  const PictureCard({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  final String title, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: (MediaQuery.of(context).size.width - 80) / 3,
          width: (MediaQuery.of(context).size.width - 80) / 3,
          //   padding: EdgeInsets.only(bottom: 5),
          margin: EdgeInsets.only(left: 5, bottom: 15, right: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                offset: Offset(5, 5),
                color: Colors.black38.withOpacity(0.1),
              ),
              BoxShadow(
                blurRadius: 10,
                offset: Offset(-5, -5),
                color: Colors.black38.withOpacity(0.1),
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                height: SizeConfig.screenHeight * 0.12,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                    )),
              ),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black38,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ExerciseCard extends StatelessWidget {
  const ExerciseCard(
      {Key? key, required this.image, required this.exerciseName})
      : super(key: key);
  final String image, exerciseName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.only(right: 20),
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            //color: Color(0XFF237C9A),
            //color: Colors.black45,
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color(0xFF6A8E9E)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12.withOpacity(0.1),
                  offset: Offset(0,0),
                  blurRadius: 5,
                  spreadRadius: 1,
                )
              ]
          ),
          //height: 60,
          width: SizeConfig.screenWidth,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              ///  mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Container(
                //   margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                //   height: 55,
                //   width: 55,
                //   decoration: BoxDecoration(
                //       image: DecorationImage(
                //     image: AssetImage(image),
                //   )),
                // ),
                Text(
                  exerciseName,
                  style: TextStyle(fontSize: 18),
                ),
                Expanded(child: Container()),
                Icon(Icons.arrow_right_alt_rounded),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

