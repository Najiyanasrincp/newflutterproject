import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>
          MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: Drawereg(),
          )));
}

class Drawereg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer"),),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/1341408852/video/colored-smoke-on-a-dark-background-blue-and-red-light-with-smoke.jpg?s=640x640&k=20&c=v2DQUY8IVbli_6FH_9KAs6YWRXlDdYiBJHfp7JFh7NY="),fit: BoxFit.cover)),
              accountName: Text("Shamly Jahan"),
              accountEmail: Text("shamlyjahan@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images (1).jpg"),),
              otherAccountsPictures: [
                CircleAvatar(backgroundImage: AssetImage("images/MHR09762.JPG"),)
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("HOME"),
            ),
            ListTile(
              leading: Icon(Icons.design_services),
              title: Text("SERVICE"),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("ACCOUNT"),
            ),
            Divider(
              thickness: 1,color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            ),
          ],
        ),)
      ,
    );
  }

}