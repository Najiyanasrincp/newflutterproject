import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:newflutterproject/Loginpage.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Myapp(),
    ),
  ));
}

class Myapp extends StatefulWidget {

  @override
  State <StatefulWidget> createState() => MyappState();

}

class MyappState extends State<Myapp>{
  @override
  void initState() {
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.white,
          padding: const EdgeInsets.only(top: 240,right: 50,left: 50),
          child: Center(
            child: Column(
              children: [
                Image(image: AssetImage("assets/w_icon.png"),height: 150,width: 150,),
                Text(
                  'Welcome to Flutter',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.teal[800],
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}