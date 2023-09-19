import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>
        MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: Listbuilder(),
        ),
  ));
}

class Listbuilder extends StatelessWidget{
  var name=['alexander','Najiya','Shamly','alexander','Najiya','Shamly','alexander','Najiya','Shamly','alexander','Najiya','Shamly',];
  var image=["data:image/jpeg;base64,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",
             "https://media.istockphoto.com/id/1132752246/photo/close-up-photo-beautiful-amazing-she-her-dark-skin-lady-arms-chest-eyes-closed-imagination.jpg?s=612x612&w=0&k=20&c=R8jfYpwGfehKlGeTxPkAO66Sz-tges_ultvGjNmJ5q0=",
             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxh-mIah96xq8_sv3VR_B5BqDwHctqp4Dle2PvdrTaZOVGNwdsD4lc8JB2oKhTgzqrANI&usqp=CAU",
    "data:image/jpeg;base64,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",
    "https://media.istockphoto.com/id/1132752246/photo/close-up-photo-beautiful-amazing-she-her-dark-skin-lady-arms-chest-eyes-closed-imagination.jpg?s=612x612&w=0&k=20&c=R8jfYpwGfehKlGeTxPkAO66Sz-tges_ultvGjNmJ5q0=",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxh-mIah96xq8_sv3VR_B5BqDwHctqp4Dle2PvdrTaZOVGNwdsD4lc8JB2oKhTgzqrANI&usqp=CAU",
    "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAHsAuQMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAABAAIEBQYDBwj/xAA4EAABAwMCBAQCCAYDAQAAAAABAAIDBAUREiEGMUFREyJhgXGhByMyQpGxwdEUFTNScuFT8PEl/8QAGgEAAgMBAQAAAAAAAAAAAAAAAAECAwUEBv/EACMRAAMAAgICAgIDAAAAAAAAAAABAgMREjEEIRNBMlEUIiP/2gAMAwEAAhEDEQA/APRmrqE0DCeF1meJAonkgAgBJI4SwkAkkkkAJLKbLI2Nhe9wa0cyeizF840oLc0MpyJ5Tz5hrf3RtIaTZqUCvM5uPK2uJbRuZAfRhJPuQVHj4+uFJOyGrmaXO5eKwAH3G3zUeaJ/HR6ogsK36QgJWxy0TQ92+nxMZ+G260Fj4mt15kMEMnhVTRkwSbOx3HcfBSVJkHLRdIFFJMiNKCcmlADSgU5AhADUxwyuhCaQmJkZ7VzwpD2rnhS2IswkkkoExJJJJAJJJJABTXuDGlzjho5lOPJUHFNc+np/Dj3c4HbulT0tkpnk9GU4uuM1zkc2EExtdhjc/PHdYa50k9HEJXCRzCfMHnktJquFXqbU0jGx89cUzSfwLsqHXR0wiOuaKbHQuwfhuVzJv7O3gkvRX2+mp6mkfK2HRMBkaXEH9lGFVPM2WkrIdTR9mQnV+KgTXJ9LO5tNGW7/AGdRIP5/JJza2ty+KKqa0HIcBqDfdN0kClvoY+YxO8GYOMYPlOfsdiFNbWva2N8U2J4sSRyA7gjqP1HJQG2+5O+1A52eoaR8lCmjqaWXzROaQc8sBJWhvE/tHunB/GDbzC1lWwRytYA5wO2oYB29cgj4+i1oIIyF802y+T0FVrgdp1uBIHLOV71wlc5rpa2z1MXhuzjIOQ7boV0RWzjyRxey9TSnIFTKhqanlNKAAmkolNKYDXBM0roeSagROKCJQUSQkUEQgBJJJIAR5Lz7jy6NtlW5z5OgOk759ML0FeJ/TFDJHxOxzidD6drmA8uoP5KGRbRbheqBQcR26qlxNbS85xrADsn0BVi9lPUgtprTTxlx/qOjDSfzWe4FoP4yeWSTOmPYbr0+goqeGNrpAxo7uOFnZcjmtI1sWNOdspuHeB6OSYVFYzIznTjYrb/y+kihEcUDGsHJoaMJtPVUjB5ZWHPZwKkmaMtyOXNVtt9li0uipqKSBoIEDBt0CzV2slLUh5fEM454WmuF0ttOSamrhi/zeAqKW/WapeY6a4wOcdsawq+NJ7RbynpnjnEFqfb61wbnTnI+C9K+h25zyxTUUsmqNrdTGnfTjHJZvjtgAgmwDh2hx7jdXP0LUr33G41BH1UbQ0H1JP6LS8em/ZleXKW0euIFFIrrM8agU4pqAGoEJyBQAwoJxTUxEwoIpJEgJJIoASKCKQCK8o+m2m1TWmqaRkCSJ46jkR+q9XXn/F9lnq6S5SVNXJI3+pFE5oIbg9OoKqzXxR0+Nh+Rt/oy/BDDTWZ87W5c97sD1GyN0np6h7hXSVFS9gyWh5DWgc8Ac1bcC07BZY2yAE6nZHutOLNSPILIQ12CMtHPPdZzrVmtM/0PL6G2x1jjVWqObwRJpyJCMuxnoT+i9StEh/lAc5xDmtAIJXaG2U1FS+FHG1jB0DQAD7JrGtbRSgdc4ULrbLJn0edXe1TXCoqa+amMkUbXy6dOpzmt54HquFDXUboM09rYIQ8xN1QAa/gf3AXpNsijfEWED4pSWimznwxscj0Ula0Jz7PL+I6X/wCLIWNIYHNcxp+7utf9DRhhsc7XuxUVNS6TSRzaAAN/Zc+MqaL+VTxtaAA1duELSx0tvq2k/VMBY3o0Zwr8OTWjlzYOe/Z6GgigtExgIJyaUABAooFADSgiUEwJRQRKCQwpIBFACRQSQAcqvrY2OlLZGFzHs5D4qemyMa9u/seyqyxznRf4+b4r39GHfTsttZURU40wufrYO2f95V3QTawMu3Qv1GWMjmL9Rzp2bj8VBpZ/DAb2O6zcsOezYw3Nrc9F3cHNjt8kpyQwEnCzMHFlA+2SeFFK4gu0tLdJdjnjKsKy90tI0CsqGRgjZpO5VFWXOx1UrZZqSZz2DykRkZUJL1DfRacJXGK5tleyGSLTg6XjGCrask8ONx39lnqbiOgMjYWa4XuPlY9hGfgpdwrfqu5I6KLXvQV67M/xDO+eAxsw4ueBhx9f9LYcKU7mUseoACOMNGOqprJaornUSfxDnhsWHDSeq2kETIImxxjDQu/Bhbap9Gb5XkKU4XZ1QKSRXaZQECiggAIFEoFMBuU1EoIAlpJZSSGBJJJABSSSyEAJJLIQygCuv4zbJCPulp+ayxlDsOC110AdQyg+n5hYqphlo5XYGqFxz/iuDydcjT8HfB6/ZM0OqGafcHG6abHdCPq7g6OM/dwuVNc2wjzHdS28QNbHpJcfZcamkaiyNL0RBb5aN+ZJHPdj7ShTvLpNJOd1Kqbq+d2lgIb3KrqidsbC1m8juZUpT3tld1s1/CkTWUUkwOXSSEH2/wClXgcs/wAKO02loP8Ae5XYfla2L8Eefzv/AFo7ZRXIOTgVYV7HoIZQQASgkgSgAFBIlNygCU0o5XJpTwUDHZSQSykAksJJ8bHyHDGk+qASG7ItY55wxpJ9ApsFEOcpz6BTQ1rGgNAA7KDvXRbOJvszF4c6niZE+M5nJaN+WMFVslK2eEhwB2Wnv9IZ6USMbqkiOoADcjr8lRMHlGFneS3VezU8WVEaRhLxbpIXPDCW9lkqoV0b9IlkwT/cvWrpRtnbkjdZmptZa4+XPsq5o6SgtkcwbmRzi7HUqfRUzp6nJyVNioXtZs3cq3t1D4LcuHmSpiR1sr6iOvgt7GNMUup2sndpA/8AFqv5XVAjSWOBHfChcO29zqz+Lc3yMBa3PUn/AF+a12kAeoXfgulBm58UVezKvD4nFsjS0joU4OWnkijlbiRgcPUZVbPaoi53hOMZ7YyF0LIn2clYGuitBTgV1fQzxb4D2927/JcQpbTKuLXYUEkCmIDkxFxTMp6Ezu05XQFcWro1IkdU+OGSQ+RpPr0XWiY12ouaDjllWLWjA26KDrRdGPkRYaJrd5DqPbopQaOQAAHZORCqbbOhSl0Bo82OyeeabH974o9UiQTuFV1lqa/LoCI3dvun9laBHGyjUqlpkppy9oytRQ1LWkOiJ9WjIVNUQPaSCw/gt88BN0g8wqf46+mXLyH9owlFQTTHywOI/wASryjsjiQZ/KP7W8z+y0DGjOMLoBgbKU4EuyFZ2/SOVPAyFrWMaGtaNgF05OSj3yT3SdzVxUOaVylGxwNyujUH/qEAMLcbdFxlgZJnW0H8/wAVId9pNPIppiaTKx9B/wAbj7qHPG+E4kGOyvyB+AVdct6ck9HbKyaZRkxpJtFQ8pmpJ65q45Gf/9k=",
    "https://media.istockphoto.com/id/1132752246/photo/close-up-photo-beautiful-amazing-she-her-dark-skin-lady-arms-chest-eyes-closed-imagination.jpg?s=612x612&w=0&k=20&c=R8jfYpwGfehKlGeTxPkAO66Sz-tges_ultvGjNmJ5q0=",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxh-mIah96xq8_sv3VR_B5BqDwHctqp4Dle2PvdrTaZOVGNwdsD4lc8JB2oKhTgzqrANI&usqp=CAU",
    "data:image/jpeg;base64,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",
    "https://media.istockphoto.com/id/1132752246/photo/close-up-photo-beautiful-amazing-she-her-dark-skin-lady-arms-chest-eyes-closed-imagination.jpg?s=612x612&w=0&k=20&c=R8jfYpwGfehKlGeTxPkAO66Sz-tges_ultvGjNmJ5q0=",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxh-mIah96xq8_sv3VR_B5BqDwHctqp4Dle2PvdrTaZOVGNwdsD4lc8JB2oKhTgzqrANI&usqp=CAU"];
  var phone=['9075462759','9075462759','9075462759','9075462759','9075462759','9075462759','9075462759','9075462759','9075462759','9075462759','9075462759','9075462759','9075462759','9075462759','9075462759','9075462759'];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Contacts',
        //style: TextStyle(color: Colors.white),
        style: GoogleFonts.merriweather(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
      ),
        backgroundColor: Colors.pink[800],),
      body: ListView.builder(
        itemCount:name.length,itemBuilder: (context,index){
        return  Card(
          color: Colors.pink[50],
          child: ListTile(
            leading:CircleAvatar(backgroundImage: NetworkImage(image[index]),),
            title:Text(name[index],style: GoogleFonts.merriweather(color: Colors.pink[800],fontWeight: FontWeight.bold),),
            subtitle: Text(phone[index]),
            trailing: Icon(Icons.call,color: Colors.pink[800],),
          ),
        );
      },
      ),
    );
  }
}