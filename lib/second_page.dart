import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:installation_project/test4.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final MyHeight = MediaQuery.of(context).size.height;
    final MyWidth = MediaQuery.of(context).size.width;

    List<Paint> points = [];

    bool isFirst;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: MyHeight * .03),
          Container(
            height: MyHeight * .3,
            width: MyWidth,
            color: const Color.fromARGB(0, 255, 193, 7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MyWidth * .03,
                    right: MyWidth * .07,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Weight',
                        style: GoogleFonts.robotoMono(
                          color: const Color.fromARGB(238, 255, 255, 255),
                          fontSize: MyWidth * .03,
                        ),
                      ),
                      Text(
                        '1.2Kg',
                        style: GoogleFonts.robotoMono(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: MyWidth * .03,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MyHeight * .01),
                Container(
                  height: MyHeight * .06,
                  width: MyWidth,
                  color: const Color.fromARGB(0, 244, 67, 54),
                  child: CustomPaint(painter: CustomPainterBars(true)),
                ),
                SizedBox(height: MyHeight * .03),
                Padding(
                  padding: EdgeInsets.only(
                    left: MyWidth * .02,
                    right: MyWidth * .09,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Consumed',
                        style: GoogleFonts.robotoMono(
                          color: const Color.fromARGB(223, 255, 255, 255),
                          fontSize: MyWidth * .03,
                        ),
                      ),
                      Text(
                        '1.2Kg',
                        style: GoogleFonts.robotoMono(
                          color: const Color.fromARGB(225, 255, 255, 255),
                          fontSize: MyWidth * .03,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MyHeight * .009),
                Container(
                  height: MyHeight * .06,
                  width: MyWidth,
                  color: const Color.fromARGB(0, 244, 67, 54),
                  child: CustomPaint(painter: CustomPainterBars(false)),
                ),
              ],
            ),
          ),
          SizedBox(height: MyHeight * .01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MyHeight * .3,
                width: MyWidth * .48,
                color: const Color.fromARGB(0, 244, 67, 54),
                child: CustomPaint(painter: CustomCFM2()),
              ),
              Container(
                height: MyHeight * .3,
                width: MyWidth * .48,
                color: const Color.fromARGB(0, 255, 235, 59),
                child: CustomPaint(painter: CustomCFM2()),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: MyHeight * .3,
                width: MyWidth * .5,
                color: const Color.fromARGB(0, 121, 85, 72),
                child: CustomPaint(painter: CustomHum2()),
              ),
              Container(
                height: MyHeight * .3,
                width: MyWidth * .48,
                color: const Color.fromARGB(0, 155, 39, 176),
                child: CustomPaint(painter: CustomPaintInTemp2()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomPaintInTemp2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    DateTime time = DateTime.now();

    String myTime = '${time.hour}: ${time.minute}';

    final List<List<double>> item = [
      [0.0, 0.45, 0],
      [-0.225, .39, .55],
      [-0.39, .225, .99],
      [-.45, .0, 1.6],
      // [-.44,-.119,1.8],
      [-0.39, -.228, 2.1],
      [-.225, -.39, 2.6],
      [0.0, -.45, 3.15],
      [0.23, -.395, 3.7],
      [.39, -.226, 4.2],
      [.45, 0, 4.7],
      [.39, .225, 5.2],
      [.226, .39, 5.7],
    ];

    double centerX = size.width * .5;
    double centerY = size.height * .5;

    double outerRadius = size.width * .45;
    double innerRadius = size.width * .46;

    final textStyle = TextStyle(
      color: Colors.white,
      fontSize: size.width * .05,
      fontFamily: 'Text',
    );
    final textStyle2 = TextStyle(
      color: Colors.white,
      fontSize: size.width * .07,
      fontFamily: 'Text',
    );
    final textStyle3 = TextStyle(
      color: Colors.red,
      fontSize: size.width * .07,
      fontFamily: 'Text',
    );
    final textStyle4 = TextStyle(
      color: const Color.fromARGB(190, 255, 255, 255),
      fontSize: size.width * .15,
      fontFamily: 'Text',
    );
    final textStyle5 = TextStyle(
      color: const Color.fromARGB(127, 255, 255, 255),
      fontSize: size.width * .07,
      fontFamily: 'Text',
    );
    final textStyle6 = TextStyle(
      color: const Color.fromARGB(255, 102, 52, 34),
      fontSize: size.width * .06,
      fontFamily: 'Text',
    );

    final textSpan = TextSpan(text: '0', style: textStyle);
    final textSpan2 = TextSpan(text: '2', style: textStyle);
    final textSpan3 = TextSpan(text: '4', style: textStyle);
    final textSpan4 = TextSpan(text: '6', style: textStyle);
    final textSpan5 = TextSpan(text: '8', style: textStyle);
    final textSpan6 = TextSpan(text: '10', style: textStyle);
    final textSpan7 = TextSpan(text: '12', style: textStyle);
    final textSpan8 = TextSpan(text: '14', style: textStyle);
    final textSpan9 = TextSpan(text: '16', style: textStyle);
    final textSpan10 = TextSpan(text: '18', style: textStyle);
    final textSpan11 = TextSpan(text: '20', style: textStyle);
    final textSpan12 = TextSpan(text: '22', style: textStyle);
    final textSpan13 = TextSpan(text: '0', style: textStyle3);
    final textSpan14 = TextSpan(text: '18', style: textStyle2);
    final textSpan15 = TextSpan(text: '6', style: textStyle2);
    final textSpan16 = TextSpan(text: '12', style: textStyle2);
    final textSpan17 = TextSpan(text: '~10°', style: textStyle4);
    final textSpan18 = TextSpan(text: 'Cel', style: textStyle5);
    final textSpan19 = TextSpan(text: myTime, style: textStyle6);
    final textSpan20 = TextSpan(text: 'Temperature', style: textStyle6);
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    final textPainter1 = TextPainter(
      text: textSpan2,
      textDirection: TextDirection.ltr,
    );
    final textPainter2 = TextPainter(
      text: textSpan3,
      textDirection: TextDirection.ltr,
    );
    final textPainter3 = TextPainter(
      text: textSpan4,
      textDirection: TextDirection.ltr,
    );
    final textPainter4 = TextPainter(
      text: textSpan5,
      textDirection: TextDirection.ltr,
    );
    final textPainter5 = TextPainter(
      text: textSpan6,
      textDirection: TextDirection.ltr,
    );
    final textPainter6 = TextPainter(
      text: textSpan7,
      textDirection: TextDirection.ltr,
    );
    final textPainter7 = TextPainter(
      text: textSpan8,
      textDirection: TextDirection.ltr,
    );
    final textPainter8 = TextPainter(
      text: textSpan9,
      textDirection: TextDirection.ltr,
    );
    final textPainter9 = TextPainter(
      text: textSpan10,
      textDirection: TextDirection.ltr,
    );
    final textPainter10 = TextPainter(
      text: textSpan11,
      textDirection: TextDirection.ltr,
    );
    final textPainter11 = TextPainter(
      text: textSpan12,
      textDirection: TextDirection.ltr,
    );

    final textPainter13 = TextPainter(
      text: textSpan13,
      textDirection: TextDirection.ltr,
    );
    final textPainter14 = TextPainter(
      text: textSpan14,
      textDirection: TextDirection.ltr,
    );
    final textPainter15 = TextPainter(
      text: textSpan15,
      textDirection: TextDirection.ltr,
    );
    final textPainter16 = TextPainter(
      text: textSpan16,
      textDirection: TextDirection.ltr,
    );
    final textPainter17 = TextPainter(
      text: textSpan17,
      textDirection: TextDirection.ltr,
    );
    final textPainter18 = TextPainter(
      text: textSpan18,
      textDirection: TextDirection.ltr,
    );
    final textPainter19 = TextPainter(
      text: textSpan19,
      textDirection: TextDirection.ltr,
    );
    final textPainter20 = TextPainter(
      text: textSpan20,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(minWidth: 0, maxWidth: size.width);
    textPainter1.layout(minWidth: 0, maxWidth: size.width);
    textPainter2.layout(minWidth: 0, maxWidth: size.width);
    textPainter3.layout(minWidth: 0, maxWidth: size.width);
    textPainter4.layout(minWidth: 0, maxWidth: size.width);
    textPainter5.layout(minWidth: 0, maxWidth: size.width);
    textPainter6.layout(minWidth: 0, maxWidth: size.width);
    textPainter7.layout(minWidth: 0, maxWidth: size.width);
    textPainter8.layout(minWidth: 0, maxWidth: size.width);
    textPainter9.layout(minWidth: 0, maxWidth: size.width);
    textPainter10.layout(minWidth: 0, maxWidth: size.width);
    textPainter11.layout(minWidth: 0, maxWidth: size.width);

    textPainter13.layout(minWidth: 0, maxWidth: size.width);
    textPainter14.layout(minWidth: 0, maxWidth: size.width);
    textPainter15.layout(minWidth: 0, maxWidth: size.width);
    textPainter16.layout(minWidth: 0, maxWidth: size.width);
    textPainter17.layout(minWidth: 0, maxWidth: size.width);
    textPainter18.layout(minWidth: 0, maxWidth: size.width);
    textPainter19.layout(minWidth: 0, maxWidth: size.width);
    textPainter20.layout(minWidth: 0, maxWidth: size.width);

    final List<TextPainter> painter = [
      textPainter,
      textPainter1,
      textPainter2,
      textPainter3,
      textPainter4,
      textPainter5,
      textPainter6,
      textPainter7,
      textPainter8,
      textPainter9,
      textPainter10,
      textPainter11,
    ];

    var paint =
        Paint()
          ..color = const Color.fromARGB(85, 84, 40, 29)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 30;
    var paint2 =
        Paint()
          ..color = const Color.fromARGB(255, 56, 27, 21)
          ..style = PaintingStyle.fill
          ..strokeWidth = 30;
    var paint3 =
        Paint()
          ..color = const Color.fromARGB(255, 33, 14, 1)
          ..style = PaintingStyle.fill
          ..strokeWidth = 30;

    var linePaint =
        Paint()
          ..color = const Color.fromARGB(109, 255, 255, 255)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 5;
    var circleP =
        Paint()
          ..color = const Color.fromARGB(109, 255, 255, 255)
          ..style = PaintingStyle.fill
          ..strokeWidth = 5;

    canvas.drawCircle(
      Offset(size.width * .5, size.height * .5),
      size.width * .45,
      paint,
    );
    canvas.drawCircle(
      Offset(size.width * .5, size.height * .5),
      size.width * .39,
      paint2,
    );
    canvas.drawCircle(
      Offset(size.width * .5, size.height * .5),
      size.width * .28,
      paint3,
    );
    // textPainter.paint(canvas, Offset(size.width*.5, size.height*.5));

    for (int i = 0; i <= 240; i += 10) {
      if (i % 20 != 0) {
        double x1 = centerX - outerRadius * cos(i * pi / 120);
        double x2 = centerX - innerRadius * cos(i * pi / 120);
        double y1 = centerY - outerRadius * sin(i * pi / 120);
        double y2 = centerY - innerRadius * sin(i * pi / 120);

        canvas.drawCircle(Offset(x1, y1), size.width * .01, circleP);
      }
    }

    for (int i = 0; i <= 11; i += 1) {
      canvas.save();
      canvas.translate(
        centerX - size.width * item[i][0],
        centerY - size.width * item[i][1],
      );
      canvas.rotate(item[i][2]);

      //  canvas.translate(-centerX, -centerY);
      painter[i].paint(
        canvas,
        Offset(-textPainter.width * .5, -textPainter.size.height * .5),
      );

      canvas.restore();
    }

    textPainter13.paint(canvas, Offset(size.width * .485, size.height * .22));
    textPainter14.paint(canvas, Offset(size.width * .13, size.height * .46));
    textPainter15.paint(canvas, Offset(size.width * .81, size.height * .46));
    textPainter16.paint(canvas, Offset(size.width * .45, size.height * .71));
    textPainter17.paint(canvas, Offset(size.width * .33, size.height * .4));
    textPainter18.paint(canvas, Offset(size.width * .44, size.height * .55));
    textPainter19.paint(canvas, Offset(size.width * .8, size.height * .0));
    textPainter20.paint(canvas, Offset(size.width * .05, size.height * .00));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomHum2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    DateTime time = DateTime.now();

    String myTime = '${time.hour}:${time.minute}';

    double centerX = size.width * .5;
    double centerY = size.height * .5;

    double outerRadius = size.width * .38;
    double outerRadius2 = size.width * .4;
    // double innerRadius = size.width * .35;

    final textStyle = TextStyle(
      color: Colors.white,
      fontSize: size.width * .2,
      fontFamily: 'Text',
    );
    final textStyle2 = TextStyle(
      color: const Color.fromARGB(255, 14, 251, 255),
      fontSize: size.width * .06,
      fontFamily: 'Text',
    );
    final textStyle3 = TextStyle(
      color: const Color.fromARGB(255, 14, 251, 255),
      fontSize: size.width * .06,
      fontFamily: 'Text',
    );

    final textSpan = TextSpan(text: '60%', style: textStyle);
    final textSpan2 = TextSpan(text: 'Humidity', style: textStyle2);
    final textSpan3 = TextSpan(text: 'Humidity', style: textStyle3);
    final textSpan4 = TextSpan(text: myTime, style: textStyle3);
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    final textPainter2 = TextPainter(
      text: textSpan2,
      textDirection: TextDirection.ltr,
    );
    final textPainter3 = TextPainter(
      text: textSpan3,
      textDirection: TextDirection.ltr,
    );
    final textPainter4 = TextPainter(
      text: textSpan4,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(minWidth: 0, maxWidth: size.width);
    textPainter2.layout(minWidth: 0, maxWidth: size.width);
    textPainter3.layout(minWidth: 0, maxWidth: size.width);
    textPainter4.layout(minWidth: 0, maxWidth: size.width);

    var paint =
        Paint()
          ..color = const Color.fromARGB(55, 255, 255, 255)
          ..strokeWidth = size.width * .1
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round;
    var paint2 =
        Paint()
          ..color = const Color.fromARGB(255, 255, 255, 255)
          ..strokeWidth = 3
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round;
    var Circlepaint = Paint()..color = const Color.fromARGB(72, 0, 255, 242);
    var Circlepaint2 =
        Paint()
          ..color = const Color.fromARGB(39, 0, 255, 242)
          ..style = PaintingStyle.fill;
    var paint5 =
        Paint()
          ..color = const Color.fromARGB(255, 14, 251, 255)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.width * .01;

    canvas.drawArc(
      Rect.fromPoints(
        Offset(size.width * .1, size.height * .2),
        Offset(size.width * .9, size.height * .8),
      ),
      18.15,
      4.5,
      false,
      paint,
    );
    // canvas.drawArc(Rect.fromPoints(Offset(size.width*.05,size.height*.05), Offset(size.width*.95, size.height*.95)), 18.4, 4, false, paint2);
    // canvas.drawArc(Rect.fromPoints(Offset(size.width*.15,size.height*.15), Offset(size.width*.85, size.height*.85)), 18.4, 4, false, paint2);
    // canvas.drawArc(Rect.fromPoints(Offset(size.width*.45,size.height*.45), Offset(size.width*.55, size.height*.55)), 18.4, 4, false, paint2);
    final Path path = Path();

    // 1. Define the two rectangles for the arcs
    final rectOuter = Rect.fromPoints(
      Offset(size.width * 0.05, size.height * 0.15),
      Offset(size.width * 0.95, size.height * 0.85),
    );

    final rectInner = Rect.fromPoints(
      Offset(size.width * 0.15, size.height * 0.25),
      Offset(size.width * 0.85, size.height * 0.75),
    );

    const double startAngle = 19.65;
    const double sweepAngle = 1.5;

    // 2. Draw outer arc
    path.addArc(rectOuter, startAngle, sweepAngle);

    // 3. Draw inner arc in the OPPOSITE direction
    // This automatically connects the end of the outer arc to the start of the inner one
    path.arcTo(rectInner, startAngle + sweepAngle, -sweepAngle, false);

    // 4. Close the path to connect the final two points
    path.close();

    canvas.drawPath(path, paint5);

    for (int i = 0; i <= 120; i += 4) {
      double x1 =
          centerX - (outerRadius + size.width * .02) * cos(i * pi / 100);
      double x2 =
          centerX - (outerRadius + size.width * .02) * -cos(i * pi / 100);
      // double x2 = centerX - innerRadius * cos(i * pi / 100);
      double y1 = centerY - outerRadius * -sin(i * pi / 100);
      // double y2 = centerY - innerRadius * -sin(i * pi / 100);

      if (i >= 28 && i <= 70) {
        canvas.drawCircle(Offset(x1, y1), size.width * .03, Circlepaint);
      } else {
        canvas.drawCircle(Offset(x1, y1), size.width * .02, Circlepaint2);
        canvas.drawCircle(Offset(x2, y1), size.width * .02, Circlepaint2);
      }
    }
    for (int i = 0; i <= 120; i += 8) {
      double x1 =
          centerX - (outerRadius + size.width * .02) * cos(i * pi / 100);
      double x2 =
          centerX - (outerRadius + size.width * .02) * -cos(i * pi / 100);
      double y1 = centerY - outerRadius * -sin(i * pi / 100);
      // double y2 = centerY - outerRadius * -sin(i * pi / 100);

      if (i >= 28 && i <= 70) {
        canvas.drawCircle(Offset(x1, y1), size.width * .05, Circlepaint);
      } else {
        canvas.drawCircle(Offset(x1, y1), size.width * .04, Circlepaint2);
        canvas.drawCircle(Offset(x2, y1), size.width * .04, Circlepaint2);
      }
    }
    for (int i = 0; i <= 120; i += 10) {
      double x1 =
          centerX - (outerRadius + size.width * .02) * cos(i * pi / 100);
      double x2 =
          centerX - (outerRadius + size.width * .02) * -cos(i * pi / 100);
      double y1 = centerY - outerRadius * -sin(i * pi / 100);

      if (i >= 28 && i <= 70) {
        canvas.drawCircle(Offset(x1, y1), size.width * .035, Circlepaint);
      } else {
        canvas.drawCircle(Offset(x1, y1), size.width * .035, Circlepaint2);
        canvas.drawCircle(Offset(x2, y1), size.width * .035, Circlepaint2);
      }
    }

    textPainter.paint(canvas, Offset(size.width * .36, size.height * .38));
    textPainter2.paint(canvas, Offset(size.width * .37, size.height * .6));
    textPainter3.paint(canvas, Offset(size.width * .05, size.height * .0));
    textPainter4.paint(canvas, Offset(size.width * .8, size.height * .0));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomPainterBars extends CustomPainter {
  bool isFirst;

  CustomPainterBars(this.isFirst);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.strokeWidth = 2;
    paint.color =
        isFirst
            ? const Color.fromARGB(204, 0, 255, 179)
            : const Color.fromARGB(215, 153, 135, 255);
    paint.style = PaintingStyle.fill;
    // Offset center = Offset(size.width/2, size.height/2);
    Rect rect = Rect.fromLTRB(
      size.width * .01,
      size.height * .08,
      size.width * .04,
      size.height * .92,
    );

    Paint paint1 = Paint();
    paint1.strokeWidth = 2;
    paint1.color =
        isFirst
            ? const Color.fromARGB(202, 0, 255, 179)
            : const Color.fromARGB(199, 153, 135, 255);
    paint1.style = PaintingStyle.fill;
    final circlePaint =
        Paint()
          ..color =isFirst? const Color.fromARGB(255, 25, 230, 32): const Color.fromARGB(255, 255, 217, 0)
          ..style = PaintingStyle.fill;

    for (double i = .04; i <= .96; i += .02) {
      canvas.drawCircle(
        Offset(size.width * i, size.height * .5),
        .5,
        circlePaint,
      );
      canvas.drawCircle(
        Offset(size.width * i, size.height * .2),
        1,
        circlePaint,
      );
      canvas.drawCircle(
        Offset(size.width * i, size.height * .3),
        .5,
        circlePaint,
      );
      canvas.drawCircle(
        Offset(size.width * i, size.height * .4),
        1,
        circlePaint,
      );
      canvas.drawCircle(
        Offset(size.width * i, size.height * .6),
        1,
        circlePaint,
      );
      canvas.drawCircle(
        Offset(size.width * i, size.height * .7),
        .5,
        circlePaint,
      );
      canvas.drawCircle(
        Offset(size.width * i, size.height * .8),
        1,
        circlePaint,
      );
    }
    // Offset center2 = Offset(size.width*.2, size.height/2);
    // Rect rect2 = Rect.fromLTRB(size.width*.05, size.height * .08, size.width*.08, size.height * .92);
    // Rect rect3 = Rect.fromLTRB(size.width*.09, size.height * .08, size.width*.12, size.height * .92);
    // Rect rect4 = Rect.fromLTRB(size.width*.13, size.height * .08, size.width*.16, size.height * .92);
    // Rect rect5 = Rect.fromLTRB(size.width*.17, size.height * .08, size.width*.2, size.height * .92);
    // Rect rect6 = Rect.fromLTRB(size.width*.21, size.height * .08, size.width*.24, size.height * .92);
    // Rect rect7 = Rect.fromLTRB(size.width*.25, size.height * .08, size.width*.28, size.height * .92);
    // Rect rect8 = Rect.fromLTRB(size.width*.29, size.height * .08, size.width*.32, size.height * .92);
    // Rect rect9 = Rect.fromLTRB(size.width*.33, size.height * .08, size.width*.36, size.height * .92);
    // Rect rect10 = Rect.fromLTRB(size.width*.37, size.height * .08, size.width*.4, size.height * .92);
    // Rect rect11 = Rect.fromLTRB(size.width*.41, size.height * .08, size.width*.44, size.height * .92);
    // Rect rect12 = Rect.fromLTRB(size.width*.45, size.height * .08, size.width*.48, size.height * .92);
    // Rect rect13 = Rect.fromLTRB(size.width*.49, size.height * .08, size.width*.52, size.height * .92);
    // Rect rect14 = Rect.fromLTRB(size.width*.53, size.height * .08, size.width*.56, size.height * .92);
    // Rect rect15 = Rect.fromLTRB(size.width*.57, size.height * .08, size.width*.6, size.height * .92);
    // Rect rect16 = Rect.fromLTRB(size.width*.61, size.height * .08, size.width*.64, size.height * .92);
    // Rect rect17 = Rect.fromLTRB(size.width*.65, size.height * .08, size.width*.68, size.height * .92);
    // Rect rect18 = Rect.fromLTRB(size.width*.69, size.height * .08, size.width*.72, size.height * .92);
    // Rect rect19 = Rect.fromLTRB(size.width*.73, size.height * .08, size.width*.76, size.height * .92);
    // Rect rect20 = Rect.fromLTRB(size.width*.77, size.height * .08, size.width*.8, size.height * .92);
    // Rect rect21 = Rect.fromLTRB(size.width*.81, size.height * .08, size.width*.84, size.height * .92);
    // Rect rect22 = Rect.fromLTRB(size.width*.85, size.height * .08, size.width*.88, size.height * .92);
    // Rect rect23 = Rect.fromLTRB(size.width*.89, size.height * .08, size.width*.92, size.height * .92);
    // Rect rect24 = Rect.fromLTRB(size.width*.93, size.height * .08, size.width*.96, size.height * .92);
    // Rect rect25 = Rect.fromLTRB(size.width*.85, size.height * .08, size.width*.87, size.height * .92);
    // Rect rect26 = Rect.fromLTRB(size.width*.885, size.height * .08, size.width*.905, size.height * .92);
    // Rect rect27 = Rect.fromLTRB(size.width*.71, size.height * .08, size.width*.73, size.height * .92);

    // Rect rect22 = Rect.fromLTRB(425, size.height * .08, 440, size.height * .92);
    // Rect rect23 = Rect.fromLTRB(445, size.height * .08, 460, size.height * .92);
    // Rect rect24 = Rect.fromLTRB(465, size.height * .08, 480, size.height * .92);
    // Rect rect25 = Rect.fromLTRB(485, size.height * .08, 500, size.height * .92);

    // canvas.drawRRect(RRect.fromRectAndRadius(rect, Radius.circular(size.width*.008)), paint);
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect2, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect3, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect4, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect5, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect6, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect7, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect8, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect9, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect10, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect11, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect12, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect13, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect14, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect15, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect16, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect17, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect18, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect19, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect20, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect21, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect22, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect23, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect24, Radius.circular(size.width*.008)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect25, Radius.circular(5)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect26, Radius.circular(5)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect27, Radius.circular(5)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect22, Radius.circular(5)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect23, Radius.circular(5)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect24, Radius.circular(5)),
    //   paint1,
    // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect25, Radius.circular(5)),
    //   paint1,
    // );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomCFM2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    DateTime time = DateTime.now();
    String myTime = '${time.hour}:${time.minute}';

    final textStyle = TextStyle(
      color: Colors.white,
      fontSize: size.width * .16,
      fontFamily: 'Text',
    );
    final textStyle2 = TextStyle(
      color: const Color.fromARGB(255, 223, 223, 223),
      fontSize: size.width * .05,
      fontFamily: 'Text',
    );
    final textStyle3 = TextStyle(
      color: const Color.fromARGB(255, 0, 183, 255),
      fontSize: size.width * .06,
      fontFamily: 'Text',
    );

    final textSpan = TextSpan(text: '10', style: textStyle);

    final textSpan2 = TextSpan(text: 'CFM', style: textStyle2);
    final textSpan3 = TextSpan(text: '00', style: textStyle2);
    final textSpan4 = TextSpan(text: '05', style: textStyle2);
    final textSpan5 = TextSpan(text: '10', style: textStyle2);
    final textSpan6 = TextSpan(text: '15', style: textStyle2);
    final textSpan7 = TextSpan(text: 'Indoor CFM', style: textStyle3);
    final textSpan8 = TextSpan(text: '$myTime', style: textStyle3);

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
    final textpainter4 = TextPainter(
      text: textSpan4,
      textDirection: TextDirection.ltr,
    );
    final textpainter5 = TextPainter(
      text: textSpan5,
      textDirection: TextDirection.ltr,
    );
    final textpainter6 = TextPainter(
      text: textSpan6,
      textDirection: TextDirection.ltr,
    );
    final textpainter7 = TextPainter(
      text: textSpan7,
      textDirection: TextDirection.ltr,
    );
    final textpainter8 = TextPainter(
      text: textSpan8,
      textDirection: TextDirection.ltr,
    );

    textpainter.layout(minWidth: 0, maxWidth: size.width);

    textpainter2.layout(minWidth: 0, maxWidth: size.width);
    textpainter3.layout(minWidth: 0, maxWidth: size.width);
    textpainter4.layout(minWidth: 0, maxWidth: size.width);
    textpainter5.layout(minWidth: 0, maxWidth: size.width);
    textpainter6.layout(minWidth: 0, maxWidth: size.width);
    textpainter7.layout(minWidth: 0, maxWidth: size.width);
    textpainter8.layout(minWidth: 0, maxWidth: size.width);

    double centerX = size.width * .5;
    double centerY = size.height * .5;

    double outerRadius = size.width * .25;
    double outerRadius2 = size.width * .45;
    double innerRadius = size.width * .22;
    final rect = Rect.fromPoints(
      Offset(size.width * .06, size.height * .18),
      Offset(size.width * .94, size.height * .82),
    );

    const LinearGradient gradient = LinearGradient(
      colors: [
        Color.fromARGB(255, 71, 172, 255),
        Color.fromARGB(255, 7, 77, 255),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
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
          ..strokeWidth = size.width * .035;

    final CirclePaint4 =
        Paint()
          ..color = const Color.fromARGB(255, 0, 0, 0)
          ..style = PaintingStyle.fill;

    final CirclePaint5 =
        Paint()
          // ..color = const Color.fromARGB(255, 0, 174, 255)
          ..shader = gradient.createShader(rect)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.width * .025
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
          ..strokeWidth = size.width * .01;

    canvas.drawCircle(
      Offset(size.width * .5, size.height * .5),
      size.width * .5,
      CirclePaint,
    );
    canvas.drawCircle(
      Offset(size.width * .5, size.height * .5),
      size.width * .38,
      CirclePaint2,
    );
    canvas.drawCircle(
      Offset(size.width * .5, size.height * .5),
      size.width * .32,
      CirclePaint3,
    );
    canvas.drawArc(rect, pi, 6, false, CirclePaint5);
    for (int i = 0; i < 278; i += 4) {
      double x1 = centerX - outerRadius * cos(i * pi / 140);
      double y1 = centerY - outerRadius * sin(i * pi / 140);
      double x2 = centerX - innerRadius * cos(i * pi / 140);
      double y2 = centerY - innerRadius * sin(i * pi / 140);

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), LinePaint);

      canvas.drawCircle(
        Offset(size.width * .5, size.height * .5),
        size.width * .2,
        CirclePaint4,
      );
    }
    canvas.drawCircle(
      Offset(size.width * .07, size.height * .5),
      size.width * .05,
      CirclePaint6,
    );
    canvas.drawCircle(
      Offset(size.width * .5, size.height * .16),
      size.width * .05,
      CirclePaint6,
    );
    canvas.drawCircle(
      Offset(size.width * .93, size.height * .5),
      size.width * .05,
      CirclePaint6,
    );
    canvas.drawCircle(
      Offset(size.width * .49, size.height * .835),
      size.width * .05,
      CirclePaint6,
    );
    textpainter.paint(canvas, Offset(size.width * .41, size.height * .39));
    textpainter2.paint(canvas, Offset(size.width * .465, size.height * .56));
    textpainter4.paint(canvas, Offset(size.width * .47, size.height * .135));
    textpainter3.paint(canvas, Offset(size.width * .04, size.height * .47));
    textpainter5.paint(canvas, Offset(size.width * .9, size.height * .47));
    textpainter6.paint(canvas, Offset(size.width * .46, size.height * .81));
    textpainter7.paint(canvas, Offset(size.width * .05, size.height * .0));
    textpainter8.paint(canvas, Offset(size.width * .8, size.height * .0));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
