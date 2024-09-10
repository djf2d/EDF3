import 'package:flutter/material.dart';

class DrawCurve extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height * 0.5;
    double curveHeight = 33;

    final path = Path();
    const segmentWidth = 30;

    var startPoint = size.width * 0.5 - 90;
    path.moveTo(startPoint, height);

    path.cubicTo(
      startPoint + 1.9 * segmentWidth,
      height,
      (2 * segmentWidth + startPoint),
      curveHeight,
      (3 * segmentWidth + startPoint),
      curveHeight,
    );
    path.cubicTo(
      (4 * segmentWidth + startPoint),
      curveHeight,
      (4.1 * segmentWidth + startPoint),
      height,
      (6 * segmentWidth + startPoint),
      height,
    );
    canvas.drawPath(path, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
