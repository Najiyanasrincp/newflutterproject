import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';



void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>
        MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: sliverss(),
        ),
  ));
}
class sliverss extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              floating: true,
              pinned: true,
              backgroundColor: Colors.white,
              title: Row(
                children: [
                  Text("Conversations", style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      // Handle button tap here
                    },
                    child: Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Colors.pink[50],
                        borderRadius: BorderRadius.circular(7.5),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.add, color: Colors.pink,size: 18,),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0,right: 4),
                            child: Text("Add New", style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),


              // title: Row(
              //   children: [
              //     Text("Conversations", style: TextStyle(color: Colors.black)),
              //     Spacer(),
              //     Container(
              //       decoration: BoxDecoration(
              //         color: Colors.pink[50], // Background color
              //         borderRadius: BorderRadius.circular(5.0),
              //       ),
              //       child: TextButton.icon(
              //         onPressed: () {
              //           // Handle button tap here
              //         },
              //         icon: Icon(
              //           Icons.add,
              //           color: Colors.pink,
              //           size: 13,
              //         ),
              //         label: Text(
              //           "Add New",
              //           style: TextStyle(color: Colors.black,fontSize: 13.5,fontWeight: FontWeight.bold),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),

              // title: Row(
              //   children: [
              //     Text("Conversations", style: TextStyle(color: Colors.black)),
              //     Spacer(),
              //     Container(
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(6.0),
              //       ),
              //       child: ElevatedButton(
              //         onPressed: () {
              //           // Handle button tap here
              //         },
              //         style: ElevatedButton.styleFrom(
              //           primary: Colors.pink[50], // Background color
              //         ),
              //         child: Text(
              //           "ADD NEW",
              //           style: TextStyle(
              //             color: Colors.black, // Text color for "ADD"
              //             fontWeight: FontWeight.bold,
              //             fontSize: 8// Make "ADD" bold
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),



              actions: [

              ],
              bottom: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                title: Container(
                  decoration: BoxDecoration(color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(15.0), // Add border radius here
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextField(
                      decoration: InputDecoration(hintText: "Search.....",
                          prefixIcon: Icon(Icons.search),
                        border: InputBorder.none, // Remove the border
                        focusedBorder: InputBorder.none, // Remove the focused border
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverList(delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0,right: 4,left: 0),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        // Circular avatar for profile picture
                        backgroundColor: Colors.pink, // Background color of the avatar
                        child: Text(
                          "JD", // Initials or profile picture
                          style: TextStyle(
                            color: Colors.white, // Color of the text in the avatar
                          ),
                        ),
                      ),
                      title: Text("John Doe"), // Name
                      subtitle: Text("Subtitle Text"), // Subtitle
                      trailing: Text("Sunday"), // Trailing text
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0,right: 4,left: 0),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        // Circular avatar for profile picture
                        backgroundColor: Colors.pink, // Background color of the avatar
                        child: Text(
                          "JD", // Initials or profile picture
                          style: TextStyle(
                            color: Colors.white, // Color of the text in the avatar
                          ),
                        ),
                      ),
                      title: Text("John Doe"), // Name
                      subtitle: Text("Subtitle Text"), // Subtitle
                      trailing: Text("Monday"), // Trailing text
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0,right: 4,left: 0),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        // Circular avatar for profile picture
                        backgroundColor: Colors.pink, // Background color of the avatar
                        child: Text(
                          "JD", // Initials or profile picture
                          style: TextStyle(
                            color: Colors.white, // Color of the text in the avatar
                          ),
                        ),
                      ),
                      title: Text("John Doe"), // Name
                      subtitle: Text("Subtitle Text"), // Subtitle
                      trailing: Text("Tuesday"), // Trailing text
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0,right: 4,left: 0),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        // Circular avatar for profile picture
                        backgroundImage: AssetImage('assets/images (1).jpg'), // Replace with your image asset path
                      ),
                      title: Text("John Doe"), // Name
                      subtitle: Text("Subtitle Text"), // Subtitle
                      trailing: Text("Friday"), // Trailing text
                    ),
                  ),

                ]
            ))
          ],
        ),
      ),
    );
  }
}