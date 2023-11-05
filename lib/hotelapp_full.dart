import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:icon_decoration/icon_decoration.dart';

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
  var image=[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXH4-rZ3LQsvxZwMvlbfHXfS4HyZt8Vd0GNA&usqp=CAU",
    "https://t3.ftcdn.net/jpg/02/71/08/28/360_F_271082810_CtbTjpnOU3vx43ngAKqpCPUBx25udBrg.jpg",
    "https://images.unsplash.com/photo-1611892440504-42a792e24d32?auto=format&fit=crop&q=60&w=400&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWwlMjByb29tfGVufDB8fDB8fHww",
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUT8dYaaE0WmVKdinibCQVJDDMckpx4rYE7ZHSIfVPnYkxSRixnOdHBbmyGrPzQz6euLo&usqp=CAU",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 180.0,
            backgroundColor: Colors.cyan,
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                )),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              )
            ],
            floating: true,
            flexibleSpace: ListView(
              children: [
                const SizedBox(
                  height: 70.0,
                ),
                const Text(
                  "Type your Location",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Container(
                  margin:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40.0)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Kakkanad , Kochi",
                      border: InputBorder.none,
                      icon: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.search)),
                    ),
                  ),
                )
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30,left: 30,top: 22),
                      child: Row(
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0,right: 18),
                      child: ListView.builder(
                        shrinkWrap: true, // Ensure it only takes the space it needs
                        itemCount: 4, // Replace with the actual number of items
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Container(
                                height: 230,
                                width: 390,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(image[index]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                        top: 20, // Position at the top
                                        right: 20, // Position at the right
                                        child: DecoratedIcon(
                                          icon: Icon(Icons.star, color: Colors.black),
                                          decoration: IconDecoration(border: IconBorder(
                                              color: Colors.white
                                          )),
                                        )
                                    ),
                                    Positioned(
                                      bottom: 20, // Position at the bottom
                                      right: 20, // Position at the right
                                      child: Container(
                                        width: 55, // Width of the inner box
                                        height: 40, // Height of the inner box
                                        color: Colors.white,
                                        child: Center(
                                          child: Text(
                                            "\$40",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 9.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0,bottom: 7),
                                      child: Text("Awesome room near kakkanad",style: TextStyle(fontSize: 19),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 8.0),
                                      child: Text("kakkanad,kochi"),
                                    ),
                                    Row(
                                      children: [
                                        for (int i = 0; i < 5; i++)
                                          Icon(
                                            Icons.star,
                                            size: 20,
                                            color: Colors.green,
                                          ),
                                        Text(
                                          "(220 reviews)",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20,)
                                  ],
                                ),
                              )
                            ],
                          );

                        },
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
