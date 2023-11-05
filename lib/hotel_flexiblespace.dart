import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: HotelApp(),
      )));
}

class HotelApp extends StatelessWidget {
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

                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                    padding: EdgeInsets.only(
                      top: 30,
                    ),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 10),
                        child: Image(
                          image: NetworkImage(
                              "https://assets.simpleviewinc.com/simpleview/image/up"
                                  "load/c_limit,h_1200,q_75,w_1200/v1/"
                                  "clients/milwaukee/VM_Hilton_Plaza_Suite_King_Room_9b5d673a"
                                  "-95c6-445e-ad6b-5ae85e260f18.jpg"),
                        ),
                      ),
                      Column(children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Awesome room near Kakkanad",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              )),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, top: 5),
                            child: Text(
                              "Kakkanad Kochi",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Text("(250 reviews)")
                              ],
                            ),
                          ),
                        )
                      ]
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 10),
                        child: Image(
                          image: NetworkImage(
                              "https://media.istockphoto.com/id/517992284/photo/modern-b"
                                  "edroom-style-interior.jpg?s=612x612&w=0&k=20&c=ErlC7ZOcKWZ1VRdmVWfiNpzsWZ30-KNzPsQFMCcuwgQ="),
                        ),
                      ),
                      Column(children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Beautifull Room",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              )),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, top: 5),
                            child: Text(
                              "Kakkanad Kochi",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Text("(230 reviews)")
                              ],
                            ),
                          ),
                        )
                      ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 15, right: 15, bottom: 10),
                        child: Image(
                          image: NetworkImage(
                              "https://media.istockphoto.com/id/991205262/photo/"
                                  "feminine-bedroom-interior-with-a-double-bed-with-dotted-sheets-armchair-art-coll"
                                  "ection-and.jpg?s=612x612&w=0&k=20&c=Wd0P4B4HQCN6nd1zzFYS6_Cx_ZA0aeV-UIqOtj0jxJ8="),
                        ),
                      ),

                      Column(children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Peacefull Room",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              )),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, top: 5),
                            child: Text(
                              "Kakkanad Kochi",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Text("(200 reviews)")
                              ],
                            ),
                          ),
                        )
                      ]), Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 10),
                        child: Image(
                          image: NetworkImage("https://media.istockphoto.com/id/627183120/photo/c"
                              "lassic-minimal-bedroom-with-walk-in-closet."
                              "?s=612x612&w=0&k=20&c=0kpv_Cx4JS4DjpHDtXWXEHsN4_r4OBnb2dQX3ini6zM="),
                        ),
                      ),
                      Column(children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Vintage room",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              )),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, top: 5),
                            child: Text(
                              "Kakkanad Kochi",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Text("(230 reviews)")
                              ],
                            ),
                          ),
                        )
                      ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 15, right: 15, bottom: 10),
                        child: Image(
                          image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRutTYCfucvPNIWt8gYF1CUDhMwFAV9GMpWsw&usqp=CAU"),
                        ),
                      ),

                      Column(children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Aesthetic Room",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              )),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, top: 5),
                            child: Text(
                              "Kakkanad Kochi",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Icon(Icons.star_border, color: Colors.black),
                                Text("(200 reviews)")
                              ],
                            ),
                          ),
                        )
                      ]),
                    ]
                    )

                ),
              )
            ]
            ),

          )
        ],
      ),
    );
  }
}
