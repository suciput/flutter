import 'dart:convert';
import 'package:http/http.dart';
import 'get_post_model.dart';

class GetPost {
  final String getposturl = "https://api.kawalcorona.com/";

//mengambil data
  Future<List<Post>> manggilPostData() async {
    Response res = await get(getposturl);
//mengubah json ke string (raw)
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
//data ditampung kedalam list dimodel post dan dirubah ke format json
      List<Post> postData =
          body.map((dynamic item) => Post.fromJson(item)).toList();
      return postData;
    } else {
      throw "Data Tidak Ada";
    }
  }
}
