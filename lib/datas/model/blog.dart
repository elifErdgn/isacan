import 'dart:convert';

List<BlogModel> postFromJson(String str) =>
    List<BlogModel>.from(json.decode(str).map((x) => BlogModel.fromJson(x)));

String postToJson(List<BlogModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BlogModel {
  int ID;
  String baslik;
  String googleaciklama;
  String googleanahtar;
  String icerik;
  String kisaaciklama;
  String resim;
  String tarih;

  BlogModel({
    required this.ID,
    required this.baslik,
    required this.googleaciklama,
    required this.googleanahtar,
    required this.icerik,
    required this.kisaaciklama,
    required this.resim,
    required this.tarih,
  });

  factory BlogModel.fromJson(Map<String, dynamic> json) => BlogModel(
    ID: json["ID"],
    baslik: json["baslik"],
    googleaciklama: json["googleaciklama"],
    googleanahtar: json["googleanahtar"],
    icerik: json["icerik"],
    kisaaciklama: json["kisaaciklama"],
    resim: json["resim"],
    tarih: json["tarih"],
  );

  Map<String, dynamic> toJson() => {
    "ID": ID,
    "baslik": baslik,
    "googleaciklama": googleaciklama,
    "googleanahtar": googleanahtar,
    "icerik": icerik,
    "kisaaciklama": kisaaciklama,
    "resim": resim,
    "tarih": tarih,
  };
}

/// apiyi çağırdığımız kısım
class BlogApi{
  static String apiUrl= "http://isacanapi.tuzlatest.com/blog/list";

} 
