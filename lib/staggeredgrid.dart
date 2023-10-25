import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>
          MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: Staggeredgrid(),
          )));
}

class Staggeredgrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid view"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.teal,
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.5,
                child: Container(
                  color: Colors.red,
                )),
            StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 1, child: Container(
              color: Colors.purple,
            )),
            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: Container(
              color: Colors.orange,
            )),
            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: Container(
              color: Colors.blue,
            )),
            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: Container(
              color: Colors.yellow,
            )),
            StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 0.5, child: Container(
              color: Colors.pink,
            )),
            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1, child: Container(
              color: Colors.orange,
            )),
            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2, child: Container(
              color: Colors.brown,
            )),
            StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2, child: Container(
              color: Colors.pinkAccent,
            )),
            StaggeredGridTile.count(crossAxisCellCount: 3, mainAxisCellCount: 1, child: Container(
              color: Colors.orange,
            )),
            StaggeredGridTile.count(crossAxisCellCount: 4, mainAxisCellCount: 3, child: Container(
              color: Colors.cyan,
            )),
          ],
        ),
      ),
    );
  }
}




