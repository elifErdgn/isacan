import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';

class Comment_Page extends StatelessWidget {
  const Comment_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyCommentCard(),
          MyCommentCard(),
          MyCommentCard(),
        ],
      ),
    );
  }
}

class MyCommentCard extends StatelessWidget {
  const MyCommentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 150,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(2,2),
            blurRadius: 8,
            color: Colors.black12,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Ürün Adı",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 5),
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/urun1.jpg"),
                          )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8,top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("İsim Soyisim"),
                    //SizedBox(height: 10),
                    Container(
                      width: (SizeConfig.screenWidth - 30) * 0.7,
                      child: Text(
                        "Ekle sekmesinde, galeriler belgenizin genel görünümünü düzenlemek için tasarlanan öğeleri eklerler.  Bu galerileri, tablolar, üstbilgiler, altbilgiler, kapak sayfaları ve diğer belge yapı taşlarını eklemek için kullanabilirsiniz.  Resimler, kartlar veya grafikler oluşturduğunuzda, aynı zamanda geçerli belge görünümünüzü de düzenlerler.  Belgedeki seçili metnin biçimlendirmesini, Giriş sekmesindeki Hızlı Stiller galerisinden seçilen metin görünümünü seçerek kolayca değiştirebilirsiniz.  Metni doğrudan Giriş sekmesindeki diğer denetimleri kullanarak da biçimlendirebilirsiniz.  ",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
