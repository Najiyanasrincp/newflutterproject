import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Gridviewbuild(),
      ),
  ));
}
class Gridviewbuild extends StatelessWidget{
  var name = [
    "Aurora",
    "Luna",
    "Isabella",
    "Sophia",
    "Aria",
    "Amelia",
    "Olivia",
    "Evelyn",
    "Grace",
    "Scarlett",
    "Violet",
    "Penelope",
  ];

var image = [
  "assets/images (1).jpg",
  "assets/images (1).jpg",
  "assets/images (1).jpg",
  "assets/images (1).jpg",
  "assets/images (1).jpg",
  "assets/images (1).jpg",
  "assets/images (1).jpg",
  "assets/images (1).jpg",
  "assets/images (1).jpg",
  "assets/images (1).jpg",
  "assets/images (1).jpg",
  "assets/images (1).jpg",
];

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  body: GridView.count(crossAxisCount: 3,
  children:
  List.generate(12, (index) {
  return Card(
  child: Column(
  children: [
  Expanded(
  child: Image(image: AssetImage(image[index]),)),
  Row(
  children: [
  Text(name[index]),
  SizedBox(width: 100,),
  ],
  ),
  ],
  ),
  );
  },)
  ,),
  );
  }

  }
