import 'package:flutter/foundation.dart';

class Post{

  //Definisi key nya
  final int OBJECTID;
  final String Country_Region;
  final int Last_Update;
  final int Lat;
  final int Long_;
  final int Confirmed;
   final int Deaths;
  final int Recovered;
    final int Active;
  //Definisikanke object
  Post({
    @required this.OBJECTID,
    @required this.Country_Region,
    @required this.Last_Update,
    @required this.Lat,
    @required this.Long_,
    @required this.Confirmed,
    @required this.Deaths,
    @required this.Recovered,
     @required this.Active,
  });

  //menampung data dengan format json
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(  
    Country_Region : json['attributes']['Country_Region'] as String,
    Confirmed : json['attributes']['Confirmed'] as int,
    Deaths : json['attributes']['Deaths'] as int,
    Recovered : json['attributes']['Recovered'] as int,
  
    );
  }
}
