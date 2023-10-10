import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Gridview(),
      ),
  ));
}
class Gridview extends StatelessWidget {
  var name = [
    "Aurora",
    "Luna",
    "Isabella",
    "Sophia",
    "Aria",
    "Amelia",
    "Olivia",
    "Evelyn",
    "Grace",
    "Scarlett",
    "Violet",
    "Penelope",
  ];

  // var image = [
  //   "assets/images (1).jpg",
  //   "assets/images (1).jpg",
  //   "assets/images (1).jpg",
  //   "assets/images (1).jpg",
  //   "assets/images (1).jpg",
  //   "assets/images (1).jpg",
  //   "assets/images (1).jpg",
  //   "assets/images (1).jpg",
  //   "assets/images (1).jpg",
  //   "assets/images (1).jpg",
  //   "assets/images (1).jpg",
  //   "assets/images (1).jpg",
  // ];
  var image = [
    "https://media.istockphoto.com/id/119889938/photo/waterfall-in-deep-forest.webp?b=1&s=170667a&w=0&k=20&c=LyTSAAgDTg7JYxQcDRU9nN2bIbYJ38vlGPmX60Ft7y0=",
    "https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://media.istockphoto.com/id/119889938/photo/waterfall-in-deep-forest.webp?b=1&s=170667a&w=0&k=20&c=LyTSAAgDTg7JYxQcDRU9nN2bIbYJ38vlGPmX60Ft7y0=",
    "https://media.istockphoto.com/id/119889938/photo/waterfall-in-deep-forest.webp?b=1&s=170667a&w=0&k=20&c=LyTSAAgDTg7JYxQcDRU9nN2bIbYJ38vlGPmX60Ft7y0=",
    "https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://media.istockphoto.com/id/119889938/photo/waterfall-in-deep-forest.webp?b=1&s=170667a&w=0&k=20&c=LyTSAAgDTg7JYxQcDRU9nN2bIbYJ38vlGPmX60Ft7y0=",
    "https://media.istockphoto.com/id/119889938/photo/waterfall-in-deep-forest.webp?b=1&s=170667a&w=0&k=20&c=LyTSAAgDTg7JYxQcDRU9nN2bIbYJ38vlGPmX60Ft7y0=",
    "https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://media.istockphoto.com/id/119889938/photo/waterfall-in-deep-forest.webp?b=1&s=170667a&w=0&k=20&c=LyTSAAgDTg7JYxQcDRU9nN2bIbYJ38vlGPmX60Ft7y0=",
    "https://media.istockphoto.com/id/119889938/photo/waterfall-in-deep-forest.webp?b=1&s=170667a&w=0&k=20&c=LyTSAAgDTg7JYxQcDRU9nN2bIbYJ38vlGPmX60Ft7y0=",
    "https://t4.ftcdn.net/jpg/05/55/87/51/360_F_555875138_WM9LmiuHati0cFp8X37e2UynFpEt4nVu.jpg",
    "https://media.istockphoto.com/id/119889938/photo/waterfall-in-deep-forest.webp?b=1&s=170667a&w=0&k=20&c=LyTSAAgDTg7JYxQcDRU9nN2bIbYJ38vlGPmX60Ft7y0=",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Grid View',
          style: GoogleFonts.merriweather(
            color: Colors.white,
            fontSize: 18.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue[600],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
        ),
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              elevation: 6,
              shadowColor: Colors.blue,
              color: Colors.red[100],
              child: Container(
                height: 250, // Adjust the height as needed
                child: Column(
                  children: [
                    Expanded(
                      child: Image(
                        image: NetworkImage(image[index]),
                        fit: BoxFit.cover, // Adjust the fit as needed
                      ),
                    ),
                    Container(
                      color: Colors.green[800],
                      //padding: EdgeInsets.all(8.0),
                      child: Container(
                        height: 35,
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align text and icon to the left and right edges
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Text(
                                name[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:8.0),
                              child: Icon(Icons.camera_alt_outlined,color: Colors.white,),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
