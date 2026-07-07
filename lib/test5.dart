import 'dart:math';

import 'package:flutter/material.dart';
import 'package:installation_project/DataProcessing.dart';
import 'package:installation_project/checking.dart';
import 'package:installation_project/main.dart';
import 'package:provider/provider.dart';

class Test5 extends StatefulWidget {
  const Test5({super.key});

  State<Test5> createState() => _Test5State();
}

class _Test5State extends State<Test5> {
  @override
  Widget build(BuildContext context) {
    double MyHeight = MediaQuery.of(context).size.height;
    double MyWidth = MediaQuery.of(context).size.width;
    Provider.of<ItemData>(context, listen: false).startMqtt();
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Consumer<CombinedClass>(
          builder: (context,value,child) {
            double oldVal = value.ampVal.AmpereVal.oldAmp!;
            double NewVal = value.ampVal.AmpereVal.newAmp!;
            return Container(
              height: MyWidth,
              width: MyWidth,
              color: Colors.black,
              child: Text('this is old Amp $oldVal and this currentVal $NewVal',
              style: TextStyle(
                color: Colors.white, 
                fontSize: 30
              ),),
            );
          }
        ),
      ),
    );
  }
}

class CustomHum extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.height * .5;
    double centerY = size.width * .5;

    double outerRadius = size.width * .4;
    double outerRadius2 = size.width * .4;
    double innerRadius = size.width * .35;

    final textStyle = TextStyle(
      color: Colors.white,
      fontSize: 70,
      fontFamily: 'Text',
    );
    final textStyle2 = TextStyle(
      color: const Color.fromARGB(255, 14, 251, 255),
      fontSize: 30,
      fontFamily: 'Text',
    );

    final textSpan = TextSpan(text: '60%', style: textStyle);
    final textSpan2 = TextSpan(text: 'Humidity', style: textStyle2);
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

    var paint =
        Paint()
          ..color = const Color.fromARGB(55, 255, 255, 255)
          ..strokeWidth = 48
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round;
    var paint2 =
        Paint()
          ..color = const Color.fromARGB(255, 255, 255, 255)
          ..strokeWidth = 3
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round;
    var Circlepaint = Paint()..color = const Color.fromARGB(59, 0, 255, 242);
    var Circlepaint2 =
        Paint()
          ..color = const Color.fromARGB(16, 0, 255, 242)
          ..style = PaintingStyle.fill;
    var paint5 =
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2.0;

    canvas.drawArc(
      Rect.fromPoints(
        Offset(size.width * .1, size.height * .1),
        Offset(size.width * .9, size.height * .9),
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
      Offset(size.width * 0.05, size.height * 0.05),
      Offset(size.width * 0.95, size.height * 0.95),
    );

    final rectInner = Rect.fromPoints(
      Offset(size.width * 0.15, size.height * 0.15),
      Offset(size.width * 0.85, size.height * 0.85),
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

    for (int i = 0; i <= 100; i += 4) {
      double x1 = centerX - outerRadius * cos(i * pi / 100);
      double x2 = centerX - innerRadius * cos(i * pi / 100);
      double y1 = centerY - outerRadius * -sin(i * pi / 100);
      double y2 = centerY - innerRadius * -sin(i * pi / 100);

      if (i >= 28 && i <= 70) {
        canvas.drawCircle(Offset(x1, y1), 10, Circlepaint);
      } else {
        canvas.drawCircle(Offset(x1, y1), 10, Circlepaint2);
      }
    }
    for (int i = 0; i <= 100; i += 8) {
      double x1 = centerX - outerRadius * cos(i * pi / 100);
      double y1 = centerY - outerRadius * -sin(i * pi / 100);

      if (i >= 28 && i <= 70) {
        canvas.drawCircle(Offset(x1, y1), 15, Circlepaint);
      } else {
        canvas.drawCircle(Offset(x1, y1), 15, Circlepaint2);
      }
    }
    for (int i = 0; i <= 100; i += 10) {
      double x1 = centerX - outerRadius * cos(i * pi / 100);
      double y1 = centerY - outerRadius * -sin(i * pi / 100);

      if (i >= 28 && i <= 70) {
        canvas.drawCircle(Offset(x1, y1), 20, Circlepaint);
      } else {
        canvas.drawCircle(Offset(x1, y1), 20, Circlepaint2);
      }
    }

    textPainter.paint(canvas, Offset(size.width * .4, size.height * .38));
    textPainter2.paint(canvas, Offset(size.width * .37, size.height * .6));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomPaintInTemp extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
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

   

    double centerX = size.height * .5;
    double centerY = size.width * .5;

    double outerRadius = size.width * .45;
    double innerRadius = size.width * .46;

    final textStyle = TextStyle(
      color: Colors.white,
      fontSize: 15,
      fontFamily: 'Text',
    );
    final textStyle2 = TextStyle(
      color: Colors.white,
      fontSize: 30,
      fontFamily: 'Text',
    );
    final textStyle3 = TextStyle(
      color: Colors.red,
      fontSize: 30,
      fontFamily: 'Text',
    );
    final textStyle4 = TextStyle(
      color: const Color.fromARGB(124, 255, 255, 255),
      fontSize: 80,
      fontFamily: 'Text',
    );
    final textStyle5 = TextStyle(
      color: const Color.fromARGB(127, 255, 255, 255),
      fontSize: 40,
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
          ..color = const Color.fromARGB(255, 84, 40, 29)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 30;
    var paint2 =
        Paint()
          ..color = const Color.fromARGB(255, 101, 53, 41)
          ..style = PaintingStyle.fill
          ..strokeWidth = 30;
    var paint3 =
        Paint()
          ..color = const Color.fromARGB(255, 46, 20, 3)
          ..style = PaintingStyle.fill
          ..strokeWidth = 30;

    var linePaint =
        Paint()
          ..color = const Color.fromARGB(109, 255, 255, 255)
          ..style = PaintingStyle.stroke
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
      double x1 = centerX - outerRadius * cos(i * pi / 120);
      double x2 = centerX - innerRadius * cos(i * pi / 120);
      double y1 = centerY - outerRadius * sin(i * pi / 120);
      double y2 = centerY - innerRadius * sin(i * pi / 120);

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), linePaint);
    }
    for (int i = 0; i <= 11; i+=1) {
      canvas.save();
      canvas.translate(centerX - size.width* item[i][0], centerY - size.height * item[i][1]);
      canvas.rotate(item[i][2]);

      //  canvas.translate(-centerX, -centerY);
      painter[i].paint(
        canvas,
        Offset(-textPainter.width * .5, -textPainter.size.height * .5),
      );

      canvas.restore();
    }

    textPainter13.paint(canvas, Offset(size.width * .485, size.height * .12));
    textPainter14.paint(canvas, Offset(size.width * .13, size.height * .46));
    textPainter15.paint(canvas, Offset(size.width * .81, size.height * .46));
    textPainter16.paint(canvas, Offset(size.width * .475, size.height * .79));
    textPainter17.paint(canvas, Offset(size.width * .32, size.height * .35));
    textPainter18.paint(canvas, Offset(size.width * .43, size.height * .58));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
