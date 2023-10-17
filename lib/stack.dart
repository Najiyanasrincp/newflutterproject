import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>
        MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: stack(),
        ),
  ));
}
class stack extends StatefulWidget{
  @override
  State<stack> createState() => _stack();
}

class _stack extends State<stack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Container(color: Colors.yellow,height: double.infinity,width: double.infinity,),
          Container(color:Colors.teal,height: 170,),
          Positioned(child: Container(color: Colors.red,height: 180,width: 180,),top: 50,left: 50,),
          Positioned(child: Container(color: Colors.blue,height: 180,width: 180,),top: 120,right: 50,),
          Positioned(child: Container(color: Colors.pink,height: 180,width: 180,),top: 270,left: 30,),

        ],
      ) ,
    );
  }
}