import 'dart:math';

import 'package:flutter/material.dart';

class Test3 extends StatefulWidget {
  const Test3({super.key});

  @override
  State<Test3> createState() => _Test3State();
}

class _Test3State extends State<Test3> {
  @override
  Widget build(BuildContext context) {
    final MyHeight = MediaQuery.of(context).size.height;
    final MyWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          height: MyHeight * .7,
          width: MyWidth * .8,
          color: Colors.black,
          child: CustomPaint(painter: DialPainter()),
        ),
      ),
    );
  }
}

class DialPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width * .5;
    double centerY = size.height * .5;

    double outerRadius = 165;
    double outerRadius2 = 127;
    double innerRadius = 110;
    double innerRadius2 = 155;

    final textstyle = TextStyle(
      color: const Color.fromARGB(186, 255, 255, 255), 
      fontSize:75,
      fontWeight: FontWeight.bold,
      // fontStyle: FontStyle.italic

    );
    final textstyle2 = TextStyle(
      color: const Color.fromARGB(186, 255, 255, 255), 
      fontSize:15,
      fontWeight: FontWeight.bold,
      // fontStyle: FontStyle.italic

    );

    final textSpan = TextSpan(
      text: '10',

      style: textstyle
    );
    final textSpan2 = TextSpan(
      text: 'Amp',

      style: textstyle2
    );

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr
    );
    final textPainter2 = TextPainter(
      text: textSpan2,
      textDirection: TextDirection.ltr
    );

    textPainter.layout(
      minWidth: 0,maxWidth: size.width,
    );
    textPainter2.layout(
      minWidth: 0,maxWidth: size.width,
    );

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
            Rect.fromCircle(center: midPoint, radius: 200),
          )
          ..strokeWidth = 1
          ..style = PaintingStyle.fill;
    final circlePaint3 =
        Paint()
          ..shader = gradient2.createShader(
            Rect.fromCircle(center: midPoint, radius: 190),
          )
          ..color = Colors.white
          ..strokeWidth = 5
          ..style = PaintingStyle.stroke;

    final circlePaint4 =
        Paint()
          ..color = const Color.fromARGB(255, 0, 0, 0)
          ..strokeWidth = 2
          ..style = PaintingStyle.fill;
    final circlePaint5 =
        Paint()
          ..color = const Color.fromARGB(255, 0, 187, 255)
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
          ..color = const Color.fromARGB(13, 255, 255, 255)
          ..style = PaintingStyle.fill
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 2;
    var paintStick3 =
        Paint()
          ..color = const Color.fromARGB(16, 255, 255, 255)
          ..style = PaintingStyle.fill
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 2;
    var paintStick4 =
        Paint()
          ..color = const Color.fromARGB(255, 6, 168, 255)
          ..style = PaintingStyle.fill
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 2;
    final circlePaint6 =
        Paint()
          ..color = const Color.fromARGB(255, 128, 128, 128)
          ..strokeWidth = 2
          ..style = PaintingStyle.fill;

    final shadowPaint =
        Paint()
          ..color = const Color.fromARGB(255, 0, 149, 255)
          ..maskFilter = MaskFilter.blur(BlurStyle.normal, 20.0);
    final shadowPaint2 =
        Paint()
          ..color = const Color.fromARGB(255, 5, 188, 255)
          ..maskFilter = MaskFilter.blur(BlurStyle.normal, 11.0);

    final circlePaint7 =
        Paint()
          ..color = const Color.fromARGB(255, 0, 0, 0)
          ..strokeWidth = 2
          ..style = PaintingStyle.fill;
    final circlePaint8 =
        Paint()
          ..color = const Color.fromARGB(108, 0, 0, 0)
          ..strokeWidth = 2
          ..style = PaintingStyle.fill;
    final circlePaint9 =
        Paint()
          ..color = const Color.fromARGB(155, 5, 188, 255)
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke;

    canvas.drawCircle(midPoint, 200, circlePaint);
    canvas.drawCircle(midPoint, 200, circlePaint2);
    canvas.drawCircle(midPoint, 190, circlePaint3);
    canvas.drawCircle(midPoint, 185, circlePaint4);
    
    for (int i = 240; i < 520; i += 4) {
      double x4 = centerX - (outerRadius2-2) * cos(i * pi / 260);
      double y4 = centerY - (outerRadius2-2) * sin(i * pi / 260);
      double x3 = centerX - innerRadius * cos(i * pi / 260);
      double y3 = centerY - innerRadius * sin(i * pi / 260);
      double x5 = centerX - (outerRadius) * cos(i * pi / 260);
      double y5 = centerY - (outerRadius) * sin(i * pi / 260);
      double x6 = centerX - innerRadius * cos(i * pi / 260);
      double y6 = centerY - innerRadius * sin(i * pi / 260);
      double x7 = centerX - innerRadius2 * cos(i * pi / 260);
      double y7 = centerY - innerRadius2 * sin(i * pi / 260);
      if (i<310 || i > 470){
         canvas.drawLine(Offset(x4, y4), Offset(x3, y3), paintStick3);
      }
      canvas.drawLine(Offset(x5, y5),Offset(x6, y6),paintStick3);
      if(i> 380 && i< 460){
          canvas.drawLine(Offset(x5, y5),Offset(x7, y7),paintStick4);
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
      double x5 = centerX - outerRadius * cos(i * pi / 260);
      double y5 = centerY - outerRadius * sin(i * pi / 260);

             

      if (i % 4 == 0) {
        canvas.drawLine(Offset(x4, y4), Offset(x3, y3), paintStick2);
        canvas.drawLine(Offset(x5, y5),Offset(x3, y3),paintStick3);
      }
   
      if (i % 10 == 0 && i <= 240) {
        if (i % 40 == 0) {
          canvas.drawCircle(Offset(x1, y1), 9.5, shadowPaint2);
          canvas.drawCircle(Offset(x1, y1), 5, circlePaint5);
        } else {
          canvas.drawCircle(Offset(x1, y1), 3, circlePaint5);
        }

        i <= 30 && i != 0
            ? canvas.drawCircle(Offset(x2, y2), 3, circlePaint5)
            : Null;
      }
    }
    canvas.drawCircle(midPoint2, 110, shadowPaint);
    canvas.drawCircle(midPoint, 110, circlePaint7);

    final path = Path();
    path.moveTo(size.width * .495, size.height * .5);
    path.lineTo(size.width * .495, size.height * .25);
    path.lineTo(size.width * .51, size.height * .25);
    path.lineTo(size.width * .51, size.height * .5);
    path.lineTo(size.width * .495, size.height * .5);

    canvas.drawPath(path, paintStick);
    canvas.drawCircle(midPoint, 15, circlePaint6);


 
    canvas.drawCircle(midPoint, 110, circlePaint8);
    canvas.drawCircle(midPoint, 110, circlePaint9);
    textPainter.paint(canvas, Offset(midPoint2.dx-40,midPoint2.dy-30));
    textPainter2.paint(canvas, Offset(midPoint2.dx-15,midPoint2.dy+60));

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
