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
          home: Listbuilderass(),
        ),
  ));
}

class Listbuilderass extends StatelessWidget{
  var name=['Facebook','A10 NETWORK INC','Intel corp','Hp Inc','Advanced Micro Devices Inc','Apple Inc','Amazon.com Inc','Microsoft Corporation','Samsung','alexander','Najiya','Shamly',];
  var values=[112,1213,134,145,154,64,175,1875,192,203,214,228];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('List View Builder',
        //style: TextStyle(color: Colors.black),
       style: GoogleFonts.merriweather(color: Colors.black,fontSize: 18.5,fontWeight: FontWeight.bold),
      ),
        backgroundColor: Colors.cyanAccent[700],),
      body: ListView.builder(
        itemCount:name.length,itemBuilder: (context,index){
        String firstLetter = name[index][0].toUpperCase();
        return  Container(
          width: double.infinity, // Set the width to occupy the full width
          height: 80, // Set the height to your desired value
          child: Card(
            //color: Colors.cyan[50],
            elevation: 4,
            shadowColor: Colors.cyanAccent[100],
            child: Align(
              alignment: Alignment.center,
              child: ListTile(
                leading:
                CircleAvatar(backgroundColor: Colors.cyanAccent[700],radius: 25,
                  child: Text(
                    firstLetter,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title:Text(name[index],
                  style: TextStyle(color: Colors.black,
                      //fontWeight: FontWeight.bold
                  ),
                  // style: GoogleFonts.merriweather(
                  //     color: Colors.black,
                  //     fontWeight: FontWeight.bold),
                  ),
                trailing: Text(
                  '\$${values[index]}', // Add the dollar si
                  // gn and the value from the values list
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        );
      },
      ),
    );
  }
}