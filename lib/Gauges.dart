import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:installation_project/checking.dart';

class CustomPainterGauge extends CustomPainter {
  bool isAboveThreshold;
  CustomPainterGauge({required this.isAboveThreshold});
  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width * .5;
    double centerY = size.height * .5;
    Color myColor =
         isAboveThreshold == false
            ? const Color.fromARGB(255, 255, 115, 0)
            : const Color.fromARGB(255, 0, 187, 255);

    double radius = size.width * .5;

    double outerRadius = radius - size.width * .1;
    double outerRadius2 = radius - size.width * .21;
    double innerRadius = radius - size.width * .3;
    double innerRadius2 = radius - size.width * .15;

    final textstyle = TextStyle(
      color: const Color.fromARGB(244, 103, 101, 101),
      fontSize: size.width * .18,
      fontWeight: FontWeight.bold,
      fontFamily: 'Text',

      // fontStyle: FontStyle.italic
    );
    final textstyle2 = TextStyle(
      color: const Color.fromARGB(244, 103, 101, 101),
      fontSize: size.width * .05,
      fontWeight: FontWeight.bold,
      fontFamily: 'Text',

      // fontStyle: FontStyle.italic
    );

    final textSpan = TextSpan(text: '10', style: textstyle);
    final textSpan2 = TextSpan(text: 'Amp', style: textstyle2);

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    final textPainter2 = TextPainter(
      text: textSpan2,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(minWidth: 0, maxWidth: size.width);
    textPainter2.layout(minWidth: 0, maxWidth: size.width);

    final gradient = LinearGradient(
      colors: [
        const Color.fromARGB(255, 110, 110, 110),
        Colors.black,
        Colors.black,
        Colors.black,
        const Color.fromARGB(255, 110, 110, 110),
      ],
    );
    final gradient2 = LinearGradient(
      colors: [
        const Color.fromARGB(255, 0, 191, 255),
        const Color.fromARGB(255, 0, 20, 198),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
    final gradient3 = LinearGradient(
      colors: [
        const Color.fromARGB(255, 255, 115, 0),
        const Color.fromARGB(255, 218, 0, 0),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    LinearGradient myGradient = isAboveThreshold ==false ? gradient3 : gradient2;
    final midPoint = Offset(size.width * .5, size.height * .5);
    final midPoint2 = Offset(size.width * .5, size.height * .48);

    final circlePaint =
        Paint()
          ..color = const Color.fromARGB(255, 161, 155, 155)
          ..strokeWidth = 3
          ..style = PaintingStyle.stroke;
    final circlePaint2 =
        Paint()
          ..shader = gradient.createShader(
            Rect.fromCircle(center: midPoint, radius: 95),
          )
          ..strokeWidth = 1
          ..style = PaintingStyle.fill;
    final circlePaint3 =
        Paint()
          ..shader = myGradient.createShader(
            Rect.fromCircle(center: midPoint, radius: 85),
          )
          ..color = Colors.white
          ..strokeWidth = 4
          ..style = PaintingStyle.stroke;
    final circlePaint4 =
        Paint()
          ..color = const Color.fromARGB(255, 0, 0, 0)
          ..strokeWidth = 2
          ..style = PaintingStyle.fill;
    var paintStick =
        Paint()
          ..color = const Color.fromARGB(255, 128, 128, 128)
          ..style = PaintingStyle.fill
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 2;
    var paintStick2 =
        Paint()
          ..color = const Color.fromARGB(3, 255, 255, 255)
          // ..color = const Color.fromARGB(242, 221, 8, 8)
          ..style = PaintingStyle.fill
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 2;

    var paintStick3 =
        Paint()
          ..color = const Color.fromARGB(8, 255, 255, 255)
          // ..color = const Color.fromARGB(237, 244, 8, 8)
          ..style = PaintingStyle.fill
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 2;
    var paintStick4 =
        Paint()
          ..color = myColor
          ..style = PaintingStyle.fill
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 2;
    final shadowPaint =
        Paint()
          ..color = myColor
          ..maskFilter = MaskFilter.blur(BlurStyle.normal, size.width * .06);
    final shadowPaint2 =
        Paint()
          ..color = myColor
          ..maskFilter = MaskFilter.blur(BlurStyle.normal, size.width * .05);

    final circlePaint5 =
        Paint()
          ..color = myColor
          ..strokeWidth = 2
          ..style = PaintingStyle.fill;
    final circlePaint7 =
        Paint()
          ..color = const Color.fromARGB(255, 0, 0, 0)
          ..strokeWidth = 2
          ..style = PaintingStyle.fill;
    final circlePaint6 =
        Paint()
          ..color = const Color.fromARGB(255, 128, 128, 128)
          ..strokeWidth = 2
          ..style = PaintingStyle.fill;
    final circlePaint8 =
        Paint()
          ..color = const Color.fromARGB(108, 0, 0, 0)
          ..strokeWidth = 2
          ..style = PaintingStyle.fill;
    final circlePaint9 =
        Paint()
          // ..color = const Color.fromARGB(155, 5, 188, 255)
          ..color = myColor
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke;

    canvas.drawCircle(midPoint, size.width * .5, circlePaint);
    // canvas.drawCircle(midPoint, size.width*.5, circlePaint2);
    canvas.drawCircle(midPoint, size.width * .47, circlePaint3);
    canvas.drawCircle(midPoint, size.width * .46, circlePaint4);

    for (int i = 240; i < 520; i += 4) {
      double x4 = centerX - (outerRadius2) * cos(i * pi / 260);
      double y4 = centerY - (outerRadius2) * sin(i * pi / 260);
      double x3 = centerX - innerRadius * cos(i * pi / 260);
      double y3 = centerY - innerRadius * sin(i * pi / 260);
      double x5 = centerX - (outerRadius + 10) * cos(i * pi / 260);
      double y5 = centerY - (outerRadius + 10) * sin(i * pi / 260);
      double x6 = centerX - innerRadius * cos(i * pi / 260);
      double y6 = centerY - innerRadius * sin(i * pi / 260);
      double x7 = centerX - innerRadius2 * cos(i * pi / 260);
      double y7 = centerY - innerRadius2 * sin(i * pi / 260);
      double x9 = centerX - (outerRadius) * cos(i * pi / 260);
      double y9 = centerY - (outerRadius) * sin(i * pi / 260);
      if (i < 310 || i > 470) {
        canvas.drawLine(Offset(x4, y4), Offset(x3, y3), paintStick2);
      }
      canvas.drawLine(Offset(x5, y5), Offset(x6, y6), paintStick3);
      if (i > 380 && i < 460) {
        // canvas.drawLine(Offset(x9, y9), Offset(x7, y7), paintStick4);
      }
    }
    for (int i = 0; i < 240; i += 2) {
      double x1 = centerX - outerRadius * cos(i * pi / 200);
      double y1 = centerY - outerRadius * sin(i * pi / 200);
      double x4 = centerX - outerRadius2 * cos(i * pi / 260);
      double y4 = centerY - outerRadius2 * sin(i * pi / 260);
      double x2 = centerX - outerRadius * cos(i * pi / 200);
      double y2 = centerY - outerRadius * -sin(i * pi / 200);
      double x3 = centerX - innerRadius * cos(i * pi / 260);
      double y3 = centerY - innerRadius * sin(i * pi / 260);
      double x5 = centerX - (outerRadius + 10) * cos(i * pi / 260);
      double y5 = centerY - (outerRadius + 10) * sin(i * pi / 260);

      if (i % 4 == 0) {
        canvas.drawLine(Offset(x4, y4), Offset(x3, y3), paintStick2);
        canvas.drawLine(Offset(x5, y5), Offset(x3, y3), paintStick3);
      }

      if (i % 10 == 0 && i <= 240) {
        if (i % 40 == 0) {
          canvas.drawCircle(Offset(x1, y1), size.width * .03, shadowPaint2);
          canvas.drawCircle(Offset(x1, y1), size.width * .015, circlePaint5);
        } else {
          canvas.drawCircle(Offset(x1, y1), size.width * .006, circlePaint5);
        }

        i <= 30 && i != 0
            ? canvas.drawCircle(Offset(x2, y2), size.width * .006, circlePaint5)
            : Null;
      }
    }

    canvas.drawCircle(midPoint2, size.width * .25, shadowPaint);
    canvas.drawCircle(midPoint, size.width * .26, circlePaint7);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class Indicators extends CustomPainter {
  MyIndicators myValue;
  Indicators({required this.myValue});

  int start=0;

  int myFunc() {
     start = 460- (16 * myValue.IndicatorNo);
    //  print('$start this is second phase');
     return start;
  }

  

 

  @override
  void paint(Canvas canvas, Size size) {
    double radius = size.width * .5;
    double innerRadius2 = radius - size.width * .15;
    double outerRadius = radius - size.width * .1;
    double centerX = size.width * .5;
    double centerY = size.height * .5;
    Color myColor =
        myValue.isAboveThreshold == false
            ? const Color.fromARGB(255, 255, 115, 0)
            : const Color.fromARGB(255, 0, 187, 255);
    var paintStick4 =
        Paint()
          ..color = myColor
          ..style = PaintingStyle.fill
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 2;

    for (int i = myFunc() ; i < 460; i += 4) {
      double x7 = centerX - innerRadius2 * cos(i * pi / 260);
      double y7 = centerY - innerRadius2 * sin(i * pi / 260);
      double x9 = centerX - (outerRadius) * cos(i * pi / 260);
      double y9 = centerY - (outerRadius) * sin(i * pi / 260);
      canvas.drawLine(Offset(x9, y9), Offset(x7, y7), paintStick4);
    }
  }

  @override 
  bool shouldRepaint(covariant CustomPainter oldDelegate){
    return false;
  }
}

class Stick extends CustomPainter {
  double rotation;
  Stick({required this.rotation});
  @override
  void paint(Canvas canvas, Size size) {
    final midPoint = Offset(size.width * .5, size.height * .5);
    var paintStick =
        Paint()
          ..color = const Color.fromARGB(255, 128, 128, 128)
          ..style = PaintingStyle.fill
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 2;
    final circlePaint6 =
        Paint()
          ..color = const Color.fromARGB(255, 128, 128, 128)
          ..strokeWidth = 2
          ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(size.width * .495, size.height * .5);
    path.lineTo(size.width * .495, size.height * .25);
    path.lineTo(size.width * .51, size.height * .25);
    path.lineTo(size.width * .51, size.height * .5);
    path.lineTo(size.width * .495, size.height * .5);

    canvas.save();
    canvas.translate(midPoint.dx, midPoint.dy);

    double angle = rotation * (3.1415 / 180);

    canvas.rotate(angle);
    canvas.translate(-midPoint.dx, -midPoint.dy);
    canvas.drawPath(path, paintStick);

    canvas.restore();

    canvas.drawCircle(midPoint, size.width * .04, circlePaint6);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class Readings extends CustomPainter {
  final String read;
  bool myValue;
  Readings({required this.read, required this.myValue});

  @override
  void paint(Canvas canvas, Size size) {
    final textstyle = TextStyle(
      color: const Color.fromARGB(244, 103, 101, 101),
      fontSize: size.width * .18,
      fontWeight: FontWeight.bold,
      fontFamily: 'Text',

      // fontStyle: FontStyle.italic
    );

    Color myColor =
        myValue == false 
            ? const Color.fromARGB(143, 255, 115, 0)
            : const Color.fromARGB(144, 0, 187, 255);
    final textstyle2 = TextStyle(
      color: const Color.fromARGB(244, 103, 101, 101),
      fontSize: size.width * .05,
      fontWeight: FontWeight.bold,
      fontFamily: 'Text',

      // fontStyle: FontStyle.italic
    );
      
    final textSpan = TextSpan(text: '00', style: textstyle);
    final textSpan2 = TextSpan(text: read, style: textstyle2);

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    final textPainter2 = TextPainter(
      text: textSpan2,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(minWidth: 0, maxWidth: size.width);
    textPainter2.layout(minWidth: 0, maxWidth: size.width);
    final midPoint = Offset(size.width * .5, size.height * .5);
    final circlePaint8 =
        Paint()
          ..color = const Color.fromARGB(108, 0, 0, 0)
          ..strokeWidth = 2
          ..style = PaintingStyle.fill;
    final circlePaint9 =
        Paint()
          ..color = myColor
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke;
    canvas.drawCircle(midPoint, size.width * .26, circlePaint8);
    canvas.drawCircle(midPoint, size.width * .26, circlePaint9);
    textPainter.paint(
      canvas,
      Offset(midPoint.dx - size.width * .1, midPoint.dy - size.width * .13),
    );
    textPainter2.paint(
      canvas,
      Offset(midPoint.dx - size.width * .039, midPoint.dy + size.width * .09),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
