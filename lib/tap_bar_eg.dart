import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newflutterproject/listbuilder.dart';
import 'package:newflutterproject/grid_view_builder_fixed.dart';
import 'package:newflutterproject/assmnt_list_builder.dart';
import 'package:newflutterproject/grid_view_assmnt.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>
        MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: tapbareg(),
        ),
  ));
}

class tapbareg extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 4,
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
          bottom: TabBar(tabs: [
            Tab(
             icon: Icon(Icons.people_alt),
            ),
           Tab(
             child: Text(
               "Chats",
               style: TextStyle(fontSize: 18.0), // Adjust the fontSize as needed
                  ),
                ),
            Tab(
              child: Text(
                "Status",
                style: TextStyle(fontSize: 18.0), // Adjust the fontSize as needed
              ),
            ),

            Tab(
              child: Text(
                "Calls",
                style: TextStyle(fontSize: 18.0), // Adjust the fontSize as needed
              ),
            )
          ],),
        ),
        body: TabBarView(
          children: [
            Gridviewassmnt(),
            Listbuilder(),
            Gridview(),
            Listbuilderass(),
          ],
        ),
      ),
    );
  }
}