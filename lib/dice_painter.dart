import 'package:flutter/material.dart';

class DicePainter extends CustomPainter {
  final int val;

  DicePainter({
    required this.val,
  });

  @override
  void paint(Canvas canvas, Size size) {
    _paintDiceBorder(canvas, size);
    _drawDots(canvas, size);
  }

  void _paintDiceBorder(Canvas canvas, Size size) {
    canvas.drawRect(
      Rect.fromCenter(center: size.center(Offset.zero), width: size.width, height: size.height),
      Paint()
        ..color = Colors.white
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke
        ..strokeWidth = 15
        ..strokeJoin = StrokeJoin.round,
    );
  }

  void _drawDots(Canvas canvas, Size size) {
    if (val == 1) {
      _drawDot(canvas, size.center(Offset.zero));
    } else if (val == 2) {
      final a = Offset(size.width * 0.25, size.height * 0.5);
      _drawDot(canvas, a);
      final b = Offset(size.width * 0.75, size.height * 0.5);
      _drawDot(canvas, b);
    } else if (val == 3) {
      final a = Offset(size.width * 0.2, size.height * 0.5);
      _drawDot(canvas, a);
      final b = Offset(size.width * 0.8, size.height * 0.5);
      _drawDot(canvas, b);
      _drawDot(canvas, size.center(Offset.zero));
    } else if (val == 4) {
      final a = Offset(size.width * 0.25, size.height * 0.25);
      _drawDot(canvas, a);
      final b = Offset(size.width * 0.75, size.height * 0.25);
      _drawDot(canvas, b);
      final c = Offset(size.width * 0.25, size.height * 0.75);
      _drawDot(canvas, c);
      final d = Offset(size.width * 0.75, size.height * 0.75);
      _drawDot(canvas, d);
    } else if (val == 5) {
      final a = Offset(size.width * 0.25, size.height * 0.25);
      _drawDot(canvas, a);
      final b = Offset(size.width * 0.75, size.height * 0.25);
      _drawDot(canvas, b);
      final c = Offset(size.width * 0.25, size.height * 0.75);
      _drawDot(canvas, c);
      final d = Offset(size.width * 0.75, size.height * 0.75);
      _drawDot(canvas, d);
      _drawDot(canvas, size.center(Offset.zero));
    } else if (val == 6) {
      final a = Offset(size.width * 0.25, size.height * 0.25);
      _drawDot(canvas, a);
      final b = Offset(size.width * 0.75, size.height * 0.25);
      _drawDot(canvas, b);
      final c = Offset(size.width * 0.25, size.height * 0.75);
      _drawDot(canvas, c);
      final d = Offset(size.width * 0.75, size.height * 0.75);
      _drawDot(canvas, d);
      final e = Offset(size.width * 0.25, size.height * 0.5);
      _drawDot(canvas, e);
      final f = Offset(size.width * 0.75, size.height * 0.5);
      _drawDot(canvas, f);
    }
  }

  void _drawDot(
    Canvas canvas,
    Offset offset,
  ) {
    canvas.drawCircle(offset, 12, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
