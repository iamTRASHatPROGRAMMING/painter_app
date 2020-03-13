import 'package:flutter/material.dart';
import 'painter.dart';

class MyPaint extends StatefulWidget {
  @override
  _MyPaintState createState() => _MyPaintState();
}

class _MyPaintState extends State<MyPaint> {
  double updatePoint = 10;
  var point;
  List<Offset> arr = List();
  List<Offset> pointArr = new List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){setState(() {
        arr.clear();
      });}),
      body: Container(
        child:  CustomPaint(
          painter: Painter(arr,pointArr),
          child: GestureDetector(


            onTap: (){
              setState(() {
                RenderBox renderBox = context.findRenderObject();

              });
            },
            onPanStart: (detail) {
              setState(() {
                RenderBox renderBox = context.findRenderObject();
                point = renderBox.globalToLocal(detail.globalPosition);
                pointArr.add(point);
                arr.add(point);
              });
            },
            onPanUpdate: (detail) {
              setState(() {
                RenderBox box = context.findRenderObject();
                point = box.globalToLocal(detail.globalPosition);
                arr.add(point);

                print(point);
              });
            },
            onPanEnd: (detail) {
              setState(() {
               arr.add(null);
              });
            },
          ),
        ),
      ),
    );
  }
}
