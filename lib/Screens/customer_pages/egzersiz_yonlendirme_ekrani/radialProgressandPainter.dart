
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as math;

class RadialProgress extends StatelessWidget {
  final double height, width, progress;
  final String title;
  final Color color, textColor;

  const RadialProgress({Key? key,
    required this.height,
    this.textColor = const Color(0xFF200087),
    required this.width,
    required this.progress,
    this.color = const Color(0xFF200087),
    required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: RadialPainter(progress: progress, color: color),
      child: Container(
        height: height,
        width: width,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}

class RadialPainter extends CustomPainter {
  final double progress;
  final Color color;

  RadialPainter({this.color = const Color(0xFF200087), required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeWidth = 4
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    double relativeProgress = 360 * progress;
    //canvas.drawCircle(center, size.width/2, paint);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: size.width / 2),
      math.radians(-90),
      math.radians(-relativeProgress),
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
