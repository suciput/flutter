import 'package:flutter/material.dart';
import 'package:suci/screens/splash.dart';
import './email.dart' as email;
import './provinsi.dart' as provinsi;
import './kota.dart' as kota;
import './kecamatan.dart' as kecamatan;
import './kelurahan.dart' as kelurahan;

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Tampilan Tab Bar",
    home: new SplashScreen(),
  ));
}
class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {    
     return Scaffold(      
    appBar: AppBar(       
      title: Text('Halaman Pertama'),     
    ),     
     
        );   
    } 
} 


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  //create controller untuk tabBar
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 5);
    //tambahkan SingleTickerProviderStateMikin pada class _HomeState
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //create appBar
       //create appBar
      appBar: new AppBar(
        //warna background
        backgroundColor: Colors.lightGreen,
        //judul
        title: new Text("Tampilan Home "),
        //bottom
        bottom: new TabBar(
          controller: controller,
          //source code lanjutan
          tabs: <Widget>[
            new Tab(
             
              text: "halaman",
            ),
            new Tab(
           
              text: "Provinsi",
            ),
            new Tab(
             
              text: "Kota",
            ),
            new Tab(
              
              text: "Kecamatan",
            ),
         new Tab(
              
              text: "Kelurahan",
          
            ),
          ],
        ),
      ),

      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new email.Email(),
          new provinsi.Provinsi(),
          new kota.Kota(),
          new kecamatan.Kecamatan(),
          new kelurahan.Kelurahan(),
        ],
      ),
     
    );
  }
}
