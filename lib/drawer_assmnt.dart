import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: Drawereg(),
  ));
}

class Drawereg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer"),backgroundColor:Colors.teal[600],),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              accountName:Text("Najiya Nasrin CP",style:TextStyle(fontWeight: FontWeight.bold)),

              accountEmail: Stack(children: [
              Text("najiyanasrincpgmail.com",style: TextStyle(color: Colors.white70),),
                Padding(
                 padding: const EdgeInsets.only(top:23,bottom: 0),
                 child:RichText(
                   text: TextSpan(
                     children:[
                       TextSpan(
                         text: "123",
                         style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                       ),
                       TextSpan(text: " Following    ",style:TextStyle(color:Colors.white70)),
                       TextSpan(
                         text: "1200",
                         style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white),
                       ),
                       TextSpan(text: " Followers",style:TextStyle(color:Colors.white70)),
                     ]
                   ),
                 )
                    ),
                  ],),

              currentAccountPicture: CircleAvatar(
                radius: 5,
                backgroundImage: AssetImage("assets/images (1).jpg"),),
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.black,),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.message,color: Colors.black,),
              title: Text("Messages"),
            ),
            ListTile(
              leading: Icon(Icons.account_box,color: Colors.black,),
              title: Text("ACCOUNT"),
            ),
            ListTile(
              leading: Icon(Icons.sync_sharp,color: Colors.black,),
              title: Text("Synch"),
            ),
            ListTile(
              leading: Icon(Icons.delete,color: Colors.black,),
              title: Text("Trash"),
            ),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.black,),
              title: Text("Settings"),
            ),
            Divider(
              thickness: 1,color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Text("Profile",style: TextStyle(color: Colors.black54),),
            ),
            ListTile(
              leading: Icon(Icons.logout,color: Colors.black,),
              title: Text("Logout"),
            ),
            Divider(
              thickness: 1,color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.share,color: Colors.black,),
              title: Text("Share"),
            ),
            ListTile(
              leading: Icon(Icons.rate_review,color: Colors.black,),
              title: Text("Rate us"),
            ),
          ],
        ),)
      ,
    );
  }

}