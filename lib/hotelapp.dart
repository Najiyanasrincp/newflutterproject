import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    ),
  ));
}

class MyHomePage extends StatelessWidget {
  var name=['alexander','Najiya','Shamly','alexander','Najiya','Shamly','alexander','Najiya','Shamly','alexander'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            backgroundColor: Colors.cyan,
            leading: Icon(Icons.menu),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(0),
                ),
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        "Type your Location",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9.0,right: 9),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search location",
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(left:17.0,right: 8),
                              child: Icon(Icons.search, color: Colors.cyan),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.only(right: 30,left: 30,top: 22),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 88,
                            height: 73, // Increased the height to accommodate the text
                            decoration: BoxDecoration(
                              color: Colors.pinkAccent[400],
                              borderRadius: BorderRadius.circular(8), // Adjust the radius value as needed
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.hotel, // Replace with the icon you want
                                  color: Colors.white, // Icon color
                                  size: 20, // Icon size
                                ),
                                Text(
                                  "Hotel",
                                  style: TextStyle(
                                    color: Colors.white, // Text color
                                    fontSize: 12, // Text size
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 88,
                            height: 73, // Increased the height to accommodate the text
                            decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(8), // Adjust the radius value as needed
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.restaurant, // Replace with the icon you want
                                  color: Colors.white, // Icon color
                                  size: 20, // Icon size
                                ),
                                Text(
                                  "Restaurent",
                                  style: TextStyle(
                                    color: Colors.white, // Text color
                                    fontSize: 12, // Text size
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 88,
                            height: 73, // Increased the height to accommodate the text
                            decoration: BoxDecoration(
                              color: Colors.orange[600],
                              borderRadius: BorderRadius.circular(8), // Adjust the radius value as needed
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.local_cafe, // Replace with the icon you want
                                  color: Colors.white, // Icon color
                                  size: 20, // Icon size
                                ),
                                Text(
                                  "Cafe",
                                  style: TextStyle(
                                    color: Colors.white, // Text color
                                    fontSize: 12, // Text size
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      ListView.builder(
                        shrinkWrap: true, // Ensure it only takes the space it needs
                        itemCount: 1, // Replace with the actual number of items
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: 200,
                              width: 200,
                              color: Colors.yellow,
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 20, // Position at the top
                                    right: 20, // Position at the right
                                    child: Icon(
                                      Icons.star,
                                      size: 40, // Adjust the size of the star icon
                                      color: Colors.black, // Fill color of the star
                                      // You can customize the border using a Container as well
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 20, // Position at the bottom
                                    right: 20, // Position at the right
                                    child: Container(
                                      width: 55, // Width of the inner box
                                      height: 40, // Height of the inner box
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            );

                          },
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
