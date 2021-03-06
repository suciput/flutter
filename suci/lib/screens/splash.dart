import 'package:flutter/material.dart';
import 'package:suci/main.dart';  
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var durasi = const Duration(seconds: 2);
    return Timer(durasi, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return Home();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Text(
          "Covid-19",
          style: const TextStyle(
            color: Colors.black,
            fontSize: 35.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}