import 'package:flutter/cupertino.dart';
import 'package:isa_can_akhan_01/Screens/customer_pages/shop_screen/detail_screens/e_kitap_detail.dart';
import '../Screens/customer_pages/shop_screen/detail_screens/hizmet_detail.dart';
import '../Screens/customer_pages/shop_screen/detail_screens/paket_detay.dart';
import '../Screens/customer_pages/shop_screen/detail_screens/urun_detail_01.dart';

final Map<String, WidgetBuilder> routes = {
  PaketDetail.routeName: (context) => PaketDetail(),
  e_Kitap_Detail.routeName: (context) => e_Kitap_Detail(),
  ServiceDetail.routeName : (context) => ServiceDetail(),
  UrunDetail01.routeName : (context) => UrunDetail01(),



};
