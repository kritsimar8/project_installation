import 'dart:math';

import 'package:flutter/material.dart';

class Test4 extends StatefulWidget {
  const Test4({super.key});

  State<Test4> createState() => _Test4State();
}

class _Test4State extends State<Test4> {
  @override
  Widget build(BuildContext context) {
    double MyHeight = MediaQuery.of(context).size.height;
    double MyWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(97, 0, 0, 0),
      body: Center(
        child: Container(
          height: MyHeight * .5,
          width: MyWidth,
          color: const Color.fromARGB(136, 0, 0, 0),
          child: CustomPaint(painter: CustomCFM()),
        ),
      ),
    );
  }
}

class CustomCFM extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final textStyle = TextStyle(
      color: Colors.white,
      fontSize: 50,
      fontFamily: 'Text',
    );
    final textStyle2 = TextStyle(
      color: const Color.fromARGB(255, 223, 223, 223),
      fontSize: 20,
      fontFamily: 'Text',
    );

    final textSpan = TextSpan(text: '10', style: textStyle);

    final textSpan2 = TextSpan(text: 'CFM', style: textStyle2);
    final textSpan3 = TextSpan(text: '00', style: textStyle2);

    final textpainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    final textpainter2 = TextPainter(
      text: textSpan2,
      textDirection: TextDirection.ltr,
    );
    final textpainter3 = TextPainter(
      text: textSpan3,
      textDirection: TextDirection.ltr,
    );

    textpainter.layout(minWidth: 0, maxWidth: size.width);

    textpainter2.layout(minWidth: 0, maxWidth: size.width);
    textpainter3.layout(minWidth: 0, maxWidth: size.width);

    double centerX = size.width * .5;
    double centerY = size.height * .5;

    double outerRadius = size.height * .25;
    double outerRadius2 = size.height * .45;
    double innerRadius = size.height * .22;
    final rect =  Rect.fromPoints(
        Offset(size.width * .1, size.height * .05),
        Offset(size.width * .9, size.height * .95),
      );

    const LinearGradient gradient = LinearGradient(
      colors: [Colors.blue, Color.fromARGB(255, 7, 77, 255)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter
    );

    final CirclePaint =
        Paint()
          ..color = const Color.fromARGB(255, 24, 24, 24)
          ..style = PaintingStyle.fill;
    final CirclePaint2 =
        Paint()
          ..color = const Color.fromARGB(255, 55, 55, 55)
          ..style = PaintingStyle.fill;
    final CirclePaint3 =
        Paint()
          ..color = const Color.fromARGB(255, 88, 88, 88)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 15;

    final CirclePaint4 =
        Paint()
          ..color = const Color.fromARGB(255, 0, 0, 0)
          ..style = PaintingStyle.fill
          ..strokeWidth = 15;

    final CirclePaint5 =
        Paint()
          // ..color = const Color.fromARGB(255, 0, 174, 255)
          ..shader = gradient.createShader(rect)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10
          ..strokeCap = StrokeCap.round;
    final CirclePaint6 =
        Paint()
          ..color = const Color.fromARGB(255, 0, 0, 0)
          ..style = PaintingStyle.fill
          ..strokeWidth = 15;

    final LinePaint =
        Paint()
          ..color = const Color.fromARGB(122, 122, 122, 122)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 4;

    canvas.drawCircle(
      Offset(size.width * .5, size.height * .5),
      size.height * .5,
      CirclePaint,
    );
    canvas.drawCircle(
      Offset(size.width * .5, size.height * .5),
      size.height * .38,
      CirclePaint2,
    );
    canvas.drawCircle(
      Offset(size.width * .5, size.height * .5),
      size.height * .3,
      CirclePaint3,
    );
    canvas.drawArc(
      rect,
      pi,
      3,
      false,
      CirclePaint5,
    );
    for (int i = 0; i < 278; i += 4) {
      double x1 = centerX - outerRadius * cos(i * pi / 140);
      double y1 = centerY - outerRadius * sin(i * pi / 140);    
      double x2 = centerX - innerRadius * cos(i * pi / 140);
      double y2 = centerY - innerRadius * sin(i * pi / 140);

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), LinePaint);

      canvas.drawCircle(
        Offset(size.width * .5, size.height * .5),
        size.height * .2,
        CirclePaint4,
      );

    }
    canvas.drawCircle(
      Offset(size.width * .1, size.height * .5),
      20,
      CirclePaint6,
    );
    canvas.drawCircle(
      Offset(size.width * .5, size.height * .055),
      20,
      CirclePaint6,
    );
    canvas.drawCircle(
      Offset(size.width * .9, size.height * .5),
      20,
      CirclePaint6,
    );
    canvas.drawCircle(
      Offset(size.width * .49, size.height * .945),
      20,
      CirclePaint6,
    );
    textpainter.paint(canvas, Offset(size.width * .44, size.height * .41));
    textpainter2.paint(canvas, Offset(size.width * .465, size.height * .58));
    textpainter3.paint(canvas, Offset(size.width * .475, size.height * .023));
    textpainter3.paint(canvas, Offset(size.width * .08, size.height * .47));
    textpainter3.paint(canvas, Offset(size.width * .878, size.height * .47));
    textpainter3.paint(canvas, Offset(size.width * .468, size.height * .92));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
