import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customwidget.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Customeg(),
      )));
}

class Customeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("vfs"),
      ),
      body: Container(
        child: Customwidget(onpress: (){

        },
          img: Image(image: AssetImage("assets/images (1).jpg"),),
          text: Text("SHAMLY"),
          bgcolor: Colors.cyan,
        ),
      ),
    );
  }

}