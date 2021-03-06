import 'dart:convert';
import 'package:http/http.dart';
import '../model/get_post_modelprov.dart';

class GetPostProv {
  final String getposturl = "https://api.kawalcorona.com/indonesia";

  //MENGAMBIL DATA
  Future<List<Post>> manggilPostData() async {
    Response res = await get(getposturl);
    //MENGUBAH JSON KE STRING
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      //DATA DITAMPUNG KEDALAM LIST DIMODEL POST DAN DIRUBAH KE FORMAT JSON
      List<Post> postData =
          body.map((dynamic item) => Post.fromJson(item)).toList();
      return postData;
    } else {
      throw "Data Tidak Ada";
    }
  }
}