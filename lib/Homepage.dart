import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Homepage extends StatefulWidget{
    @override
    State<StatefulWidget> createState()=> homepagestate();
}
class homepagestate extends State<Homepage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text('Contacts',
          //style: TextStyle(color: Colors.white),
          style: GoogleFonts.merriweather(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
        ),
          backgroundColor: Colors.pink[800],),
      body:ListView(
        children:[
          Card(
            //color: Colors.pink[50],
            child: ListTile(
              leading:CircleAvatar(backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6l-yxkwPcCwlAdO2hBFNk0J0GvAvptoOo1w&usqp=CAU')),
              title:Text("manu",style:GoogleFonts.merriweather(
                color: Colors.pink[800],),),
              subtitle: Text('96455570329'),
              trailing: Icon(Icons.call,color: Colors.pink[800],),
            ),
          ),
          Card(
            //color:Colors.pink[50],
            child: ListTile(
              leading:CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQekxtto9AvMbMSSRd3WkCEP3BYENUW2YUsOA&usqp=CAU"),),
              title:Text("sham",style:GoogleFonts.merriweather(
                color: Colors.pink[800],),),
              subtitle: Text('96455570329'),
              trailing: Icon(Icons.call,color: Colors.pink[800],),
            ),
          ),
          Card(
            //color: Colors.pink[50],
            child: ListTile(
              leading:CircleAvatar(backgroundImage: NetworkImage("https://media.istockphoto.com/id/1132752246/photo/close-up-photo-beautiful-amazing-she-her-dark-skin-lady-arms-chest-eyes-closed-imagination.jpg?s=612x612&w=0&k=20&c=R8jfYpwGfehKlGeTxPkAO66Sz-tges_ultvGjNmJ5q0="),),
              title:Text("Ann mariya",style:GoogleFonts.merriweather(
                  color: Colors.pink[800],),),
              subtitle: Text('96455570329'),
              trailing: Icon(Icons.call,color: Colors.pink[800],),
            ),
          ),
          Card(
            //color: Colors.pink[50],
            child: ListTile(
              leading:CircleAvatar(backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6l-yxkwPcCwlAdO2hBFNk0J0GvAvptoOo1w&usqp=CAU')),
              title:Text("manu",style:GoogleFonts.merriweather(
                color: Colors.pink[800],),),
              subtitle: Text('96455570329'),
              trailing: Icon(Icons.call,color: Colors.pink[800],),
            ),
          ),
          Card(
            //color:Colors.pink[50],
            child: ListTile(
              leading:CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQekxtto9AvMbMSSRd3WkCEP3BYENUW2YUsOA&usqp=CAU"),),
              title:Text("sham",style:GoogleFonts.merriweather(
                color: Colors.pink[800],),),
              subtitle: Text('96455570329'),
              trailing: Icon(Icons.call,color: Colors.pink[800],),
            ),
          ),
          Card(
            //color: Colors.pink[50],
            child: ListTile(
              leading:CircleAvatar(backgroundImage: NetworkImage("https://media.istockphoto.com/id/1132752246/photo/close-up-photo-beautiful-amazing-she-her-dark-skin-lady-arms-chest-eyes-closed-imagination.jpg?s=612x612&w=0&k=20&c=R8jfYpwGfehKlGeTxPkAO66Sz-tges_ultvGjNmJ5q0="),),
              title:Text("Ann mariya",style:GoogleFonts.merriweather(
                color: Colors.pink[800],),),
              subtitle: Text('96455570329'),
              trailing: Icon(Icons.call,color: Colors.pink[800],),
            ),
          ),
          Card(
            //color: Colors.pink[50],
            child: ListTile(
              leading:CircleAvatar(backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6l-yxkwPcCwlAdO2hBFNk0J0GvAvptoOo1w&usqp=CAU')),
              title:Text("manu",style:GoogleFonts.merriweather(
                color: Colors.pink[800],),),
              subtitle: Text('96455570329'),
              trailing: Icon(Icons.call,color: Colors.pink[800],),
            ),
          ),
          Card(
            //color:Colors.pink[50],
            child: ListTile(
              leading:CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQekxtto9AvMbMSSRd3WkCEP3BYENUW2YUsOA&usqp=CAU"),),
              title:Text("sham",style:GoogleFonts.merriweather(
                color: Colors.pink[800],),),
              subtitle: Text('96455570329'),
              trailing: Icon(Icons.call,color: Colors.pink[800],),
            ),
          ),
          Card(
            //color: Colors.pink[50],
            child: ListTile(
              leading:CircleAvatar(backgroundImage: NetworkImage("https://media.istockphoto.com/id/1132752246/photo/close-up-photo-beautiful-amazing-she-her-dark-skin-lady-arms-chest-eyes-closed-imagination.jpg?s=612x612&w=0&k=20&c=R8jfYpwGfehKlGeTxPkAO66Sz-tges_ultvGjNmJ5q0="),),
              title:Text("Ann mariya",style:GoogleFonts.merriweather(
                color: Colors.pink[800],),),
              subtitle: Text('96455570329'),
              trailing: Icon(Icons.call,color: Colors.pink[800],),
            ),
          ),
          Card(
            //color: Colors.pink[50],
            child: ListTile(
              leading:CircleAvatar(backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6l-yxkwPcCwlAdO2hBFNk0J0GvAvptoOo1w&usqp=CAU')),
              title:Text("manu",style:GoogleFonts.merriweather(
                color: Colors.pink[800],),),
              subtitle: Text('96455570329'),
              trailing: Icon(Icons.call,color: Colors.pink[800],),
            ),
          ),
          Card(
            //color:Colors.pink[50],
            child: ListTile(
              leading:CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQekxtto9AvMbMSSRd3WkCEP3BYENUW2YUsOA&usqp=CAU"),),
              title:Text("sham",style:GoogleFonts.merriweather(
                color: Colors.pink[800],),),
              subtitle: Text('96455570329'),
              trailing: Icon(Icons.call,color: Colors.pink[800],),
            ),
          ),
          Card(
            //color: Colors.pink[50],
            child: ListTile(
              leading:CircleAvatar(backgroundImage: NetworkImage("https://media.istockphoto.com/id/1132752246/photo/close-up-photo-beautiful-amazing-she-her-dark-skin-lady-arms-chest-eyes-closed-imagination.jpg?s=612x612&w=0&k=20&c=R8jfYpwGfehKlGeTxPkAO66Sz-tges_ultvGjNmJ5q0="),),
              title:Text("Ann mariya",style:GoogleFonts.merriweather(
                color: Colors.pink[800],),),
              subtitle: Text('96455570329'),
              trailing: Icon(Icons.call,color: Colors.pink[800],),
            ),
          ),
          Card(
            //color: Colors.pink[50],
            child: ListTile(
              leading:CircleAvatar(backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6l-yxkwPcCwlAdO2hBFNk0J0GvAvptoOo1w&usqp=CAU')),
              title:Text("manu",style:GoogleFonts.merriweather(
                color: Colors.pink[800],),),
              subtitle: Text('96455570329'),
              trailing: Icon(Icons.call,color: Colors.pink[800],),
            ),
          ),
          Card(
            //color:Colors.pink[50],
            child: ListTile(
              leading:CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQekxtto9AvMbMSSRd3WkCEP3BYENUW2YUsOA&usqp=CAU"),),
              title:Text("sham",style:GoogleFonts.merriweather(
                color: Colors.pink[800],),),
              subtitle: Text('96455570329'),
              trailing: Icon(Icons.call,color: Colors.pink[800],),
            ),
          ),
          Card(
            //color: Colors.pink[50],
            child: ListTile(
              leading:CircleAvatar(backgroundImage: NetworkImage("https://media.istockphoto.com/id/1132752246/photo/close-up-photo-beautiful-amazing-she-her-dark-skin-lady-arms-chest-eyes-closed-imagination.jpg?s=612x612&w=0&k=20&c=R8jfYpwGfehKlGeTxPkAO66Sz-tges_ultvGjNmJ5q0="),),
              title:Text("Ann mariya",style:GoogleFonts.merriweather(
                color: Colors.pink[800],),),
              subtitle: Text('96455570329'),
              trailing: Icon(Icons.call,color: Colors.pink[800],),
            ),
          ),
          Card(
            //color: Colors.pink[50],
            child: ListTile(
              leading:CircleAvatar(backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6l-yxkwPcCwlAdO2hBFNk0J0GvAvptoOo1w&usqp=CAU')),
              title:Text("manu",style:GoogleFonts.merriweather(
                color: Colors.pink[800],),),
              subtitle: Text('96455570329'),
              trailing: Icon(Icons.call,color: Colors.pink[800],),
            ),
          ),
          Card(
            //color:Colors.pink[50],
            child: ListTile(
              leading:CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQekxtto9AvMbMSSRd3WkCEP3BYENUW2YUsOA&usqp=CAU"),),
              title:Text("sham",style:GoogleFonts.merriweather(
                color: Colors.pink[800],),),
              subtitle: Text('96455570329'),
              trailing: Icon(Icons.call,color: Colors.pink[800],),
            ),
          ),
          Card(
            //color: Colors.pink[50],
            child: ListTile(
              leading:CircleAvatar(backgroundImage: NetworkImage("https://media.istockphoto.com/id/1132752246/photo/close-up-photo-beautiful-amazing-she-her-dark-skin-lady-arms-chest-eyes-closed-imagination.jpg?s=612x612&w=0&k=20&c=R8jfYpwGfehKlGeTxPkAO66Sz-tges_ultvGjNmJ5q0="),),
              title:Text("Ann mariya",style:GoogleFonts.merriweather(
                color: Colors.pink[800],),),
              subtitle: Text('96455570329'),
              trailing: Icon(Icons.call,color: Colors.pink[800],),
            ),
          ),
          Card(
            //color: Colors.pink[50],
            child: ListTile(
              leading:CircleAvatar(backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6l-yxkwPcCwlAdO2hBFNk0J0GvAvptoOo1w&usqp=CAU')),
              title:Text("manu",style:GoogleFonts.merriweather(
                color: Colors.pink[800],),),
              subtitle: Text('96455570329'),
              trailing: Icon(Icons.call,color: Colors.pink[800],),
            ),
          ),
          Card(
            //color:Colors.pink[50],
            child: ListTile(
              leading:CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQekxtto9AvMbMSSRd3WkCEP3BYENUW2YUsOA&usqp=CAU"),),
              title:Text("sham",style:GoogleFonts.merriweather(
                color: Colors.pink[800],),),
              subtitle: Text('96455570329'),
              trailing: Icon(Icons.call,color: Colors.pink[800],),
            ),
          ),
          Card(
            //color: Colors.pink[50],
            child: ListTile(
              leading:CircleAvatar(backgroundImage: NetworkImage("https://media.istockphoto.com/id/1132752246/photo/close-up-photo-beautiful-amazing-she-her-dark-skin-lady-arms-chest-eyes-closed-imagination.jpg?s=612x612&w=0&k=20&c=R8jfYpwGfehKlGeTxPkAO66Sz-tges_ultvGjNmJ5q0="),),
              title:Text("Ann mariya",style:GoogleFonts.merriweather(
                color: Colors.pink[800],),),
              subtitle: Text('96455570329'),
              trailing: Icon(Icons.call,color: Colors.pink[800],),
            ),
          ),

        ]
      )
    );
  }
}
void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>
        MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: Homepage(),
        ),
  ));
}