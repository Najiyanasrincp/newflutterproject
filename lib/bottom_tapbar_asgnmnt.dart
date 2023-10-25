import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'lunch_cart_tapbar_assmnt.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>
        MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: Bottomnav(),
        ),
  ));
}


class Bottomnav extends StatefulWidget{
  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  var screen=[
    lunchcart(),
    lunchcart(),
    lunchcart(),
    lunchcart(),
  ];
  int index=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.grey, // this will work when the type is fixed
          type: BottomNavigationBarType.fixed,
          // selectedItemColor: Colors.black,
          //unselectedItemColor: Colors.teal,
          currentIndex: index,
          onTap: (tapindx){
            setState(() {
              index=tapindx;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
            BottomNavigationBarItem(icon: Icon(Icons.fastfood),label: "Lunches",),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded),label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.face),label: "Account"),
          ]) ,
      body: screen[index],
    );
  }
}