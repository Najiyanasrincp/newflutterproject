//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Sample(),
  ));
}

class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            ),
          ),
        ),
      ),
    );
  }
}
