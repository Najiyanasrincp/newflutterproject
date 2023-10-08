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
          home: listseprtdasmnt(),
        ),
  ));
}

class listseprtdasmnt extends StatelessWidget{
  var name=['alexander','Najiya','Shamly','alexander','Najiya','Shamly','alexander','Najiya','Shamly','alexander','Najiya','Shamly',];
  var phone=['9075462759','9075462759','9075462759','9075462759','9075462759','9075462759','9075462759','9075462759','9075462759','9075462759','9075462759','9075462759','9075462759','9075462759','9075462759','9075462759'];
  var numbers=[0,1,2,3,4,5,6,7,8,9,10];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Contacts',
        //style: TextStyle(color: Colors.white),
        style: GoogleFonts.merriweather(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
      ),
        backgroundColor: Color(0xFF30B030),),
      body: Container(
        child: ListView.separated(itemBuilder:(context,index){
          return Container(
            height: 60,
            child: Card(
              color: Colors.white,
              child: ListTile(
                //leading:CircleAvatar(backgroundImage: NetworkImage(image[index]),),
                title:Padding(
                  padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                  child: Text(
                    name[index],style: GoogleFonts.merriweather(
                      color: Color(0xFF087508),fontWeight: FontWeight.bold
                  ),
                  ),
                ),
                //subtitle: Text(phone[index],style:TextStyle(color: Colors.black),),
                //trailing: Icon(Icons.add_a_photo,color: Colors.pink[800],),
              ),
            ),
          );
        }, separatorBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.only(right: 5,left: 5,top:3,bottom: 3),
            child:
            Container(
          height: 32, // Adjust the height of the divider
          decoration: BoxDecoration(
            color: Color(0xFF606260),
          borderRadius: BorderRadius.circular(5), // Circular corners
          // border: Border.all(
          // color: Colors.blue, // Border color
          // width: 2, // Border thickness
          // ),
          ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left:8),
                  child: Text(
                    'Seperator  ${numbers[index]}',
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 15,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ),
          );
        }, itemCount: name.length),
      ),
    );
  }
}