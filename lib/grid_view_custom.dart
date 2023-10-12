import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: GridviewCustom(),
      )));
}

class GridviewCustom extends StatelessWidget {
  var name = ["Shamly", "Naaj", "Shibili", "Faheem", "Wafa", "Nehla", "Nafla"];
  var image = ["images/najiyanasrin.jpg","images/najiyanasrin.jpg","images/najiyanasrin.jpg","images/najiyanasrin.jpg","images/najiyanasrin.jpg","images/najiyanasrin.jpg","images/najiyanasrin.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View"),),
      body: GridView.custom(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        childrenDelegate: SliverChildBuilderDelegate((context, index) {
          return Container(
            color: Colors.pink[50],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
              children: [
                Image(
                  image: NetworkImage(image[index]),
                  fit: BoxFit.fill,
                ),
                Center( // Center the text both vertically and horizontally
                  child: Text(name[index]),
                ),
              ],
            ),
          );
        },
          childCount: image.length,
        ),
      ),
    );
  }
}

