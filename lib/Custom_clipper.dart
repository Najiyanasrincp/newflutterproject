import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter custom clipper example"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          ClipPath(
            clipper: SideCutClipper(),
            child: Container(
              height: 600,
              width: 500  ,
              color: Colors.pink,
              child: Center(child: Text("SideCutClipper()")),
            ),
          ),
          SizedBox(height: 10,),
          ClipPath(
            clipper: MultipleRoundedCurveClipper(),
            child: Container(
              height: 100,
              color: Colors.pink,
              child: Center(child: Text("MultipleRoundedCurveClipper()")),
            ),
          ),
          SizedBox(height: 20.0,),
          ClipPath(
            clipper: MultiplePointedEdgeClipper(),
            child: Container(
              height: 100,
              color: Colors.green,
              child: Center(child: Text("MultiplePointedEdgeClipper()")),
            ),
          ),
          SizedBox(height: 20.0,),
          ClipPath(
            clipper: OctagonalClipper(),
            child: Container(
              height: 220,
              color: Colors.red,
              child: Center(child: Text("OctagonalClipper()")),
            ),
          ),
          SizedBox(height: 10.0,),
          ClipPath(
            clipper: HexagonalClipper(),
            child: Container(
              height: 220,
              color: Colors.blueAccent,
              child: Center(child: Text("HexagonalClipper()")),
            ),
          ),
          SizedBox(height: 10.0,),
          ClipPath(
            clipper: HexagonalClipper(reverse: true),
            child: Container(
              height: 220,
              color: Colors.orangeAccent,
              child: Center(child: Text("HexagonalClipper(reverse: true)")),
            ),
          ),
          SizedBox(height: 10.0,),
          ClipPath(
            clipper: ParallelogramClipper(),
            child: Container(
              height: 220,
              color: Colors.pinkAccent,
              child: Center(child: Text("ParallelogramClipper()")),
            ),
          ),
          SizedBox(height: 10.0,),
          ClipPath(
            clipper: DiagonalPathClipperOne(),
            child: Container(
              height: 120,
              color: Colors.red,
              child: Center(child: Text("DiagonalPathClipper()")),
            ),
          ),
          SizedBox(height: 10.0,),
          ClipPath(
            clipper: DiagonalPathClipperTwo(),
            child: Container(
              height: 120,
              color: Colors.pink,
              child: Center(child: Text("DiagonalPathClipper()")),
            ),
          ),
          SizedBox(height: 10.0,),
          ClipPath(
            clipper: WaveClipperOne(),
            child: Container(
              height: 120,
              color: Colors.deepPurple,
              child: Center(child: Text("WaveClipperOne()")),
            ),
          ),
          SizedBox(height: 10.0,),
          ClipPath(
            clipper: WaveClipperOne(reverse: true),
            child: Container(
              height: 120,
              color: Colors.deepPurple,
              child: Center(child: Text("WaveClipperOne(reverse: true)")),
            ),
          ),
          SizedBox(height: 10.0,),
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              height: 120,
              color: Colors.orange,
              child: Center(child: Text("WaveClipperTwo()")),
            ),
          ),
          SizedBox(height: 10.0,),
          ClipPath(
            clipper: WaveClipperTwo(reverse: true),
            child: Container(
              height: 120,
              color: Colors.orange,
              child: Center(child: Text("WaveClipperTwo(reverse: true)")),
            ),
          ),
          SizedBox(height: 10.0,),
          ClipPath(
            clipper: RoundedDiagonalPathClipper(),
            child: Container(
              height: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                color: Colors.orange,
              ),
              child: Center(child: Text("RoundedDiagonalPathClipper()")),
            ),
          ),
          SizedBox(height: 10.0,),
          ClipOval(
            child: Container(
              height: 120,
              color: Colors.yellow,
              child: Center(child: Text("ClipOval()")),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ClipPath(
            clipper: ArrowClipper(70, 80, Edge.BOTTOM),
            child: Container(
              height: 120,
              color: Colors.green,
              child: Center(child: Text("ArrowClipper()")),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ClipPath(
            clipper: StarClipper(8),
            child: Container(
              height: 450,
              color: Colors.indigo,
              child: Center(child: Text("Starlipper()")),
            ),
          ),
          ClipPath(
            clipper: MessageClipper(borderRadius: 16),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
                color: Colors.red,
              ),
              child: Center(child: Text("MessageClipper()")),
            ),
          ),
          SizedBox(height: 20),
          ClipPath(
            clipper: WavyCircleClipper(32),
            child: Container(
              width: 400,
              height: 510,
              color: Colors.purple,
              child: const Center(child: Text("WavyCircleClipper()")),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ClipRect(
            child: Container(
              child: Align(
                alignment: Alignment.center,
                widthFactor: 0.6,
                heightFactor: 0.7,
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEi0Mw7wKTgfh-ox6s-HH9aY1FCoiUXpDSGg&usqp=CAU"),
              ),
            ),
          ),
          SizedBox(height: 10,),
          ClipPath(
            clipper:MovieTicketClipper(),
            child: Container(
              height: 300,
              width: 300,
              color: Colors.orange,
            ),
          )
        ],
      ),
    );
  }
}