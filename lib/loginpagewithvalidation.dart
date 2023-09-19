import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newflutterproject/Homepage.dart';

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
        //style: TextStyle(color: Colors.white),
        style: GoogleFonts.merriweather(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
      ),
        backgroundColor: Colors.pink[800],),
      backgroundColor: Colors.pink[50],
      body: SingleChildScrollView(
        child: Container(

          //decoration:
          // BoxDecoration(
          //     image: DecorationImage(image: NetworkImage(
          //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScbxP7KnJ5Gq3vppBypxo8tWAwIvEiigw_1A&usqp=CAU"
          //     ),
          //         fit: BoxFit.fill
          //     )
          // ),

          child: Center(
            child: Form(
              key: formkey,
              child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Image(image: AssetImage('assets/wpinkicon50.png'),
                      height: 80,
                      width: 60,),
                    SizedBox(height: 40,),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person,
                                color: Colors.pink.shade800),
                            // Set the color of the prefix icon to teal
                            hintText: 'Username',
                            //hintStyle: TextStyle(color: Colors.pink[800]),
                            hintStyle: GoogleFonts.merriweather(color: Colors.pink[800]),
                            labelText: 'Username',
                            //labelStyle: TextStyle(color: Colors.pink[800]),
                            labelStyle: GoogleFonts.merriweather(color: Colors.pink[800]),
                            // Set the hint text color to red
                            filled: true,
                            // Set filled to true
                            fillColor: Colors.white,
                            // Set the background color to white
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                            )
                        ),
                        validator: (uname){
                          if(uname!.isEmpty || !uname.contains("@") || !uname.contains('.')){
                            return "please enter valid username";
                          }
                          else{
                            return null;
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 50, right: 50, top: 30),
                      child: TextFormField(
                        obscureText: showpass,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_rounded,
                              color: Colors.pink.shade800,),
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
                              color: Colors.pink.shade800,),
                            hintText: "Password",
                            //hintStyle: TextStyle(color: Colors.pink[800]),
                            hintStyle:GoogleFonts.merriweather(color: Colors.pink[800]),
                            filled: true,
                            // Set filled to true
                            fillColor: Colors.white,
                            // Set the background color to white
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))
                        ),
                        validator: (password){
                          if (password!.isEmpty || password.length<6){
                            return "please enter valid password";
                          }
                          else{
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left:50,right:50),
                      child: ElevatedButton(onPressed: () {
                        final valid=formkey.currentState!.validate();
                        if(valid){
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>Homepage()));
                        }
                        else{
                          return null;
                        }
                      },
                        child: Text('Login',
                          //style: TextStyle(fontSize: 20)
                            style:GoogleFonts.merriweather(color: Colors.white,fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink[800], //Colors.teal[800]
                            minimumSize: Size(300, 50),
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    TextButton(onPressed: () {}, child: Text('Create a new User',
                      // style:TextStyle(color: Colors.teal[800],fontSize:20),),
                      style: GoogleFonts.merriweather(
                        fontSize: 18,
                        color: Colors.pink[800],
                        textStyle: Theme.of(context).textTheme.titleMedium,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                    ),
                  ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}