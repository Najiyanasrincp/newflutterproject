import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>
          MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: lottienaj(),
          )));
}
class lottienaj extends StatefulWidget {
  @override
  State<lottienaj> createState() => _lottienajState();
}

class _lottienajState extends State<lottienaj> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:ListView(
      children: [
        Lottie.asset("animation/animation_lnyamii3.json")
      ],
    ) ,
    );
  }
}