import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>
        MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: Lunch(),
        ),
  ));
}

class Lunch extends StatelessWidget{
  var colour=[Colors.red,Colors.teal,Colors.yellow,Colors.red,Colors.green,Colors.pink,Colors.red,Colors.green,Colors.purple
    ,Colors.red,Colors.green,Colors.yellow,];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView.builder(
        itemCount:colour.length,itemBuilder: (context,index){
        return  Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            child: Row(
              children: [
                Container(
                  color: colour[index],
                  height: 70,
                  width: 85,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
                    mainAxisAlignment: MainAxisAlignment.center, // Center vertically
                    children: [
                      Text("1",style:TextStyle(color: Colors.white)),
                      Text("Tuesday",style:TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey.shade200, // Bottom border color
                          width: 0, // Bottom border width
                        ),
                      ),
                    ),
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Burgers",style:TextStyle(color: Colors.black,fontSize: 17)),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      ),
    );
  }
}