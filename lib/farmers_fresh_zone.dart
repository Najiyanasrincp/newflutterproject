import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'carousel.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>
        MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: farmersfresh(),
        ),
  ));
}
class farmersfresh extends StatelessWidget{
  var img=[
     "https://images.news18.com/ibnlive/uploads/2023/07/tamoto-16896772223x2.png?impolicy=website&width=360&height=240"
    ,"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWJW-SwJr7bB8zkhb_LmwgQtipygWDZo71UUUI0Pwa_BnZzCJyO5p5cD-fFtrydxTT7js&usqp=CAU"
    ,"https://3.imimg.com/data3/NL/HS/MY-9492477/onions-red-white-500x500.jpg",
    "https://png.pngtree.com/background/20230614/original/pngtree-all-pumpkins-on-a-leafy-background-picture-image_3524190.jpg"
    ,"https://t3.ftcdn.net/jpg/02/12/60/46/360_F_212604691_928KQ3er77kxxgFyiGyoOhFIHwxFyptx.jpg",
    "https://images.news18.com/ibnlive/uploads/2023/07/tamoto-16896772223x2.png?impolicy=website&width=360&height=240"
    ,"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWJW-SwJr7bB8zkhb_LmwgQtipygWDZo71UUUI0Pwa_BnZzCJyO5p5cD-fFtrydxTT7js&usqp=CAU"
    ,"https://3.imimg.com/data3/NL/HS/MY-9492477/onions-red-white-500x500.jpg",
    "https://png.pngtree.com/background/20230614/original/pngtree-all-pumpkins-on-a-leafy-background-picture-image_3524190.jpg"
    ,"https://t3.ftcdn.net/jpg/02/12/60/46/360_F_212604691_928KQ3er77kxxgFyiGyoOhFIHwxFyptx.jpg",
    "https://images.news18.com/ibnlive/uploads/2023/07/tamoto-16896772223x2.png?impolicy=website&width=360&height=240"
    ,"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWJW-SwJr7bB8zkhb_LmwgQtipygWDZo71UUUI0Pwa_BnZzCJyO5p5cD-fFtrydxTT7js&usqp=CAU"
    ,"https://3.imimg.com/data3/NL/HS/MY-9492477/onions-red-white-500x500.jpg",
    "https://png.pngtree.com/background/20230614/original/pngtree-all-pumpkins-on-a-leafy-background-picture-image_3524190.jpg"
    ,"https://t3.ftcdn.net/jpg/02/12/60/46/360_F_212604691_928KQ3er77kxxgFyiGyoOhFIHwxFyptx.jpg",

  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     bottomNavigationBar: BottomNavigationBar(
       //backgroundColor: Colors.orange, // this will work when the type is fixed
         type: BottomNavigationBarType.fixed,
         selectedItemColor: Colors.greenAccent[700],
         unselectedItemColor: Colors.greenAccent[700],
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",
               backgroundColor: Colors.pink // this will work when the type is shifting
           ),
           BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart",backgroundColor: Colors.green),
           BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "Account",backgroundColor: Colors.blueAccent),
         ]) ,
     body:CustomScrollView(
       slivers: [
         SliverAppBar(
           floating: true,
           pinned: true,
           // flexibleSpace: Container(color: Colors.yellow,),
           backgroundColor: Colors.greenAccent[700],
           title: Text("FARMERS FRESH ZONE"),
           actions: [
             Row(
               children: [
                 IconButton(onPressed: (){},
                     icon: Icon(Icons.location_on_outlined)
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 6.0),
                   child: Text("kochi"),
                 )
               ],
             ),
           ],
           bottom: AppBar(
             backgroundColor: Colors.greenAccent[700],
             elevation: 0,
             title: Container(
               decoration: BoxDecoration(color: Colors.white,
                 borderRadius: BorderRadius.circular(18.0), // Add border radius here
               ),
               child: Padding(
                 padding: const EdgeInsets.only(left: 8.0),
                 child: TextField(
                   decoration: InputDecoration(
                       hintText: "Search something",
                     prefixIcon: Icon(Icons.search)
                   ),
                 ),
               ),
             ),
           ),
         ),
         SliverList(
           delegate: SliverChildListDelegate(
             [
               Padding(
                 padding: const EdgeInsets.only(right: 18.0, left: 18, top: 8, bottom: 8),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container(
                       decoration: BoxDecoration(
                         color: Colors.white,
                         border: Border.all(color: Colors.greenAccent),
                         borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
                       ),
                       height: 26,
                       width: 100,
                       child: Center(child: Text("Vegetables",
                         style: TextStyle(color: Colors.green),
                       )
                       ),
                     ),
                     Container(
                       decoration: BoxDecoration(
                         color: Colors.white,
                         border: Border.all(color: Colors.greenAccent),
                         borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
                       ),
                       height: 26,
                       width: 100,
                       child: Center(child: Text("Fruits",
                         style: TextStyle(color: Colors.green),
                       )
                       ),
                     ),
                     Container(
                       decoration: BoxDecoration(
                         color: Colors.white,
                         border: Border.all(color: Colors.greenAccent),
                         borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
                       ),
                       height: 26,
                       width: 100,
                       child: Center(child: Text("Exotic Cuts",
                         style: TextStyle(color: Colors.green),
                       )
                       ),
                     ),
                   ],
                 ),
               ),
               SizedBox(height: 8,),
               Container(
                 child: CarouselSlider(
                   options: CarouselOptions(
                     autoPlay: true,
                     aspectRatio: 2.0,
                     enlargeCenterPage: true,
                     enlargeStrategy: CenterPageEnlargeStrategy.height,
                   ),
                   items: imageSliders,
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
                 child: Container(
                   decoration: BoxDecoration(
                     border: Border.all(color: Colors.black),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(right: 22.0,left: 22,bottom: 5),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Column(
                           children: [
                             IconButton(onPressed: (){}, icon: Icon(Icons.timer,size: 20,),),
                             Text("30 mins policy"),
                           ],
                         ),
                         Column(
                           children: [
                             IconButton(onPressed: (){}, icon: Icon(Icons.spatial_tracking,size: 20,),),
                             Text("Tracability"),
                           ],
                         ),
                         Column(
                           children: [
                             IconButton(onPressed: (){}, icon: Icon(Icons.home_work,size: 20,),),
                             Text("Local Surrounding"),
                           ],
                         ),


                       ],
                     ),
                   ),
                 ),
               ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,top: 14,bottom: 16),
                child: Text("Shop by Category",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              )
             ],
           ),
         ),
         SliverPadding(
           padding: EdgeInsets.symmetric(horizontal: 10),
           sliver: SliverGrid(
             gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
               maxCrossAxisExtent: 150,
               mainAxisSpacing: 17,
               crossAxisSpacing: 5,
               childAspectRatio: 1 / 0.9,
             ),
             delegate: SliverChildBuilderDelegate(
                   (BuildContext context, int index) {
                 return Column(
                   children: [
                     Container(
                       decoration: BoxDecoration(
                         boxShadow: [
                           BoxShadow(
                             color: Colors.black54,
                             blurRadius: 10, // Blur radius of the shadow
                             spreadRadius: 0, // Spread radius of the shadow
                           ),
                         ],
                       ),
                       child: Card(
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10.0),
                           // Adjust the radius as needed
                         ),
                         child: ClipRRect(
                           borderRadius: BorderRadius.circular(10.0),
                           child: Image.network(
                             img[index],
                             fit: BoxFit.cover, // Adjust the BoxFit as needed
                           ),
                         ),
                       ),
                       height: 80,
                       width: 120,
                     ),
                     Text("Vegetable")
                   ],
                 );
               },
               childCount: 15, // Replace with the number of grid items you need
             ),
           ),
         )


       ],
     ) ,
   );
  }

}