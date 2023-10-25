import 'package:flutter/material.dart';
import 'package:newflutterproject/listbuilder.dart';
import 'package:newflutterproject/grid_view_builder_fixed.dart';
import 'package:newflutterproject/assmnt_list_builder.dart';
import 'package:newflutterproject/grid_view_assmnt.dart';


void main(){
  runApp(MaterialApp(home: Bottomnav(),));
}

class Bottomnav extends StatefulWidget{
  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
   var screen=[
     Gridviewassmnt(),
     Listbuilder(),
     Gridview(),
     Listbuilderass(),
   ];
  int index=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          //backgroundColor: Colors.grey, // this will work when the type is fixed
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.teal,
          currentIndex: index,
          onTap: (tapindx){
            setState(() {
              index=tapindx;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",
                backgroundColor: Colors.pink // this will work when the type is shifting
            ),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Like",backgroundColor: Colors.green),
            BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "Account",backgroundColor: Colors.blueAccent),
            BottomNavigationBarItem(icon: Icon(Icons.logout),label: "Logout",backgroundColor: Colors.purple),
          ]) ,
      body: screen[index],
    );
  }
}