import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
        home: Gridviewassmnt(),
      )
  ));

}

class Gridviewassmnt extends StatelessWidget {
  var name = ["home", "Rashad", "Rahul", "Safuwan","manu","saalu","silu","8","9","10","11","12"];
  var icon=[Icons.home,Icons.email,Icons.alarm,Icons.wallet,Icons.backup,Icons.book,Icons.camera,Icons.person,Icons.print,Icons.phone,Icons.notes,Icons.music_video];
  var color=[Colors.yellow,Colors.grey,Colors.orange[50],Colors.pink,Colors.red[100],Colors.green[100],Colors.blue[200],Colors.brown[300],Colors.greenAccent[200],Colors.purple[200],Colors.grey,Colors.white30];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 7.0,right: 7),
        child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,crossAxisSpacing: 7.5,mainAxisSpacing: 7.5),
          children: List.generate(12, (index) {
            return Card(
              color:color[index],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,// Center content vertically
                children: [
                  Icon(icon[index],size: 80,),
                  Text(name[index],textAlign: TextAlign.center,),
                ],
              ),
            );
          },
          ),
        ),
      ),
    );
  }
}
