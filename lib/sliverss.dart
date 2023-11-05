import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';



void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>
        MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: sliverss(),
        ),
  ));
}
class sliverss extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            expandedHeight: 200,
            //flexibleSpace: Container(color: Colors.yellow,),
            backgroundColor: Colors.pinkAccent,
            title: Text("Slivers Example"),
            actions: [
              IconButton(onPressed: (){

              }, icon: Icon(Icons.shopping_cart)),
              IconButton(onPressed: (){

              }, icon: Icon(Icons.camera)),
            ],
            bottom: AppBar(
              backgroundColor: Colors.pinkAccent,
              elevation: 0,
              title: Container(
                decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(6.0), // Add border radius here
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextField(
                    decoration: InputDecoration(hintText: "Search something",
                    suffixIcon: Icon(Icons.search)
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              ListTile(
                leading: Icon(Icons.account_circle,size: 40,color: Colors.pinkAccent,),
                title: Text("anu"),
                subtitle: Text("965670329"),
              ),
              ListTile(
                leading: Icon(Icons.account_circle,size: 40,color: Colors.pinkAccent,),
                title: Text("anu"),
                subtitle: Text("965670329"),
              ),
              ListTile(
                leading: Icon(Icons.account_circle,size: 40,color: Colors.pinkAccent,),
                title: Text("anu"),
                subtitle: Text("965670329"),
              ),
              ListTile(
                leading: Icon(Icons.account_circle,size: 40,color: Colors.pinkAccent,),
                title: Text("anu"),
                subtitle: Text("965670329"),
              ),
              ListTile(
                leading: Icon(Icons.account_circle,size: 40,color: Colors.pinkAccent,),
                title: Text("anu"),
                subtitle: Text("965670329"),
              ),
              ListTile(
                leading: Icon(Icons.account_circle,size: 40,color: Colors.pinkAccent,),
                title: Text("anu"),
                subtitle: Text("965670329"),
              ),
              ListTile(
                leading: Icon(Icons.account_circle,size: 40,color: Colors.pinkAccent,),
                title: Text("anu"),
                subtitle: Text("965670329"),
              ),
              ListTile(
                leading: Icon(Icons.account_circle,size: 40,color: Colors.pinkAccent,),
                title: Text("anu"),
                subtitle: Text("965670329"),
              ),
              ListTile(
                leading: Icon(Icons.account_circle,size: 40,color: Colors.pinkAccent,),
                title: Text("anu"),
                subtitle: Text("965670329"),
              ),
              ListTile(
                leading: Icon(Icons.account_circle,size: 40,color: Colors.pinkAccent,),
                title: Text("anu"),
                subtitle: Text("965670329"),
              ),
              ListTile(
                leading: Icon(Icons.account_circle,size: 40,color: Colors.pinkAccent,),
                title: Text("anu"),
                subtitle: Text("965670329"),
              ),
              ListTile(
                leading: Icon(Icons.account_circle,size: 40,color: Colors.pinkAccent,),
                title: Text("anu"),
                subtitle: Text("965670329"),
              ),
              ListTile(
                leading: Icon(Icons.account_circle,size: 40,color: Colors.pinkAccent,),
                title: Text("anu"),
                subtitle: Text("965670329"),
              ),
              ListTile(
                leading: Icon(Icons.account_circle,size: 40,color: Colors.pinkAccent,),
                title: Text("anu"),
                subtitle: Text("965670329"),
              ),
              ListTile(
                leading: Icon(Icons.account_circle,size: 40,color: Colors.pinkAccent,),
                title: Text("anu"),
                subtitle: Text("965670329"),
              ),
            ]
          ))
        ],
      ),
    );
  }
}