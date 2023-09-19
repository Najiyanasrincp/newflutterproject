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
        return  Container(
          width: double.infinity, // Set the width to occupy the full width
          height: 70, // Set the height to your desired value
          child: Card(
            color: Colors.cyan[50],
            child: Align(
              alignment: Alignment.center,
              child: ListTile(
                // contentPadding: EdgeInsets.symmetric(horizontal: 2, vertical: 8), // Adjust padding as needed
                leading: CircleAvatar(
                  //contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Adjust padding as needed
                  //radius: 40,
                  backgroundColor: Colors.cyanAccent[700],
                  child: Text(
                    firstLetter,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title:Text(name[index],style: GoogleFonts.merriweather(color: Colors.black,fontWeight: FontWeight.bold),),
                trailing: Text(
                  '\$${values[index]}', // Add the dollar sign and the value from the values list
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