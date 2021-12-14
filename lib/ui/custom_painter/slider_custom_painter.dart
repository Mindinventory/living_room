import 'dart:ui' as ui;
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:living_room_light_demo/utils/colors.dart';
import '../living_room_screen.dart';

class CustomSlider extends CustomPainter {
  final double width;
  CustomSlider({required this.width});
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..arcTo(const Rect.fromLTRB(0, 00, 20, 25), math.pi / 2, math.pi, false)
      ..lineTo(width - 7, 0)
      ..quadraticBezierTo(width - 27, -15, width - 47, 00)
      ..arcTo(Rect.fromLTRB(size.width - 15, 00, size.width, 25), -math.pi / 2,
          math.pi, false)
      ..lineTo(width - 47, 25)
      ..quadraticBezierTo(width - 27, 40, width - 7, 25)
      ..lineTo(00, 25)
      ..arcTo(
          const Rect.fromLTRB(10, -0, 00, 23), math.pi, -math.pi / 2.2, true);
    final paint = Paint()
      ..color = AppColors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint.shader = ui.Gradient.linear(
      Offset(size.width, size.width),
      const Offset(0.0, 0.0),
      [
        MainBody.selectedColor,
        MainBody.selectedColor,
        MainBody.selectedColor,
        MainBody.selectedColor,
        MainBody.selectedColor,
        MainBody.selectedColor,
        MainBody.selectedColor,
        Colors.white,
      ],
      [
        width / 1000,
        width / 900,
        width / 800,
        width / 700,
        width / 600,
        width / 700,
        width / 1000,
        0.9301,
      ],
    );
    canvas.drawPath(path, paint);
    canvas.drawCircle(
        Offset(width - 27, 13),
        12,
        Paint()
          ..color = const Color(0xff05CFFF)
          ..style = PaintingStyle.fill);
  }

  @override
  // ignore: avoid_renaming_method_parameters
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}
