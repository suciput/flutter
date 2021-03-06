import "package:latihan/get_post.dart";
import 'get_post_model.dart';
import 'get_post.dart';
import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  final GetPost _getPost = new GetPost();

  @override
  Widget build(BuildContext content) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Data dari Api'),
      ),
      body: FutureBuilder(
          future: _getPost.manggilPostData(),AnimatedBuilder(
            animation: animation,
            child: child,
            builder: (BuildContext context, Widget child) {
              return ;
            },
          ),
          builder: (context, AsyncSnapshot<List<Post>> snapshot) {
            if (snapshot.hasData) {
              List<Post> dataPost = snapshot.data;

              return ListView.builder(
                  itemCount: dataPost.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Card(
                          child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Icon(
                              Icons.android,
                              size: 30,
                              color: Colors.amber,
                            ),
                          ),
                         
                          Text('Country_Region :' +
                               dataPost[index].Country_Region.toString()),
                          Text('Confirmed :' + 
                                dataPost[index].Confirmed.toString()),
                          Text('Deaths :' + 
                                dataPost[index].Deaths.toString()),
                         Text('Recovered :' + 
                              dataPost[index].Recovered.toString()),
                        
                        ],
                      )),
                    );
                  });
            }
          }),
    );
  }
}
