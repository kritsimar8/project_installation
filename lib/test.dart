import 'dart:math';
// import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';

import 'package:flutter/material.dart';
import 'package:installation_project/second_page.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {

    final MyHeight = MediaQuery.of(context).size.height;
    final MyWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 0),
          color: const Color.fromARGB(34, 255, 255, 255),
          height: 100,
          width: 500,
          child: CustomPaint(
            painter: CustomPainterBar(),
          ),
        ),
      ),
    );
  }
}


class CustomPainterBar extends CustomPainter {
  @override 
  void paint(Canvas canvas, Size size){
    var midPoint = Offset(size.width*.5,size.height*.5);

    final circlePaint = Paint()
    ..color = const Color.fromARGB(255, 25, 230, 32)
    ..style = PaintingStyle.fill;

    for (double i=.10; i<= .9; i+=.02){
       canvas.drawCircle(Offset(size.width*i,size.height*.5), 2, circlePaint);
        canvas.drawCircle(Offset(size.width*i,size.height*.34), 2, circlePaint);
         canvas.drawCircle(Offset(size.width*i,size.height*.42), 2, circlePaint);
           canvas.drawCircle(Offset(size.width*i,size.height*.58), 2, circlePaint);
            canvas.drawCircle(Offset(size.width*i,size.height*.66), 2, circlePaint);
    }


    // canvas.drawCircle(Offset(size.width*.5,size.height*.5), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.48,size.height*.5), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.46,size.height*.5), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.44,size.height*.5), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.42,size.height*.5), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.4,size.height*.5), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.38,size.height*.5), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.36,size.height*.5), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.34,size.height*.5), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.32,size.height*.5), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.3,size.height*.5), 2, circlePaint);



    // canvas.drawCircle(Offset(size.width*.5,size.height*.34), 2, circlePaint);
    //     canvas.drawCircle(Offset(size.width*.48,size.height*.34), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.46,size.height*.34), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.44,size.height*.34), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.42,size.height*.34), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.4,size.height*.34), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.38,size.height*.34), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.36,size.height*.34), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.34,size.height*.34), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.32,size.height*.34), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.3,size.height*.34), 2, circlePaint);

    
    // canvas.drawCircle(Offset(size.width*.5,size.height*.42), 2, circlePaint);
    //  canvas.drawCircle(Offset(size.width*.48,size.height*.42), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.46,size.height*.42), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.44,size.height*.42), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.42,size.height*.42), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.4,size.height*.42), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.38,size.height*.42), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.36,size.height*.42), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.34,size.height*.42), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.32,size.height*.42), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.3,size.height*.42), 2, circlePaint);

    //  canvas.drawCircle(Offset(size.width*.5,size.height*.58), 2, circlePaint);
    //      canvas.drawCircle(Offset(size.width*.5,size.height*.58), 2, circlePaint);
    //  canvas.drawCircle(Offset(size.width*.48,size.height*.58), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.46,size.height*.58), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.44,size.height*.58), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.42,size.height*.58), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.4,size.height*.58), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.38,size.height*.58), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.36,size.height*.58), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.34,size.height*.58), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.32,size.height*.58), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.3,size.height*.58), 2, circlePaint);

    // canvas.drawCircle(Offset(size.width*.3,size.height*.66), 2, circlePaint);
    //      canvas.drawCircle(Offset(size.width*.5,size.height*.66), 2, circlePaint);
    //      canvas.drawCircle(Offset(size.width*.5,size.height*.66), 2, circlePaint);
    //  canvas.drawCircle(Offset(size.width*.48,size.height*.66), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.46,size.height*.66), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.44,size.height*.66), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.42,size.height*.66), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.4,size.height*.66), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.38,size.height*.66), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.36,size.height*.66), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.34,size.height*.66), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.32,size.height*.66), 2, circlePaint);
    // canvas.drawCircle(Offset(size.width*.3,size.height*.66), 2, circlePaint);
  }

  @override 
  bool shouldRepaint(covariant CustomPainter oldDelegate){
    return false; 
  }
}







class CustomPainter1 extends CustomPainter {
  @override 
  void paint(Canvas canvas ,Size size){

    final textstyle = TextStyle(
      color: const Color.fromARGB(186, 255, 255, 255), 
      fontSize: 15,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic

    );

    final textSpan = TextSpan(
      text: '10',

      style: textstyle
    );

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr
    );

    textPainter.layout(
      minWidth: 0,maxWidth: size.width,
    );

   
   

    var centerX = size.width*.9;
    var centerY = size.height/2;
   

    var center = Offset(centerX, centerY);
    var radius = size.height/2;

    var outerRadius = radius-20 ;
    var innerRadius = radius - 37;
    var innerRadius2 = radius - 60;
    var innerRadius3 = radius - 60;

    var hourDashPaint = Paint()
    ..color = Colors.white
    ..strokeWidth = 4
    ..style = PaintingStyle.stroke 
    ..strokeCap = StrokeCap.round; 

    print(size.width);
    var paint = Paint()
    ..color = Colors.white 
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round 
    ..strokeWidth= 5;
    var paintStick = Paint()
    ..color = Colors.white 
    ..style = PaintingStyle.fill
    ..strokeCap = StrokeCap.round 
    ..strokeWidth= 5;
    var paint2 = Paint()
    ..color = const Color.fromARGB(255, 90, 90, 90) 
    ..style = PaintingStyle.stroke 
    ..strokeWidth= 5;
    var paint3 = Paint()
    ..color =  const Color.fromARGB(255, 90, 90, 90) 
    ..style = PaintingStyle.stroke 
    ..strokeWidth= 6;
    var paint4 = Paint()
    ..color =  const Color.fromARGB(255, 90, 90, 90) 
    ..style = PaintingStyle.stroke 
    ..strokeWidth= 7;
    var paint5 = Paint()
    ..color =  const Color.fromARGB(255, 90, 90, 90) 
    ..style = PaintingStyle.stroke 
    ..strokeWidth= 8;
    var paint6 = Paint()
    ..color =  const Color.fromARGB(255, 90, 90, 90) 
    ..style = PaintingStyle.stroke 
    ..strokeWidth= 9;
    var paint7 = Paint()
    ..color =  const Color.fromARGB(255, 90, 90, 90) 
    ..style = PaintingStyle.stroke 
    ..strokeWidth= 10;
    var paint8 = Paint()
    ..color =  const Color.fromARGB(255, 90, 90, 90) 
    ..style = PaintingStyle.stroke 
    ..strokeWidth= 11;
    var paint9 = Paint()
    ..color =  const Color.fromARGB(255, 90, 90, 90)  
    ..style = PaintingStyle.stroke 
    ..strokeWidth= 12;
    var paint10 = Paint()
    ..color =  const Color.fromARGB(255, 90, 90, 90) 
    ..style = PaintingStyle.stroke 
    ..strokeWidth= 13;
    var paint11 = Paint()
    ..color =  const Color.fromARGB(255, 90, 90, 90) 
    ..style = PaintingStyle.stroke 
    ..strokeWidth= 14;
    var paint12 = Paint()
    ..color =  const Color.fromARGB(255, 90, 90, 90) 
    ..style = PaintingStyle.stroke 
    ..strokeWidth= 15;
    var paint13 = Paint()
    ..color =  const Color.fromARGB(255, 90, 90, 90) 
    ..style = PaintingStyle.stroke 
    ..strokeWidth= 16;
   

    canvas.drawArc(Rect.fromPoints(Offset(size.width*.4,size.height*0 ), Offset(size.width*1.3, size.height)),
     14.28, 2.8, false, paint);
    canvas.drawArc(Rect.fromPoints(Offset(size.width*0.45,size.height*0.06 ), Offset(size.width*1.25, size.height*.95)),
     14.31, .18, false, paint2);
    canvas.drawArc(Rect.fromPoints(Offset(size.width*0.45,size.height*0.06 ), Offset(size.width*1.25, size.height*.95)),
     14.56, .18, false, paint3);
    canvas.drawArc(Rect.fromPoints(Offset(size.width*0.45,size.height*0.06 ), Offset(size.width*1.25, size.height*.95)),
     14.81, .18, false, paint4);
    canvas.drawArc(Rect.fromPoints(Offset(size.width*0.45,size.height*0.06 ), Offset(size.width*1.25, size.height*.95)),
     15.04, .18, false, paint5);
    canvas.drawArc(Rect.fromPoints(Offset(size.width*0.45,size.height*0.06 ), Offset(size.width*1.25, size.height*.95)),
     15.28, .18, false, paint6);
    canvas.drawArc(Rect.fromPoints(Offset(size.width*0.45,size.height*0.06), Offset(size.width*1.25, size.height*.95)),
     15.5, .18, false, paint7);
    canvas.drawArc(Rect.fromPoints(Offset(size.width*0.45,size.height*0.06 ), Offset(size.width*1.25, size.height*.95)),
     15.73, .18, false, paint8);
    canvas.drawArc(Rect.fromPoints(Offset(size.width*0.45,size.height*0.06 ), Offset(size.width*1.25, size.height*.95)),
     15.95, .18, false, paint9);
    canvas.drawArc(Rect.fromPoints(Offset(size.width*0.45,size.height*0.06 ), Offset(size.width*1.25, size.height*.95)),
     16.18, .18, false, paint10);
    canvas.drawArc(Rect.fromPoints(Offset(size.width*0.45,size.height*0.06 ), Offset(size.width*1.25, size.height*.95)),
     16.42, .18, false, paint11);
    canvas.drawArc(Rect.fromPoints(Offset(size.width*0.45,size.height*0.06 ), Offset(size.width*1.25, size.height*.95)),
     16.67, .18, false, paint12);
    canvas.drawArc(Rect.fromPoints(Offset(size.width*0.45,size.height*0.06 ), Offset(size.width*1.25, size.height*.95)),
     16.93, .18, false, paint13);
    

     

     for (int i =0; i<70 ; i+=10){
      double x1 = centerX - outerRadius * cos(i* pi/140);
      double y1 = centerY - outerRadius * -sin(i*pi/140);
      double x2 = centerX - innerRadius * cos(i*pi/140);
      double y2 = centerY - innerRadius * -sin(i*pi/140);

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), hourDashPaint); 
     }
      for (int i =0; i<70 ; i+=10){
      double x1 = centerX - innerRadius3 * cos(i* pi/140)-10;
      double y1 = centerY - innerRadius3 * sin(i*pi/140)-10;
      double x2 = centerX - innerRadius2 * cos(i*pi/140)-10;
      double y2 = centerY - innerRadius2 * -sin(i*pi/140)-10;

     
       textPainter.paint(canvas, Offset(x2, y2));
      i==0? Null: textPainter.paint(canvas, Offset(x1, y1));
     }
     for (int i =0; i<70 ; i+=10){
      double x1 = centerX - outerRadius * cos(i* pi/140);
      double y1 = centerY - outerRadius * sin(i*pi/140);
      double x2 = centerX - innerRadius * cos(i*pi/140);
      double y2 = centerY - innerRadius * sin(i*pi/140);

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), hourDashPaint);
     }

    final startPoint = Offset(size.width*.95,size.height*.5);
    final tipPoint = Offset(size.width*.65, size.height*.25);

    //  final midPoint = Offset(
    //   (startPoint.dx + tipPoint.dx) / 2*1.13,
    //   (startPoint.dy + tipPoint.dy) / 2*1.24,
    // );
  
  final midPoint= Offset(size.width*.9, size.height*.5);

    // final double cx = size.width*.5 ; 
    // final double cy= size.height*.65 ; 

    //  final pivot = Offset(size.width * .5, size.height * .5);
     canvas.save();

    // canvas.translate(50,-30);
    canvas.translate(midPoint.dx,midPoint.dy);

    double angle = 395 * (3.14159/180);

   
    

    canvas.rotate(angle);
    canvas.translate(-midPoint.dx,-midPoint.dy);



    final path = Path();
    path.moveTo(size.width*.939, size.height*.529);
    path.lineTo(size.width*.65, size.height*.25);
    path.lineTo(size.width*.929, size.height*.54);
    // path.lineTo(size.width*.935, size.height*.6);
    // path.lineTo(size.width*.95, size.height*.4);
  

    canvas.drawPath(path, paintStick);
    //     final midPoint = Offset(
    //   (startPoint.dx + tipPoint.dx) / 2,
    //   (startPoint.dy + tipPoint.dy) / 2*1.015,
    // );

    // 3. Draw the circle at that midpoint
    final circlePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    final circlePaint2 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    canvas.drawCircle(midPoint, 10.0, circlePaint);
    canvas.drawCircle(midPoint, 5.0, circlePaint2);

    canvas.restore();

    // final metrics = path.computeMetrics().first;

    // final tangent= metrics.getTangentForOffset(metrics.length * 0.8);

    // if (tangent!= null){
    //   final circlePaint = Paint()..color = Colors.black;

    //   canvas.drawCircle(tangent.position, 5, circlePaint);
    // }




  }

  @override 
  bool shouldRepaint(covariant CustomPainter olddelegate){
    return false;
  }


}