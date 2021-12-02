import 'dart:math';

import 'package:complex_ui/data.dart';
import 'package:flutter/material.dart';

class PieChart extends StatelessWidget {
  const PieChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: customShadow,
          color: primaryColor,
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomPaint(
                child: Container(),
                foregroundPainter: PieChartPainter(),
              ),
            ),
            Center(
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: customShadow,
                  color: primaryColor,
                ),
                child: const Center(
                    child: Text(
                  '\$1234',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 50;

    var total = 0.0;

    expenses.forEach((expense) {
      total += double.parse(expense['amount'].toString());
    });

    var startRadian = -pi / 2;

    for (var i = 0; i < expenses.length; i++) {
      var currentExpense = expenses[i];
      var sweepRadian =
          (double.parse(currentExpense['amount'].toString()) / total) * 2 * pi;

      paint.color = pieColors[i];

      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadian, false, paint);

      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
