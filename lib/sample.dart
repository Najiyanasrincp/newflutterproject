//import 'package:flutter/cupertino.dart';
<<<<<<< HEAD
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Sample(),
=======
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Sample(),
    ),
>>>>>>> 731f69f (Initial commit)
  ));
}

class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: Text("My App"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.tealAccent,
        child: Center(
          child: Text(
            'Welcome to Flutter',
              style: TextStyle(
              fontSize: 30,
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,
=======
       title: Text("My App"
          ,style: TextStyle(
            color: Colors.black, // Change the text color here
           fontWeight: FontWeight.w900,
          ),
       ),
      backgroundColor: Colors.teal[600],
     ),
      body: Container(
        color: Colors.teal[100],
        child: Padding(
          padding: const EdgeInsets.only(top: 240,right: 50,left: 50),
          child: Center(
            child: Column(
              children: [

                Image(image: AssetImage("assets/fluttericon.png"),height: 100,width: 100,),
                  Text(
                    'Welcome to Flutter',
                      style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
              ],
>>>>>>> 731f69f (Initial commit)
            ),
          ),
        ),
      ),
    );
  }
}
