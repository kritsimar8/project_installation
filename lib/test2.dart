import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Test2 extends StatefulWidget {
  const Test2({super.key});

  @override
  State<Test2> createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  @override
  Widget build(BuildContext context) {
    final MyHeight = MediaQuery.of(context).size.height;
    final MyWidth = MediaQuery.of(context).size.width;

    print('This is my Height' + MyHeight.toString());
    print('This is my width' + MyWidth.toString());

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: MyHeight * .3,
          width: MyWidth * .8,
          color: Colors.grey,
        ),
      ),
      // body: Container(
      //   height: MyHeight * 0.5,
      //   width: MyWidth * .99,
      //   color: const Color.fromARGB(255, 43, 42, 42),
      //   child: CustomPaint(painter: CustomPainter10()),
      // ),
    );
  }
}

class CustomPainter10 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint =
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2;

   

    

    canvas.drawLine(
      Offset(size.width * .2, size.height * .95),
      Offset(size.width * .8, size.height * .95),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * .208, size.height * .95),
      Offset(size.width * .208, size.height * .9),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * .275, size.height * .95),
      Offset(size.width * .275, size.height * .92),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * .35, size.height * .95),
      Offset(size.width * .35, size.height * .9),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * .425, size.height * .95),
      Offset(size.width * .425, size.height * .92),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * .5, size.height * .95),
      Offset(size.width * .5, size.height * .9),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * .575, size.height * .95),
      Offset(size.width * .575, size.height * .92),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * .65, size.height * .95),
      Offset(size.width * .65, size.height * .9),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * .725, size.height * .95),
      Offset(size.width * .725, size.height * .92),
      paint,
    );
    canvas.drawLine(
      Offset(size.width * .793, size.height * .95),
      Offset(size.width * .793, size.height * .9),
      paint,
    );

  
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomGasInd extends CustomPainter{
  double rotate; 
  CustomGasInd({required this.rotate});
  @override 
  void paint(Canvas canvas, Size size) {
     var paintStick =
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.fill
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 5;

    final startPoint = Offset(size.width * .5, size.height * .3);
    final tipPoint = Offset(size.width * .5, size.height * .8);

    final midPoint = Offset(
      (startPoint.dx + tipPoint.dx) / 2,
      (startPoint.dy + tipPoint.dy) / 2 * .85,
    );


      canvas.save();

    // canvas.translate(50,-30);
    canvas.translate(midPoint.dx * .99, midPoint.dy * .99);

    double angle = rotate * (3.14159 / 180);

    canvas.rotate(angle);
    canvas.translate(-midPoint.dx * .99, -midPoint.dy * .99);

    final path = Path();
    path.moveTo(size.width * .52, size.height * .3);
    path.lineTo(size.width * .5, size.height * .8);
    path.lineTo(size.width * .48, size.height * .3);
    path.lineTo(size.width * .51, size.height * .3);

    canvas.drawPath(path, paintStick);
    final circlePaint =
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.fill;
    final circlePaint2 =
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.fill;

    canvas.drawCircle(midPoint, 4.0, circlePaint);
    canvas.drawCircle(midPoint, 1.0, circlePaint2);

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class CustomPainterTest extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final circlePaint =
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.fill;

    var paintStick =
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.fill
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 5;

    canvas.drawCircle(
      Offset(size.width * .5, size.height * .5),
      size.height * .2,
      circlePaint,
    );
    final path = Path();
    path.moveTo(size.width * .52, size.height * .3);
    path.lineTo(size.width * .5, size.height * .8);
    path.lineTo(size.width * .48, size.height * .3);
    path.lineTo(size.width * .51, size.height * .3);

    canvas.drawPath(path, paintStick);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
