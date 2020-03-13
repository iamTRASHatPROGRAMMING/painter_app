

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Painter extends CustomPainter {
  final point;
  final pointArr;

  Painter(
      this.point,
      this.pointArr

      );

  @override
  void paint(Canvas canvas , Size size) {
    var paint = Paint()
    ..color = Colors.red
    ..strokeWidth = 10
    ..strokeCap= StrokeCap.round;
    for(var i =0;i<=point.length-1;i++) {
      if(point[i]!=null &&point[i+1]!=null) {
        canvas.drawLine(point[i], point[i+1], paint);

      }
      else if(point[i]==null&&point[i+1] == null) {

        canvas.drawPoints(point, pointArr, paint);
      }
    }

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}