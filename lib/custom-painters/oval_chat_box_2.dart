import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class OvalChatBox2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(115, 153.111);
    path_0.cubicTo(52.5901, 153.111, 2, 119.281, 2, 77.5556);
    path_0.cubicTo(2, 35.83, 52.5901, 2, 115, 2);
    path_0.cubicTo(177.41, 2, 228, 35.83, 228, 77.5556);
    path_0.cubicTo(228, 97.9272, 215.943, 116.41, 196.349, 130.001);
    path_0.cubicTo(202.338, 149.806, 211.449, 158.556, 222.749, 168);
    path_0.cubicTo(188.849, 168, 176.845, 162.754, 156.584, 147.832);
    path_0.cubicTo(143.702, 151.232, 129.69, 153.111, 115, 153.111);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.white.withOpacity(0.15);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(115, 153.111);
    path_1.cubicTo(52.5901, 153.111, 2, 119.281, 2, 77.5556);
    path_1.cubicTo(2, 35.83, 52.5901, 2, 115, 2);
    path_1.cubicTo(177.41, 2, 228, 35.83, 228, 77.5556);
    path_1.cubicTo(228, 97.9272, 215.943, 116.41, 196.349, 130.001);
    path_1.cubicTo(202.338, 149.806, 211.449, 158.556, 222.749, 168);
    path_1.cubicTo(188.849, 168, 176.845, 162.754, 156.584, 147.832);
    path_1.cubicTo(143.702, 151.232, 129.69, 153.111, 115, 153.111);
    path_1.close();

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.009429217;
    paint1Stroke.strokeCap = StrokeCap.round;
    paint1Stroke.strokeJoin = StrokeJoin.round;
    paint1Stroke.shader = ui.Gradient.linear(
        Offset(size.width * 0.9004957, size.height * 0.01176471),
        Offset(size.width * 0.3960783, size.height * 1.249612),
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
