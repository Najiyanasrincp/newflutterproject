import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'lunch_tapbottom.dart';


void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>
        MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: lunchcart(),
        ),
  ));
}

class lunchcart extends StatefulWidget{
  @override
  State<lunchcart> createState() => _lunchcartState();
}

class _lunchcartState extends State<lunchcart> {
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[700],
          actions: [
            // Padding(
            //   padding: const EdgeInsets.only(right: 8.0),
            //   child: Icon(Icons.search_outlined),
            // ),
            Padding(
              padding: const EdgeInsets.only(right: 0),
              child: Icon(Icons.camera),
            ),
            PopupMenuButton(itemBuilder: (context){
              return [
                PopupMenuItem(child: Text("New Group")),
                PopupMenuItem(child: Text("New broadcast")),
                PopupMenuItem(child: Text("Linked devices")),
                PopupMenuItem(child: Text("Payments")),
                PopupMenuItem(child: Text("Settings")),
              ];
            },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
              ),
            ),
          ],
          bottom: TabBar(
           // isScrollable: true,
            labelColor:Colors.white,
            // unselectedLabelColor: Colors.white,
            tabs: [
              Tab(child: Text("Lunch",style:TextStyle(fontSize: 16)),),
              Tab(child: Text("Cart",style:TextStyle(fontSize: 16)),),
            ],),
        ),
        body: TabBarView(
          children: [
            Lunch(),
            Container(
              child: Text(""),
            )
          ],
        ),

      ),
    );
  }
}