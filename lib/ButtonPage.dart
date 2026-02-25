import 'dart:math';

import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget{

  const ButtonPage ({super.key});

  @override 
  State<ButtonPage> createState()=> _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {

@override 
Widget build(BuildContext context){

   double MyHeight = MediaQuery.of(context).size.height;
   double MyWidth = MediaQuery.of(context).size.width;

  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 50, 50, 50),
    body: Column(
      children: [
        Row(
          children: [
            Container(
              height: MyHeight*.25,
              width: MyWidth*.5,
              color: const Color.fromARGB(0, 255, 255, 255),
              child: Row(
                children: [
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: CustomPaint(
                      painter: CustomButtons(),
                    ),
                  ),
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: CustomPaint(
                      painter: CustomButtons2(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MyHeight*.25,
              width: MyWidth*.5,
              color: const Color.fromARGB(0, 244, 67, 54),
              child: Row(
                children: [
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: CustomPaint(
                      painter: CustomButtons(),
                    ),
                  ),
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: CustomPaint(
                      painter: CustomButtons2(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              height: MyHeight*.25,
              width: MyWidth*.5,
              color: const Color.fromARGB(0, 255, 255, 255),
              child: Row(
                children: [
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: CustomPaint(
                      painter: CustomButtons(),
                    ),
                  ),
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: CustomPaint(
                      painter: CustomButtons2(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MyHeight*.25,
              width: MyWidth*.5,
              color: const Color.fromARGB(0, 244, 67, 54),
              child: Row(
                children: [
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: CustomPaint(
                      painter: CustomButtons(),
                    ),
                  ),
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: CustomPaint(
                      painter: CustomButtons2(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              height: MyHeight*.25,
              width: MyWidth*.5,
              color: const Color.fromARGB(0, 255, 255, 255),
              child: Row(
                children: [
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: CustomPaint(
                      painter: CustomButtons(),
                    ),
                  ),
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: CustomPaint(
                      painter: CustomButtons2(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MyHeight*.25,
              width: MyWidth*.5,
              color: const Color.fromARGB(0, 244, 67, 54),
              child: Row(
                children: [
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: CustomPaint(
                      painter: CustomButtons(),
                    ),
                  ),
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: CustomPaint(
                      painter: CustomButtons2(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              height: MyHeight*.25,
              width: MyWidth*.5,
              color: const Color.fromARGB(0, 255, 255, 255),
              child: Row(
                children: [
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: CustomPaint(
                      painter: CustomButtons(),
                    ),
                  ),
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: CustomPaint(
                      painter: CustomButtons2(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MyHeight*.25,
              width: MyWidth*.5,
              color: const Color.fromARGB(0, 244, 67, 54),
              child: Row(
                children: [
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: CustomPaint(
                      painter: CustomButtons(),
                    ),
                  ),
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: CustomPaint(
                      painter: CustomButtons2(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    )
  );
}
}
// Center(
//       child: Container(
//         height: MyHeight*.5,
//         width: MyWidth,
//         color: const Color.fromARGB(255, 92, 37, 33),
//         child: CustomPaint(
//           painter: CustomButtons(),
//         ),
//       ),
//     )


class CustomButtons extends CustomPainter{
  @override 
  void paint(Canvas canvas, Size size){

    double centerX = size.width*.5;
    double centerY = size.height*.5;
    int i =0;
    

    final circlePainter = Paint()
    ..color =  const Color.fromARGB(193, 0, 0, 0) ;

    final circlePainter2 = Paint()
    ..color =  const Color.fromARGB(255, 53, 53, 53) ;

    final circlePainter3 = Paint()
    ..color =  const Color.fromARGB(255, 0, 0, 0)
    ..maskFilter = MaskFilter.blur(BlurStyle.normal, 10);

    final circlePainter4 = Paint()
    ..color =  const Color.fromARGB(190, 21, 22, 20)
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = size.width*.07;
    final circlePainter5 = Paint()
    ..color =  const Color.fromARGB(255, 157, 255, 28)
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 20
    ..maskFilter = MaskFilter.blur(BlurStyle.outer, 10);

    final LinePaint = Paint()
    ..color =  const Color.fromARGB(190, 21, 22, 20)
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = size.width*.07;
    // final LinePaint2 = Paint()
    // ..color =  const Color.fromARGB(255, 157, 255, 28)
    // ..style = PaintingStyle.stroke
    // ..strokeCap = StrokeCap.round
    // ..strokeWidth = 20
    // ..maskFilter = MaskFilter.blur(BlurStyle.outer, 10);
    ;


    canvas.drawCircle(Offset(centerX, centerY), size.width*.5, circlePainter);
    canvas.drawCircle(Offset(centerX, centerY*1.05), size.width*.5, circlePainter3);
    canvas.drawCircle(Offset(centerX, centerY), size.width*.48, circlePainter2);
    canvas.drawArc(Rect.fromCircle(center: Offset(centerX, centerY), radius: size.width*.2), pi*1.3,-pi*1.6, false, circlePainter4);
   
    canvas.drawLine(Offset(centerX, centerY*.95), Offset(centerX, centerY*.7), LinePaint);
    
  }

  @override 
  bool shouldRepaint(covariant CustomPainter oldDelegate){
    return false;
  }
}
class CustomButtons2 extends CustomPainter{
  @override 
  void paint(Canvas canvas, Size size){

    double centerX = size.width*.5;
    double centerY = size.height*.5;
    int i =0;
    

    final circlePainter = Paint()
    ..color =  const Color.fromARGB(144, 0, 0, 0) ;

    final circlePainter2 = Paint()
    ..color =  const Color.fromARGB(255, 39, 39, 39) ;

    

    final circlePainter4 = Paint()
    ..color =  const Color.fromARGB(255, 157, 255, 28)
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = size.width*.07;
    final circlePainter5 = Paint()
    ..color =  const Color.fromARGB(255, 157, 255, 28)
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = size.width*.07
    ..maskFilter = MaskFilter.blur(BlurStyle.outer, 10);

    final LinePaint = Paint()
    ..color =  const Color.fromARGB(255, 157, 255, 28)
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = size.width*.07;
    final LinePaint2 = Paint()
    ..color =  const Color.fromARGB(255, 157, 255, 28)
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = size.width*.07
    ..maskFilter = MaskFilter.blur(BlurStyle.outer, 10);
    ;


    canvas.drawCircle(Offset(centerX, centerY), size.width*.5, circlePainter);
    // canvas.drawCircle(Offset(centerX, centerY*1.1), 190, circlePainter3);
    canvas.drawCircle(Offset(centerX, centerY), size.width*.47, circlePainter2);
    canvas.drawArc(Rect.fromCircle(center: Offset(centerX, centerY), radius: size.width*.2), pi*1.3,-pi*1.6, false, circlePainter4);
    canvas.drawArc(Rect.fromCircle(center: Offset(centerX, centerY), radius: size.width*.2), pi*1.3,-pi*1.6, false, circlePainter5);
    canvas.drawLine(Offset(centerX, centerY*.95), Offset(centerX, centerY*.7), LinePaint);
    canvas.drawLine(Offset(centerX, centerY*.95), Offset(centerX, centerY*.7), LinePaint2);
  }

  @override 
  bool shouldRepaint(covariant CustomPainter oldDelegate){
    return false;
  }
}