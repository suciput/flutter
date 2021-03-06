import 'package:flutter/foundation.dart';

class Post {
  //DEFINISIK AN KEY NYA
  final String name;
  final String positif;
  final String sembuh;
  final String meninggal;

  //DEFINISI KANKE OBJECT
  Post(
      {@required this.name,
      @required this.positif,
      @required this.sembuh,
      @required this.meninggal});

  //MENAMPUNG DATA DENGAN FORMAT JSON
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        name: json['attributes']['name'] as String,
        positif: json['attributes']['positif'] as String,
        sembuh: json['attributes']['sembuh'] as String,
        meninggal: json['attributes']['meninggal'] as String);
  }
}