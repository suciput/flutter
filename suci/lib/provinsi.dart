import 'package:suci/provinsi.dart';
import './model/get_post_modelprov.dart';
import './controller/get_post_prov.dart';
import 'package:flutter/material.dart';

class Provinsi extends StatelessWidget {
  final GetPostProv _getPost = new GetPostProv();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kasus Data Berdasarkan Provinsi'),
      ),
      body: FutureBuilder(
          future: _getPost.manggilPostData(),
          builder: (context, AsyncSnapshot<List<Post>> snapshot) {
            if (snapshot.hasData) {
              List<Post> dataPost = snapshot.data;

              return ListView.builder(
                  itemCount: dataPost.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 130,
                      width: 300,
                      margin: EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(20),
                            child: Image.asset(
                              'assets/images/covid-19.png',
                              width: 60,
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(5),
                                child: Center(
                                  child: Text(
                                    dataPost[index].provinsi,
                                    style: TextStyle(
                                      height: 2,
                                      color: Colors.orange[800],
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // margin: EdgeInsets.all(10),
                                height: 20,
                                child: Center(
                                  child: Text(
                                    "Positif : " +
                                        dataPost[index].kasus_Posi.toString() +
                                        " jiwa",
                                    style: TextStyle(
                                      height: 1,
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // margin: EdgeInsets.all(10),
                                height: 20,
                                child: Center(
                                  child: Text(
                                    "Sembuh : " +
                                        dataPost[index].kasus_Semb.toString() +
                                        " jiwa",
                                    style: TextStyle(
                                      height: 1,
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // margin: EdgeInsets.all(10),
                                height: 20,
                                child: Center(
                                  child: Text(
                                    "Meninggal : " +
                                        dataPost[index].kasus_Meni.toString() +
                                        " jiwa",
                                    style: TextStyle(
                                      height: 1,
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    );
                  });
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(strokeWidth: 5),
                  Center(
                    child: Text(
                      "Loading...",
                      style: TextStyle(height: 5),
                    ),
                  )
                ],
              );
            }
          }),
    );
  }
}