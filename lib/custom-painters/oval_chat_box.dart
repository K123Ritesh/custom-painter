import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class OvalChatBox1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(126, 153.2);
    path_0.cubicTo(194.485, 153.2, 250, 119.35, 250, 77.6);
    path_0.cubicTo(250, 35.8499, 194.485, 2, 126, 2);
    path_0.cubicTo(57.5148, 2, 2, 35.8499, 2, 77.6);
    path_0.cubicTo(2, 97.9837, 15.2308, 116.477, 36.7324, 130.076);
    path_0.cubicTo(30.1604, 149.893, 14.4, 162.65, 2, 172.1);
    path_0.cubicTo(39.2, 172.1, 58.1348, 162.848, 80.368, 147.917);
    path_0.cubicTo(94.504, 151.319, 109.88, 153.2, 126, 153.2);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.white.withOpacity(0.15);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(126, 153.2);
    path_1.cubicTo(194.485, 153.2, 250, 119.35, 250, 77.6);
    path_1.cubicTo(250, 35.8499, 194.485, 2, 126, 2);
    path_1.cubicTo(57.5148, 2, 2, 35.8499, 2, 77.6);
    path_1.cubicTo(2, 97.9837, 15.2308, 116.477, 36.7324, 130.076);
    path_1.cubicTo(30.1604, 149.893, 14.4, 162.65, 2, 172.1);
    path_1.cubicTo(39.2, 172.1, 58.1348, 162.848, 80.368, 147.917);
    path_1.cubicTo(94.504, 151.319, 109.88, 153.2, 126, 153.2);
    path_1.close();

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.008611111;
    paint1Stroke.strokeCap = StrokeCap.round;
    paint1Stroke.strokeJoin = StrokeJoin.round;
    paint1Stroke.shader = ui.Gradient.linear(
        Offset(size.width * 0.09888651, size.height * 0.01149425),
        Offset(size.width * 0.5529563, size.height * 1.288874),
        [Color(0xff234EE6).withOpacity(1), Color(0xff09FBD3).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_1, paint1Stroke);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Colors.transparent;
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
