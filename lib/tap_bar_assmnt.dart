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
        appBar: AppBar(title: Text("GeeksForGeeks"),
          backgroundColor: Colors.teal[700],
          actions: [
            // Padding(
            //   padding: const EdgeInsets.only(right: 8.0),
            //   child: Icon(Icons.search_outlined),
            // ),
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
                Tab(icon: Icon(Icons.home_filled),child: Text("Home"),),
                Tab(icon: Icon(Icons.account_box_outlined),child: Text("Account"),),
                Tab(icon: Icon(Icons.alarm),child: Text("Alarm"),),
                Tab(icon: Icon(Icons.camera_alt_outlined),child: Text("Camera"),),
                Tab(icon: Icon(Icons.call),child: Text("Call"),),
                Tab(icon: Icon(Icons.message_outlined),child: Text("Chats"),),
                Tab(icon: Icon(Icons.my_library_music_sharp),child: Text("Music"),)

          ],),
        ),
        body: TabBarView(
          children: [
            // Icon for the Account tab
            Center(
              child: Stack(
                children: [
                  //Icon(Icons.account_box_outlined, size: 50.0, color: Colors.teal[700]),
                  Positioned(
                    right: 0,
                    left: 0,
                    bottom: 330,
                    child: Icon(Icons.home_filled,size: 50,color: Colors.teal,),
                  ),
                ],
              ),
            ),

            // Repeat the above pattern for other tabs...
          ],
        ),

      ),
    );
  }
}