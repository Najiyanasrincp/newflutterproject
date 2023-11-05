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
  int index=0;

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
              actions: [

              ],
              bottom: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                title: Container(
                  decoration: BoxDecoration(color: Colors.grey[100],
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
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8,bottom: 8),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images (1).jpg'), // Replace with your image asset path
                        // backgroundColor: Colors.pink,
                        // child: Text(
                        //   "JD",
                        //   style: TextStyle(
                        //     color: Colors.white,
                        //   ),
                        // ),
                      ),
                      title: Text("John Doe",style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text("Good to know"),
                      trailing: Text("Sunday"),
                    ),
                  );
                },
                childCount: 12,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.grey, // this will work when the type is fixed
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey[600],
          currentIndex: index,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chats",
                backgroundColor: Colors.pink // this will work when the type is shifting
            ),
            BottomNavigationBarItem(icon: Icon(Icons.add_circle_outlined),label: "Channels",backgroundColor: Colors.green),
            BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "Profie",backgroundColor: Colors.blueAccent),
          ]) ,
    );
  }
}