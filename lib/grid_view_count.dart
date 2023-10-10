import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: Gridviewcount(),));
}
class Gridviewcount extends StatelessWidget{
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
      body: GridView.count(crossAxisCount: 3,
        children:
        List.generate(12, (index) {
          return Card(
            child: Column(
              children: [
                Expanded(
                    child: Image(image: AssetImage(image[index]),)),
                Row(
                  children: [
                    Text(name[index]),
                    SizedBox(width: 100,),
                  ],
                ),
              ],
            ),
          );
        },)
        ,),
    );
  }

}