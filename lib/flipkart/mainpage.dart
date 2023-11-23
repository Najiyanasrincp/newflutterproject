import 'package:flutter/material.dart';

import 'Productlist.dart';
import 'dummydata.dart';

void main(){
  runApp(MaterialApp(home: Maindata(),
    routes: {
      'secondpage':(context)=>Productlist(),
    },
  ));
}
class Maindata extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal,
        title: Text("What you want"),
      ),
      body: ListView(
        children: dummydata.map((product) => TextButton(onPressed: ()=>gotoNext(context, product["id"]),
            child: Text("${product["name"]}",
              style: TextStyle(fontSize: 20),
            ))).toList(),
      ),
    );
  }
}
void gotoNext(BuildContext context,product){
  Navigator.of(context).pushNamed("secondpage",arguments: product);
}