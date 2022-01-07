import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:weekly_challenge/src/utils/theme.dart';

class CirclePainter extends CustomPainter {
  final double strokeWidth;
  final double progress;
  final Color color;

  CirclePainter({
    required this.progress,
    required this.color,
    this.strokeWidth = 5.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paintBackground = Paint()
      ..color = Colors.grey.withOpacity(0.3)
      ..strokeCap = StrokeCap.square
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke; //important set stroke style

    final paint = Paint()
      ..color = color
      ..strokeCap = StrokeCap.square
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke; //important set stroke style

    final rect = Rect.fromLTWH(0, 0.0, size.width, size.height);
    const startAngle = -math.pi / 2;
    const sweepAngleBackGround = -math.pi * 2;
    final sweepAngleProgressed = -math.pi * 2 * progress;
    const useCenter = false;

    canvas.drawArc(
        rect, startAngle, sweepAngleBackGround, useCenter, paintBackground);
    canvas.drawArc(rect, startAngle, sweepAngleProgressed, useCenter, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class CircularIndicator extends StatelessWidget {
  final double size;
  final int target;
  final int executed;

  const CircularIndicator({
    required this.target,
    required this.executed,
    this.size = 30.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).colorScheme.pending;
    if(executed==0) {
      color = Theme.of(context).colorScheme.error;
    } else if(executed == target) {
      color = Theme.of(context).colorScheme.success;
    }
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        children: [
          Center(
            child: Text(
              '$executed/$target',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
          CustomPaint(
            size: MediaQuery.of(context).size,
            painter: CirclePainter(
              progress: executed / target,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
