import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>
        MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: tapbarassmnt(),
        ),
  ));
}

class tapbarassmnt extends StatefulWidget{
  @override
  State<tapbarassmnt> createState() => _tapbarassmntState();
}

class _tapbarassmntState extends State<tapbarassmnt> {
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(title: Text("Whatsapp"),
          backgroundColor: Colors.teal[700],
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.search_outlined),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 0),
              child: Icon(Icons.camera_alt_sharp),
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
            isScrollable: true,
            labelColor:Colors.white,
              // unselectedLabelColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.home_filled),child: Text("home"),),
                Tab(icon: Icon(Icons.home_filled),child: Text("home"),),
                Tab(icon: Icon(Icons.home_filled),child: Text("home"),),
                Tab(icon: Icon(Icons.home_filled),child: Text("home"),),
                Tab(icon: Icon(Icons.home_filled),child: Text("home"),),
                Tab(icon: Icon(Icons.home_filled),child: Text("home"),),
                Tab(icon: Icon(Icons.home_filled),child: Text("home"),)

          ],),
        ),
        // body: TabBarView(
        //   children: [
        //     Gridviewassmnt(),
        //     Listbuilder(),
        //     Gridview(),
        //     Listbuilderass(),
        //   ],
        // ),
      ),
    );
  }
}