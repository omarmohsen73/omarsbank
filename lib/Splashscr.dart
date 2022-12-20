import 'package:flutter/material.dart';
import 'dart:async';

import 'homePage.dart';

class Splash_Screen extends StatefulWidget {
  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}
class _Splash_ScreenState extends State<Splash_Screen>{
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => homePage()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              color: Colors.white,
              child: Image.asset('assets/images/Colored Gradient Illustration Online Banking Instagram Story (1).jpg',
                fit: BoxFit.cover,),
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              alignment: AlignmentDirectional.bottomCenter,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.black38),
              ),
            )
          ],
        ),
      ),

    );
  }}
