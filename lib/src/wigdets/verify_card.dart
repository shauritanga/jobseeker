import 'package:flutter/material.dart';
import 'dart:math';

class VerifyCard extends StatelessWidget {
  const VerifyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 36.0),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xffea3323),
            Color(0xfff0965b),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              CustomPaint(
                size: const Size(100, 100),
                painter: Circle(
                  value: 230,
                  maxValue: 360,
                  minValue: 0,
                ),
              ),
              const Positioned(
                top: 25,
                left: 28,
                child: Text(
                  "60%",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const Positioned(
                top: 48,
                left: 22,
                child: Text(
                  "Complete",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 6),
          const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Get Verified to be top listed!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 8),
              Flexible(
                child: Text(
                  "Complete your",
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

double deg2rad(double deg) => deg * pi / 180;

class Circle extends CustomPainter {
  final double value;
  final double minValue;
  final double maxValue;

  // Constructor to initialize the RadialProgressPainter with required parameters.
  Circle({
    required this.value,
    required this.minValue,
    required this.maxValue,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // circle's diameter // taking min side as diameter
    final double diameter = min(size.height, size.width);
    // Radius
    final double radius = diameter / 2 - 5;
    // Center cordinate
    final double centerX = radius;
    final double centerY = radius;

    const double strokeWidth = 20;

    // Paint for the progress with gradient colors.
    final Paint progressPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.white
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    // Paint for the progress track.
    final Paint progressTrackPaint = Paint()
      ..color = const Color(0xfff0965b)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    // Calculate the start and sweep angles to draw the progress arc.
    double startAngle = -pi / 2;
    double sweepAngle = 2 * pi * value / maxValue;

    // Drawing track.
    canvas.drawCircle(Offset(centerX, centerY), radius, progressTrackPaint);
    // Drawing progress.
    canvas.drawArc(
      Rect.fromCircle(center: Offset(centerX, centerY), radius: radius),
      startAngle,
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
