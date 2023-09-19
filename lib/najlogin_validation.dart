import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>
        MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: Loginpagewithvalidation(),
        ),
  ));
}

class Loginpagewithvalidation extends StatefulWidget {
  @override
  State<Loginpagewithvalidation> createState() => _LoginpagevalidState();
}

class _LoginpagevalidState extends State<Loginpagewithvalidation> {
  GlobalKey<FormState>formkey=GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page',
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.teal[800],),
      body: Stack(

        children: [
          Container(
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(
            "https://media.istockphoto.com/id/1295094900/vector/abstract-blue-pattern-background.jpg?s=612x612&w=0&k=20&c=AbaQgOwcFSjYPMeLesER7bL7q37ApThMdrQwS4pC0MY="
            ), fit: BoxFit.fill)
            ),
          ),

          SingleChildScrollView(
            child: Container(
              child: Center(
                child: Form(
                  child: Column(
                      children: [
                        SizedBox(height: 50,),
                        Image(image: AssetImage('assets/w_icon.png'),
                          height: 60,
                          width: 60,),
                        SizedBox(height: 40,),
                        Padding(
                          padding: const EdgeInsets.only(left: 50, right: 50),
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person,
                                    color: Colors.teal.shade800),
                                // Set the color of the prefix icon to teal
                                hintText: 'Username',
                                labelText: 'Username',
                                hintStyle: TextStyle(color: Colors.teal[800]),
                                // Set the hint text color to red
                                filled: true,
                                // Set filled to true
                                fillColor: Colors.white,
                                // Set the background color to white
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 50, right: 50, top: 30),
                          child: TextField(
                            obscureText: showpass,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock,
                                  color: Colors.teal.shade800,),
                                suffixIcon: IconButton(onPressed: () {
                                  setState(() {
                                    if (showpass) {
                                      showpass = false;
                                    }
                                    else {
                                      showpass = true;
                                    }
                                  });
                                }, icon: Icon(showpass == true
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                  color: Colors.teal.shade800,),
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.teal[800]),
                                filled: true,
                                // Set filled to true
                                fillColor: Colors.white,
                                // Set the background color to white
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.only(right:50,left: 50),
                          child: ElevatedButton(onPressed: () {},
                            child: Text('Login', style: TextStyle(fontSize: 20)),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.teal[800], //Colors.teal[800]
                                minimumSize: Size(300, 50)
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        TextButton(onPressed: () {}, child: Text('Create a new User',
                          // style:TextStyle(color: Colors.teal[800],fontSize:20),),
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            color: Colors.teal[800],
                            textStyle: Theme
                                .of(context)
                                .textTheme
                                .titleMedium,
                          ),)
                        ),
                      ]
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}