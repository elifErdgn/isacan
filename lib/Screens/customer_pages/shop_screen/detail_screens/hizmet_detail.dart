import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants.dart';
import '../../../../utils/size_config.dart';
import '../daha_fazlasini_goster_ekranlari/daha_fazla_hizmetler.dart';
import 'e_kitap_detail.dart';


class ServiceDetail extends StatelessWidget {
  const ServiceDetail({Key? key}) : super(key: key);
  static String routeName ="/Ourservicedetail";

  @override
  Widget build(BuildContext context) {


    final ServiceDetailsArguments argmnt =
    ModalRoute
        .of(context)!
        .settings
        .arguments as ServiceDetailsArguments;

    return Scaffold(
      body: ServiceDetailBody(services: argmnt.services,),
      bottomNavigationBar:  Container(
        width: double.infinity,
        height: 50,
        //color: Color(0xFF584692),
        //color: Color(0xFFE5E5E5),
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.favorite_border,
                color: Colors.transparent,
                size: 30,
              ),
              Container(
                height: 35,
                width: (SizeConfig.screenWidth +60) / 3,
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black45,
                    )),
                child: Center(
                  child: Text(
                    "Sepete Ekle",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20 ,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceDetailsArguments {
  final OurServices services;

  ServiceDetailsArguments({required this.services});
}



class ServiceDetailBody extends StatelessWidget {
  const ServiceDetailBody({Key? key, required this.services}) : super(key: key);

  final OurServices services;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          toolbarHeight: 80,
          leading: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          actions: [
            Icon(
              Icons.favorite_border,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(width: 20),
            Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: Container(
              width: double.maxFinite,
              child: Center(
                child: Text(
                  "Hizmet Detay/ HİZMET ADI ",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
            ),
          ),
          pinned: true,
          backgroundColor: Colors.grey[850],
          expandedHeight: 300,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              services.image,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              /// FİYAT KISMI - YÜKLENME TARİHİ
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${services.price}",
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: "Muli",
                          fontWeight: FontWeight.w600,
                          color: kPrimaryColor,
                        ),
                      ),
                      Text(
                        "05.12.2018",
                        style: TextStyle(
                          color: kPrimaryColor.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              ///çizgi
              Container(
                height: 2,
                width: SizeConfig.screenWidth,
                color: Colors.deepOrange,
              ),

              /// ürün içeriği başlığı
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  children: [
                    Text(
                      "Ürünün İçeriği ",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),

              ///açıklama kısmı
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "Ekle sekmesinde, galeriler belgenizin genel görünümünü düzenlemek için tasarlanan öğeleri eklerler.  Bu galerileri, tablolar, üstbilgiler, altbilgiler, kapak sayfaları ve diğer belge yapı taşlarını eklemek için kullanabilirsiniz.  Resimler, kartlar veya grafikler oluşturduğunuzda, aynı zamanda geçerli belge görünümünüzü de düzenlerler.  Belgedeki seçili metnin biçimlendirmesini, Giriş sekmesindeki Hızlı Stiller galerisinden seçilen metin görünümünü seçerek kolayca değiştirebilirsiniz.  Metni doğrudan Giriş sekmesindeki diğer denetimleri kullanarak da biçimlendirebilirsiniz. Ekle sekmesinde, galeriler belgenizin genel görünümünü düzenlemek için tasarlanan öğeleri eklerler.  Bu galerileri, tablolar, üstbilgiler, altbilgiler, kapak sayfaları ve diğer belge yapı taşlarını e Ekle sekmesinde, galeriler belgenizin genel görünümünü düzenlemek için tasarlanan öğeleri eklerler.  Bu galerileri, tablolar, üstbilgiler, altbilgiler, kapak sayfaları ve diğer belge yapı taşlarını",
                ),
              ),

              ///çizgi
              Container(
                height: 2,
                width: SizeConfig.screenWidth,
                color: Colors.deepOrange,
              ),

              /// yorumlar başlangıcı
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Yorumlar",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                    ),
                    CommentCard(
                      color: Colors.black,
                    ),
                    CommentCard(
                      color: Colors.black,
                    ),
                    CommentCard(
                      color: Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 80, right: 20, top: 5),
                      child: SizedBox(
                        height: 60,
                        width: 260,
                        child: TextField(
                          maxLength: 50,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                "assets/icons/send.svg",
                                color: Colors.black26,
                                width: 20,
                                height: 20,
                              ),
                            ),
                            // border: InputBorder.none,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            fillColor: Colors.black12,
                            filled: true,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        //Container(),
      ],
    );
  }
}
