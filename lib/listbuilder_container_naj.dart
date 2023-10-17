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
          home: Listbuilderassmntnaj(),
        ),
  ));
}

class Listbuilderassmntnaj extends StatelessWidget{
  var name=['alexander','Najiya','Shamly','alexander','Najiya','Shamly','alexander','Najiya','Shamly','alexander','Najiya','Shamly',];
  var values=[112,123,134,145,154,164,175,185,192,203,214,228];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Contacts',
        //style: TextStyle(color: Colors.white),
        style: GoogleFonts.merriweather(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
      ),
        backgroundColor: Colors.cyanAccent[700],),
      body: ListView.builder(
        itemCount:name.length,itemBuilder: (context,index){
        String firstLetter = name[index][0].toUpperCase();
        return  Padding(
          padding: const EdgeInsets.only(top: 3.0,right: 5,left: 5),
          child: Card(
            elevation: 5,
            shadowColor: Colors.cyanAccent[50],
            color: Colors.white,
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(backgroundColor: Colors.cyanAccent[700],radius: 27,
                      child: Text(
                        firstLetter,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  //SizedBox(width: 5,),
                  Text(name[index],
                    style: GoogleFonts.merriweather(
                        color: Colors.black,
                        fontWeight: FontWeight.bold),),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      '\$${values[index]}', // Add the dollar si
                      // gn and the value from the values list
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      ),
    );
  }
}