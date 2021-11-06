// ignore: unused_import
import 'dart:async';
import 'package:animation_2/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Timer(Duration(seconds: 5), () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => HomeScreen()));
      });
    });
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
            child: Image(
                width: 300,
                height: 300,
                image: AssetImage("assets/images/veg.jpeg"))),
      ),
    );
  }
}
