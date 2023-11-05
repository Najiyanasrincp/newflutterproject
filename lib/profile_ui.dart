import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
        home: Profileui(),
      )
  )
  );
}
class Profileui extends StatefulWidget{
  @override
  State<Profileui> createState() => _ProfileuiState();
}

class _ProfileuiState extends State<Profileui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child:
          Container(
            color: Colors.grey[100],
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 25),
                      child: Icon(Icons.arrow_back),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left:250,top: 22),
                        child: Icon(Icons.menu),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Container(decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100), // Add border radius here
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 20, // Blur radius of the shadow
                        spreadRadius:20, // Spread radius of the shadow
                      ),
                    ],
                  ),
                      width: 130,height: 130,
                      child: ClipRRect(borderRadius: BorderRadius.circular(100),
                          child: Image(image: AssetImage("assets/images (1).jpg"),fit: BoxFit.cover,)
                      )
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 45,top: 30,right: 45),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(image: NetworkImage("https://ww2.freelogovectors.net/wp-content"
                              "/uploads/2023/03/facebook-logo-new-2019-freelogovectors.net_.png"),width: 60,height: 60,),
                          Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/"
                              "thumb/5/53/Google_%22G%22_Logo.svg/1024px-Google_%22G%22_Logo.svg.png"),width: 43,height: 43,),
                          Image(image: NetworkImage("https://iconape.com/wp-content/png_logo_"
                              "vector/twitter-red-canada-logo.png"),width: 43,height: 43,),
                          Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/WLA_icon_instagram.svg/300px-WLA_icon_instagram.svg.png"),width: 55,height: 55,),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 20,),
                        Text("Chromicle",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                        Text("@amFOSS",style: TextStyle(color: Colors.black),),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(right: 15,left: 15),
                          child: Center(
                            child: Text("Mobile App development and Open source enthusiastic",
                              style: TextStyle(color: Colors.black,fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),


                  ],
                ),SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(80),
                    // boxShadow: [
                    //   BoxShadow(offset: Offset(0,5),
                    //   color: Colors.grey.withOpacity(.2) )
                    // ],
                  ),
                  child: Column(
                    children: [
                      Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.grey[300],),
                        child: ListTile(
                          title: Text("Privacy",style: TextStyle(color: Colors.black,fontSize: 18),),
                          leading: Icon(Icons.person_3_outlined,color: Colors.black,),
                          trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,),
                        ),width: 300,
                      ),
                      SizedBox(height: 20,),
                      Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color:Colors.grey[300],),
                        child: ListTile(
                          title: Text("Purchase History",style: TextStyle(color: Colors.black,fontSize: 18),),
                          leading: Icon(Icons.history,color: Colors.black,),
                          trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,),
                        ),width: 300,
                      ),
                      SizedBox(height: 20,),
                      Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.grey[300],),
                        child: ListTile(
                          title: Text("Help and Support",style: TextStyle(color: Colors.black,fontSize: 18),),
                          leading: Icon(Icons.help,color: Colors.black,),
                          trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,),
                        ),width: 300,
                      ),
                      SizedBox(height: 20,),
                      Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.grey[300],),
                        child: ListTile(
                          title: Text("Settings",style: TextStyle(color: Colors.black,fontSize: 18),),
                          leading: Icon(Icons.settings,color: Colors.black,),
                          trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,),
                        ),width: 300,
                      ),
                      SizedBox(height: 20,),
                      Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.grey[300],),
                        child: ListTile(
                          title: Text("Invite a friend",style: TextStyle(color: Colors.black,fontSize: 18),),
                          leading: Icon(Icons.insert_invitation,color: Colors.black,),
                          trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,),
                        ),width: 300,
                      ),
                      SizedBox(height: 20,),
                      Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.grey[200],),
                        child: ListTile(
                          title: Text("Scheduled content",style: TextStyle(color: Colors.black,fontSize: 18),),
                          leading: Icon(Icons.timer,color: Colors.black,),
                          trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,),
                        ),width: 300,
                      ),
                      SizedBox(height: 20,),
                      Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.blueGrey[100],),
                        child: ListTile(
                          title: Text("Purchase History"),
                          leading: Icon(Icons.history),
                          trailing: Icon(Icons.arrow_forward),
                        ),width: 300,
                      ),
                      SizedBox(height: 20,),
                      Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.blueGrey[100],),
                        child: ListTile(
                          title: Text("Purchase History"),
                          leading: Icon(Icons.history),
                          trailing: Icon(Icons.arrow_forward),
                        ),width: 300,
                      ),
                    ],
                  ),

                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}