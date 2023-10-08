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
          home: Listviewcustom(),
        ),
  ));
}
class Listviewcustom extends StatelessWidget{
  var name=['najiya',"shamly","nasrin","jahan"];
  var icon=["na","sh","na","ja"];
  var phone=["12345","67890","12345","34567"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contacts',
        style: GoogleFonts.merriweather(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
      ),
        backgroundColor: Colors.cyanAccent[700],),
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
          (context,index){
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(icon[index]),
                ),
                title: Text(name[index]),
                subtitle: Text(phone[index]),
              ),
            );
          },childCount: name.length,
      )
      ),
    );
  }
}