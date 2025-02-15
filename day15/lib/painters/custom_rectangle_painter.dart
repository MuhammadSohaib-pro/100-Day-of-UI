import 'package:flutter/material.dart';

class CustomRectanglePainter extends CustomPainter {
  final Color color;
  final double topWidth;

  CustomRectanglePainter({
    this.color = Colors.red,
    this.topWidth = 50.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paintFill1 = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = 0.0
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();

    final centerX = size.width / 2;
    final leftTop = centerX - topWidth;
    final rightTop = centerX + topWidth;

    path_1.moveTo(leftTop, 0);
    path_1.lineTo(rightTop, 0);
    path_1.lineTo(size.width, size.height);
    path_1.lineTo(0, size.height);
    path_1.lineTo(leftTop, 0);
    path_1.close();

    canvas.drawPath(path_1, paintFill1);
  }

  @override
  bool shouldRepaint(covariant CustomRectanglePainter oldDelegate) {
    return oldDelegate.color != color || oldDelegate.topWidth != topWidth;
  }
}
