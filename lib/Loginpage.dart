import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Loginpage(),
    ),
  ));
}
class Loginpage extends StatefulWidget{
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool showpass=true;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text('Login Page',
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.teal[800],),
      body: Container(
        decoration:


        BoxDecoration(
            image: DecorationImage(image:NetworkImage("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAQEBAPDxAPDw8PDw8PDw8PDw8PDw8PFREWFhURFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLjcBCgoKDg0OFRAPFy0dFR0tLS0tLSstLS0tLS0tKystLS0rLS0tLS0tLS0tLS0tNy03LTc3LTctLTctNy0rNzctK//AABEIASwAqAMBIgACEQEDEQH/xAAaAAEBAQEBAQEAAAAAAAAAAAABAAIDBAcF/8QAIxABAQEBAAEEAwADAQAAAAAAAAERAhIDEyFRMUFhcZGxgf/EABkBAQEBAQEBAAAAAAAAAAAAAAABAgMEBf/EABkRAQEBAQEBAAAAAAAAAAAAAAARARIhAv/aAAwDAQACEQMRAD8A+oohl840aaAVqWoUVoKg16bpFxz8CjWNJiRrRTqlEOAtWpQUxL9lQKLDEAUlo8yBxHJKtSGcixha7SLJf0Ly4NczXWgWKfRkEOipVLYCLPnF7gNYmPcXuX6Cuijl51edCuqrj5U3qlK3U57UJXGqUEczv9M37CgNqgig4tQqitUXQJKHBTEJECkKIKwYVQCSFKBB59WpDmjKG+OQPNMakakGsxjxUjrjN5FjHirG8ECM8w4kCBQIiIDEgKYcEIKVKIVx8D4umoYjHPLcTUFzBhsPJRWdM6NEiqFhQRijGsQgwYcb5gRmKIYDWLFIqAhPMM5wUYG0DlgMVGQjhBSnUtGjKWJWtArRaLQaZqtAihn5EWg3YJyL0ZRV+E0ZSEZqaWCso4gc6Beh5fwYblOxjyM7FptTPmfMKY0JiooqQ0RoVagCWLBDKcZjcFLXMZa5opNiOCs2pWJVeQpajmjGTAVjPXLQEg8VGwIvKtTrWGuOb+aLmtSNHENM0a3jOBDGoiRVjeMyN4NZiH7KwVIcoV5KkcHBBICDABgWqUEZ3f38oCO3F1rHnnx8u3PejebWqMJ2DQU5a55/f6bwXMEhUjU5GmcDXibAYTXiCDx2rQKOB1MoGtLKgGhGAlFDAVWGRZvwK9U/E/wYuYJB2a0c1nGpAbjTnFqq3hnLPnT5i+LxRnqoXx+d1GbHXxPijzxwTreGfARlNyNTkIxI14teLU5t/EFzHPxPi3fSv1/wzi/X+xY546ehx861fSv8dOOMmUaz59NGGgbODDCAXimopGLBG7BgsE6xNTlC+vLTBIrEcCgcAGHFhitSN8/H4Y5a5o1jcaZ5rdqt4hYQsWLxFh1JEiOKQyDUYvKkbsWCRjFJWjyEGJuRFV4lT18iI4LDIm5TVwSRWK0UFjUgwyC4ZHSQc105it5jn8tzg4rStReCnMOmFDiwWkq1YsFMCpQIK0WELXikK+VP7EeddHlrnn+N8+mNZjnQ9E9L/DfjIReNeacuk9N18T4rG8+XKcY35Rucs3ghEzi8a3hBjGpGpGoRY5qN0UhGTVEREz01WQERkRB5+eTzPn/TUsXNmjEbkMb+AOilWtWsWAfJS656ZpEdUzGorWKwYaIBMZaAUNYrBRIsMVEFgwderGL2JcdYnKd1BXF05kZnw6eKMZjUwqcrBsYaYLSEZumMdep9MXroZr0GV5vn7OT/ACHT0ZBK5UYrVdvONzqRw5jfSFV9Ue452MDO/Wu99aMd+pv4ctWCda2dcwI66XLEDVb9Hf8AxyMuIZrv10z7kcrWaq9O99T6Y771z1B1rarCzf6iLZ9mepIvbhvpRU9HvT+tysezHSQXK1zTayVbWuVbY6RnWSsSMpHABDUQrnp5FQxW2MagGh8tAhgRSwMtO0Q1FPkdEhnKrlMaZ8WueRplz7rvXHuDOhSKRq3ERlIgYiSDjVDUMxCtRnoVT5bsZ4dAxixYaqKuY1ghgGVqVmKflY1jpixQ1FAvJahg5+2xeXfpmRSY5yQzlqwYg1IlALH/2Q=="),
            fit: BoxFit.fill)
        ),


        // BoxDecoration(                      //to give different gradients of colors
        //       gradient:LinearGradient(
        //         begin: Alignment.topLeft,
        //         end: Alignment.bottomRight,
        //         colors: [
        //           Colors.teal.shade50,
        //           Colors.teal.shade100,
        //           Colors.teal.shade200,
        //     ]
        //   )
        // ),


        child:Center(
          child: Column(
          children:[
            SizedBox(height:50,),
            Image(image:AssetImage('assets/w_icon.png'),height:60 ,width: 60,),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person,
                      color: Colors.teal.shade800),// Set the color of the prefix icon to teal
                  hintText: 'Username',
                    hintStyle: TextStyle(color: Colors.teal[800]), // Set the hint text color to red
                    filled: true,                // Set filled to true
                    fillColor: Colors.white,    // Set the background color to white
                    border:OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50,top: 30),
              child: TextField(
                obscureText: showpass,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password_sharp,
                  color: Colors.teal.shade800,),
                    suffixIcon: IconButton(onPressed:(){
                      setState(() {
                        if(showpass){
                          showpass=false;
                        }
                        else{
                          showpass=true;
                        }
                      });
                    },
                      icon: Icon(showpass==true ? Icons.visibility_off : Icons.visibility),
                      color: Colors.teal.shade800,),
                    hintText: "Password",
                    hintStyle: TextStyle(color:Colors.teal[800]),
                    filled: true,                // Set filled to true
                    fillColor: Colors.white,    // Set the background color to white
                    border:OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                ),
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){}, child: Text('Login',style: TextStyle(fontSize: 20)),
              style:ElevatedButton.styleFrom(backgroundColor:Colors.teal[800],    //Colors.teal[800]
              //minimumSize: Size(300,50)
              ) ,
            ),
            SizedBox(height: 30,),
            TextButton(onPressed: (){}, child: Text('Create a new User',
              // style:TextStyle(color: Colors.teal[800],fontSize:20),),
              style: GoogleFonts.roboto(
                fontSize: 20,
               color:Colors.teal[800],
                textStyle: Theme.of(context).textTheme.titleMedium,
              ),)
            ),
          ]
         ),
        ),
      ),
    );
  }
}