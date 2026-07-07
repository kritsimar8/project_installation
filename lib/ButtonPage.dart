import 'dart:math';

import 'package:flutter/material.dart';
import 'package:installation_project/checking.dart';
import 'package:provider/provider.dart';

class ButtonPage extends StatefulWidget{

  const ButtonPage ({super.key});

  @override 
  State<ButtonPage> createState()=> _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {

  List<int> buttonState = [0,0,0,0,0,0,0,0];

  void  tapped(int i) {
    
    setState(() {
    buttonState[i]= buttonState[i]==0? 1: 0;
    });
   }


@override 
Widget build(BuildContext context){

   double MyHeight = MediaQuery.of(context).size.height;
   double MyWidth = MediaQuery.of(context).size.width;
 
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 41, 41, 41),
    body: Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: MyWidth*.03),
              height: MyHeight*.25,
              width: MyWidth*.5,
              color: const Color.fromARGB(0, 255, 255, 255),
              child: Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: GestureDetector(
                      onLongPress: () {
                        tapped(0);
                       Provider.of<ItemData>(context,listen:false).Sendingdata();
                      } ,
                      child: CustomPaint(
                        painter:buttonState[0]==0? CustomButtons():CustomButtons2(),
                      ),
                    ),
                  ),
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.2,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 32, 25, 24),
                              shape: BoxShape.circle
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.red, 
                                  blurRadius: 30,
                                  spreadRadius: 4
                                )
                              ]
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //  padding: EdgeInsets.only(left: MyWidth*.03),
              height: MyHeight*.25,
              width: MyWidth*.5,
              color: const Color.fromARGB(0, 244, 67, 54),
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child:GestureDetector(
                      onLongPress: () {
                        tapped(1);
                      } ,
                      child: CustomPaint(
                        painter:buttonState[1]==0? CustomButtons():CustomButtons2(),
                      ),
                    ),
                  ),
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.2,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 32, 25, 24),
                              shape: BoxShape.circle
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.red, 
                                  blurRadius: 30,
                                  spreadRadius: 4
                                )
                              ]
                            ),
                          ),
                        ),
                      ],
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
               padding: EdgeInsets.only(left: MyWidth*.03),
              height: MyHeight*.25,
              width: MyWidth*.5,
              color: const Color.fromARGB(0, 255, 255, 255),
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: GestureDetector(
                      onLongPress: () {
                        tapped(2);
                      } ,
                      child: CustomPaint(
                        painter:buttonState[2]==0? CustomButtons():CustomButtons2(),
                      ),
                    ),
                  ),
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.2,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 32, 25, 24),
                              shape: BoxShape.circle
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.red, 
                                  blurRadius: 30,
                                  spreadRadius: 4
                                )
                              ]
                            ),
                          ),
                        ),
                      ],
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
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child:GestureDetector(
                      onLongPress: () {
                        tapped(3);
                      } ,
                      child: CustomPaint(
                        painter:buttonState[3]==0? CustomButtons():CustomButtons2(),
                      ),
                    ),
                  ),
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.2,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 32, 25, 24),
                              shape: BoxShape.circle
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.red, 
                                  blurRadius: 30,
                                  spreadRadius: 4
                                )
                              ]
                            ),
                          ),
                        ),
                      ],
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
               padding: EdgeInsets.only(left: MyWidth*.03),
              height: MyHeight*.25,
              width: MyWidth*.5,
              color: const Color.fromARGB(0, 255, 255, 255),
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child:GestureDetector(
                      onLongPress: () {
                        tapped(4);
                      } ,
                      child: CustomPaint(
                        painter:buttonState[4]==0? CustomButtons():CustomButtons2(),
                      ),
                    ),
                  ),
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.2,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 32, 25, 24),
                              shape: BoxShape.circle
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.red, 
                                  blurRadius: 30,
                                  spreadRadius: 4
                                )
                              ]
                            ),
                          ),
                        ),
                      ],
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
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child:GestureDetector(
                      onLongPress: () {
                        tapped(5);
                      } ,
                      child: CustomPaint(
                        painter:buttonState[5]==0? CustomButtons():CustomButtons2(),
                      ),
                    ),
                  ),
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.2,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 32, 25, 24),
                              shape: BoxShape.circle
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.red, 
                                  blurRadius: 30,
                                  spreadRadius: 4
                                )
                              ]
                            ),
                          ),
                        ),
                      ],
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
               padding: EdgeInsets.only(left: MyWidth*.03),
              height: MyHeight*.25,
              width: MyWidth*.5,
              color: const Color.fromARGB(0, 255, 255, 255),
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child:GestureDetector(
                      onLongPress: () {
                        tapped(6);
                      } ,
                      child: CustomPaint(
                        painter:buttonState[6]==0? CustomButtons():CustomButtons2(),
                      ),
                    ),
                  ),
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.2,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child:Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 32, 25, 24),
                              shape: BoxShape.circle
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            
                            width: 10,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.red, 
                                  blurRadius: 30,
                                  spreadRadius: 4
                                )
                              ]
                            ),
                          ),
                        ),
                      ],
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.25,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child:GestureDetector(
                      onLongPress: () {
                        tapped(7);
                      } ,
                      child: CustomPaint(
                        painter:buttonState[7]==0? CustomButtons():CustomButtons2(),
                      ),
                    ),
                  ),
                  Container(
                    height: MyHeight*.25,
                    width: MyWidth*.2,
                    color: const Color.fromARGB(0, 244, 67, 54),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            
                            width: MyWidth*.12,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 32, 25, 24),
                              shape: BoxShape.circle
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            
                            width: MyWidth*.02,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.red,
                                  blurRadius: 30,
                                  spreadRadius: 4
                                )
                              ]
                            ),
                          ),
                        ),
                      ],
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


    canvas.drawCircle(Offset(centerX, centerY), size.width*.45, circlePainter);
    canvas.drawCircle(Offset(centerX, centerY*1.02), size.width*.45, circlePainter3);
    canvas.drawCircle(Offset(centerX, centerY), size.width*.43, circlePainter2);
    canvas.drawArc(Rect.fromCircle(center: Offset(centerX, centerY), radius: size.width*.2), pi*1.3,-pi*1.6, false, circlePainter4);
   
    canvas.drawLine(Offset(centerX, centerY*.95), Offset(centerX, centerY*.7), LinePaint);
    
  }

  @override 
  bool shouldRepaint(covariant CustomPainter oldDelegate){
    return true;
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
    return true;
  }
}