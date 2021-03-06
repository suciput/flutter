import 'package:flutter/foundation.dart';

class Post {
  //DEFINISIK AN KEY NYA
  final String provinsi;
  final int kasus_Posi;
  final int kasus_Semb;
  final int kasus_Meni;

  //DEFINISI KANKE OBJECT
  Post(
      {@required this.provinsi,
      @required this.kasus_Posi,
      @required this.kasus_Semb,
      @required this.kasus_Meni});

  //MENAMPUNG DATA DENGAN FORMAT JSON
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        provinsi: json['attributes']['Provinsi'] as String,
        kasus_Posi: json['attributes']['Kasus_Posi'] as int,
        kasus_Semb: json['attributes']['Kasus_Semb'] as int,
        kasus_Meni: json['attributes']['Kasus_Meni'] as int);
  }
}