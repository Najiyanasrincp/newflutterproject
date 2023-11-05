import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customwidget extends StatelessWidget{
  final Text ? text;
  final Color ? bgcolor;
  final Image ? img;

  VoidCallback ? onpress;

  Customwidget({this.text,this.bgcolor,this.img,required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        color: bgcolor,
        child: ListTile(
          leading: img,
          title: text,
          onTap: onpress,
        ),
      ),
    );
  }

}