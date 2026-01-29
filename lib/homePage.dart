import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:installation_project/test2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    // width = 508 height = 1130 high 
    // width = 320 height = 711 

    double FontSize = MediaQuery.textScalerOf(context).scale(1);

    print(FontSize);
    final MyHeight = MediaQuery.of(context).size.height;
    final MyWidth = MediaQuery.of(context).size.width;

     print('This is my Height' + MyHeight.toString());
    print('This is my width' + MyWidth.toString());


    
    // final MyHeight = 875;
    // final MyWidth = 411;
  
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      
      body: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MyHeight*.05),
          Center(
            child: Container(
              height: MyHeight * .3,
              width: MyWidth * .95,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(205, 41, 36, 33),
                    const Color.fromARGB(177, 28, 27, 27),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.all(Radius.circular(MyHeight*.15)),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: MyHeight * .286,
                      width: MyWidth * .93,

                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(MyHeight*.15)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: MyHeight * .27,
                      width: MyWidth * .9,

                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color.fromARGB(255, 31, 30, 30),
                            const Color.fromARGB(176, 0, 0, 0),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(MyHeight*.15)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: MyHeight * .26,
                      width: MyWidth * .88,

                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(MyHeight*.15)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: MyHeight * .258,
                            width: MyWidth * .288,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(MyHeight*.15),
                                topLeft: Radius.circular(MyHeight*.15),
                              ),
                              color: const Color.fromARGB(0, 161, 30, 21),
                            ),
                            child: CustomPaint(painter: CustomPaintDial()),
                          ),
                          Container(
                            height: MyHeight * .258,
                            width: MyWidth * .288,
                            color: Colors.black,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top:MyHeight*.01),
                                  height: MyHeight*.09,
                                  width: MyWidth * .288,
                                  color: const Color.fromARGB(0, 255, 255, 255),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: MyHeight*.035,
                                            width: MyWidth*.07,

                                            decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                45,
                                                255,
                                                255,
                                                255,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'AMP',
                                                style: GoogleFonts.bebasNeue(
                                                  fontSize: MyHeight*.018,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: MyHeight*.035,
                                            width: MyWidth*.07,
                                            decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                45,
                                                255,
                                                255,
                                                255,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'CFM',
                                                style: GoogleFonts.bebasNeue(
                                                 fontSize: MyHeight*.018,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: MyHeight*.035,
                                            width: MyWidth*.08,

                                            decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                45,
                                                255,
                                                255,
                                                255,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'S.TMP',
                                                style: GoogleFonts.bebasNeue(
                                                  fontSize: MyHeight*.035*.5,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: MyHeight*.035,
                                            width: MyWidth*.07,

                                            decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                45,
                                                255,
                                                255,
                                                255,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'PR',
                                                style: GoogleFonts.bebasNeue(
                                                  fontSize: MyHeight*.018,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                           height: MyHeight*.035,
                                            width: MyWidth*.07,
                                            decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                45,
                                                255,
                                                255,
                                                255,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'WT',
                                                style: GoogleFonts.bebasNeue(
                                                fontSize: MyHeight*.018,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                           height: MyHeight*.035,
                                            width: MyWidth*.08,
                                            decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                45,
                                                255,
                                                255,
                                                255,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'D.TMP',
                                                style: GoogleFonts.bebasNeue(
                                                fontSize: MyHeight*.017,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: MyHeight * .1,
                                  width: MyWidth * .288,
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: MyHeight * .1,
                                        width: MyWidth * .288,
                                        color: const Color.fromARGB(
                                          0,
                                          244,
                                          67,
                                          54,
                                        ),
                                        child: CustomPaint(
                                          painter: CustomPainter10(),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: MyWidth * .09,
                                          top: MyHeight * .055,
                                        ),
                                        child: Text(
                                          'Gas Flow',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.robotoMono(
                                            fontSize: MyHeight*.012,
                                            color: Colors.white,
                                            
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: FontSize<=1.3? EdgeInsets.only(
                                    left: MyWidth * .042,
                                    right: MyWidth * .042,
                                  ): EdgeInsets.all(0),
                                  height: MyHeight * .03,
                                  width: MyWidth * .288,
                                  color: const Color.fromARGB(0, 33, 149, 243),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '+2',
                                         maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.robotoMono(
                                          fontSize: MyHeight*.011,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        '+1',
                                        style: GoogleFonts.robotoMono(
                                          fontSize: MyHeight*.012,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Container(
                                        height: MyHeight*.017,
                                        width: MyWidth*.048,

                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(0, 255, 255, 255),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5),
                                          ),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.do_disturb_on_outlined,
                                            size: MyWidth*.03,
                                            color: Colors.white,
                                          )
                                        ),
                                      ),
                                      Text(
                                        '-1',
                                         maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.robotoMono(
                                          fontSize: MyHeight*.01,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        '-2',
                                         maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.robotoMono(
                                          fontSize: MyHeight*.01,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  'S.TEMP || WEIGHT',
                                   maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.robotoMono(
                                    fontSize: MyHeight*.012,
                                    fontWeight: FontWeight.w600,
                                    color: const Color.fromARGB(
                                      255,
                                      170,
                                      169,
                                      169,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MyHeight * .258,
                            width: MyWidth * .288,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(MyHeight*.15),
                                topRight: Radius.circular(MyHeight*.15),
                              ),
                              color: const Color.fromARGB(0, 161, 30, 21),
                            ),
                            child: CustomPaint(painter: CustomPaintDial2()),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: MyHeight*.02),
          Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MyHeight * .28,
                width: MyWidth * .48,
                color: const Color.fromARGB(0, 0, 0, 0),
                child: CustomPaint(painter: CustomPainterGauge()),
              ),
              Container(
                height: MyHeight * .28,
                width: MyWidth * .48,
                color: const Color.fromARGB(0, 0, 0, 0),
                child: CustomPaint(
                  painter: CustomPainterGauge(),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MyHeight * .28,
                width: MyWidth * .48,
                color: const Color.fromARGB(0, 0, 0, 0),
                child: CustomPaint(
                  painter: CustomPainterGauge(),
                ),
              ),
              Container(
                height: MyHeight * .28,
                width: MyWidth * .48,
                color: const Color.fromARGB(0, 0, 0, 0),
                child: CustomPaint(
                  painter: CustomPainterGauge(),
                ),
              ),
            ],
          ),
         
        ],
      ),
    );
  }
}

class CustomPainterGauge extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width * .5;
    double centerY = size.height * .5;

    double radius = size.width*.5;

    double outerRadius = radius- size.width*.1;
    double outerRadius2 =  radius- size.width*.21;
    double innerRadius = radius-size.width*.3;
    double innerRadius2 =  radius- size.width*.15;

    final textstyle = TextStyle(
      color: const Color.fromARGB(244, 103, 101, 101),
      fontSize: size.width*.18,
      fontWeight: FontWeight.bold,
       fontFamily: 'Text'

      // fontStyle: FontStyle.italic
    );
    final textstyle2 = TextStyle(
      color: const Color.fromARGB(244, 103, 101, 101),
      fontSize: size.width*.05,
      fontWeight: FontWeight.bold,
      fontFamily: 'Text'

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
          ..shader = gradient2.createShader(
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
          ..color = const Color.fromARGB(255, 6, 168, 255)
          ..style = PaintingStyle.fill
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 2;
    final shadowPaint =
        Paint()
          ..color = const Color.fromARGB(255, 0, 149, 255)
          ..maskFilter = MaskFilter.blur(BlurStyle.normal, size.width*.06);
    final shadowPaint2 =
        Paint()
          ..color = const Color.fromARGB(255, 5, 188, 255)
          ..maskFilter = MaskFilter.blur(BlurStyle.normal, size.width*.05);

    final circlePaint5 =
        Paint()
          ..color = const Color.fromARGB(255, 0, 187, 255)
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
          ..color = const Color.fromARGB(155, 5, 188, 255)
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke;

    canvas.drawCircle(midPoint, size.width*.5, circlePaint);
    // canvas.drawCircle(midPoint, size.width*.5, circlePaint2);
    canvas.drawCircle(midPoint, size.width*.47, circlePaint3);
    canvas.drawCircle(midPoint, size.width*.46, circlePaint4);

    for (int i = 240; i < 520; i += 4) {
      double x4 = centerX - (outerRadius2 ) * cos(i * pi / 260);
      double y4 = centerY - (outerRadius2 ) * sin(i * pi / 260);
      double x3 = centerX - innerRadius * cos(i * pi / 260);
      double y3 = centerY - innerRadius * sin(i * pi / 260);
      double x5 = centerX - (outerRadius+10) * cos(i * pi / 260);
      double y5 = centerY - (outerRadius+10) * sin(i * pi / 260);
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
        canvas.drawLine(Offset(x9, y9), Offset(x7, y7), paintStick4);
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
      double x5 = centerX - (outerRadius+10) * cos(i * pi / 260);
      double y5 = centerY - (outerRadius+10) * sin(i * pi / 260);
    
      if (i % 4 == 0) {
        canvas.drawLine(Offset(x4, y4), Offset(x3, y3), paintStick2);
        canvas.drawLine(Offset(x5, y5), Offset(x3, y3), paintStick3);
      }

      if (i % 10 == 0 && i <= 240) {
        if (i % 40 == 0) {
          canvas.drawCircle(Offset(x1, y1), size.width*.03, shadowPaint2);
          canvas.drawCircle(Offset(x1, y1), size.width*.015, circlePaint5);
        } else {
          canvas.drawCircle(Offset(x1, y1), size.width*.006, circlePaint5);
        }

        i <= 30 && i != 0
            ? canvas.drawCircle(Offset(x2, y2),  size.width*.006, circlePaint5)
            : Null;
      }
    }

    canvas.drawCircle(midPoint2, size.width*.25, shadowPaint);
    canvas.drawCircle(midPoint, size.width*.26, circlePaint7);

    final path = Path();
    path.moveTo(size.width * .495, size.height * .5);
    path.lineTo(size.width * .495, size.height * .25);
    path.lineTo(size.width * .51, size.height * .25);
    path.lineTo(size.width * .51, size.height * .5);
    path.lineTo(size.width * .495, size.height * .5);

    canvas.drawPath(path, paintStick);
    canvas.drawCircle(midPoint, size.width*.04, circlePaint6);
    canvas.drawCircle(midPoint, size.width*.26, circlePaint8);
    canvas.drawCircle(midPoint, size.width*.26, circlePaint9);
    textPainter.paint(canvas, Offset(midPoint.dx-size.width*.11 , midPoint.dy - size.width*.13));
    textPainter2.paint(canvas, Offset(midPoint.dx - size.width*.039, midPoint.dy + size.width*.09));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomPaintDial extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint =
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 3;

    final textstyle = TextStyle(
      color: const Color.fromARGB(186, 255, 255, 255),
      fontSize: size.height*.04,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
    );

    final textSpan = TextSpan(text: '10', style: textstyle);

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(minWidth: 0, maxWidth: size.width);

    var centerX = size.width * .93;
    var centerX2 = size.width * .82;
    var centerY = size.height / 2;
    var centerY2 = size.height * .5;

    var center = Offset(centerX, centerY);
    var radius = size.height * .44;

    var outerRadius = radius - size.height*.03;
    var innerRadius = radius -  size.height*.06;
    var innerRadius2 = radius - size.height*.13;
    var innerRadius3 = radius - size.height*.13;

    var hourDashPaint =
        Paint()
          ..color = Colors.white
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round;
    var paintStick =
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.fill
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 5;
    var paint2 =
        Paint()
          ..color = const Color.fromARGB(255, 90, 90, 90)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.height*.01;
    var paint3 =
        Paint()
          ..color = const Color.fromARGB(255, 90, 90, 90)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.height*.015;
    var paint4 =
        Paint()
          ..color = const Color.fromARGB(255, 90, 90, 90)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.height*.02;
    var paint5 =
        Paint()
          ..color = const Color.fromARGB(255, 90, 90, 90)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.height*.025;
    var paint6 =
        Paint()
          ..color = const Color.fromARGB(255, 90, 90, 90)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.height*.03;
    var paint7 =
        Paint()
          ..color = const Color.fromARGB(255, 90, 90, 90)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.height*.035;
    // var paint8 = Paint()
    // ..color =  const Color.fromARGB(255, 90, 90, 90)
    // ..style = PaintingStyle.stroke
    // ..strokeWidth= 11;
    // var paint9 = Paint()
    // ..color =  const Color.fromARGB(255, 90, 90, 90)
    // ..style = PaintingStyle.stroke
    // ..strokeWidth= 12;
    // var paint10 = Paint()
    // ..color =  const Color.fromARGB(255, 90, 90, 90)
    // ..style = PaintingStyle.stroke
    // ..strokeWidth= 13;
    // var paint11 = Paint()
    // ..color =  const Color.fromARGB(255, 90, 90, 90)
    // ..style = PaintingStyle.stroke
    // ..strokeWidth= 14;
    // var paint12 = Paint()
    // ..color =  const Color.fromARGB(255, 90, 90, 90)
    // ..style = PaintingStyle.stroke
    // ..strokeWidth= 15;
    // var paint13 = Paint()
    // ..color =  const Color.fromARGB(255, 90, 90, 90)
    // ..style = PaintingStyle.stroke
    // ..strokeWidth = 16;

    canvas.drawArc(
      Rect.fromPoints(
        Offset(size.width * .05, size.height * 0.03),
        Offset(size.width * 1.9, size.height * .97),
      ),
      14.4,
      2.65,
      false,
      paint,
    );
    canvas.drawArc(
      Rect.fromPoints(
        Offset(size.width * 0.15, size.height * 0.09),
        Offset(size.width * 1.85, size.height * .919),
      ),
      14.45,
      .36,
      false,
      paint2,
    );
    canvas.drawArc(
      Rect.fromPoints(
        Offset(size.width * 0.15, size.height * 0.09),
        Offset(size.width * 1.85, size.height * .919),
      ),
      14.87,
      .36,
      false,
      paint3,
    );
    canvas.drawArc(
      Rect.fromPoints(
        Offset(size.width * 0.15, size.height * 0.09),
        Offset(size.width * 1.85, size.height * .919),
      ),
      15.325,
      .36,
      false,
      paint4,
    );
    canvas.drawArc(
      Rect.fromPoints(
        Offset(size.width * 0.15, size.height * 0.09),
        Offset(size.width * 1.85, size.height * .919),
      ),
      15.76,
      .36,
      false,
      paint5,
    );
    canvas.drawArc(
      Rect.fromPoints(
        Offset(size.width * 0.15, size.height * 0.09),
        Offset(size.width * 1.85, size.height * .919),
      ),
      16.18,
      .36,
      false,
      paint6,
    );
    canvas.drawArc(
      Rect.fromPoints(
        Offset(size.width * 0.15, size.height * 0.09),
        Offset(size.width * 1.85, size.height * .919),
      ),
      16.59,
      .36,
      false,
      paint7,
    );
    // canvas.drawArc(Rect.fromPoints(Offset(size.width*0.15,size.height*0.11 ), Offset(size.width*1.25, size.height*.9)),
    //  15.73, .18, false, paint8);
    // canvas.drawArc(Rect.fromPoints(Offset(size.width*0.15,size.height*0.11 ), Offset(size.width*1.25, size.height*.9)),
    //  15.95, .18, false, paint9);
    // canvas.drawArc(Rect.fromPoints(Offset(size.width*0.15,size.height*0.11 ), Offset(size.width*1.25, size.height*.9)),
    //  16.18, .18, false, paint10);
    // canvas.drawArc(Rect.fromPoints(Offset(size.width*0.15,size.height*0.11 ), Offset(size.width*1.25, size.height*.9)),
    //  16.42, .18, false, paint11);
    // canvas.drawArc(Rect.fromPoints(Offset(size.width*0.15,size.height*0.11 ), Offset(size.width*1.25, size.height*.9)),
    //  16.67, .18, false, paint12);
    // canvas.drawArc(Rect.fromPoints(Offset(size.width*0.15,size.height*0.11 ), Offset(size.width*1.25, size.height*.9)),
    //  16.93, .18, false, paint13);

    for (int i = 0; i < 70; i += 20) {
      double x1 = centerX - outerRadius * cos(i * pi / 140);
      double y1 = centerY - outerRadius * -sin(i * pi / 140);
      double x2 = centerX - innerRadius * cos(i * pi / 140);
      double y2 = centerY - innerRadius * -sin(i * pi / 140);

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), hourDashPaint);
    }
    for (int i = 0; i < 70; i += 20) {
      double x1 = centerX - innerRadius3 * cos(i * pi / 140)- size.width*.07;
      double y1 = centerY - innerRadius3 * sin(i * pi / 140) - size.height*.02;
      double x2 = centerX - innerRadius2 * cos(i * pi / 140) -size.width*.07;
      double y2 = centerY - innerRadius2 * -sin(i * pi / 140) - size.height*.02;

      textPainter.paint(canvas, Offset(x2, y2));
      i == 0 ? Null : textPainter.paint(canvas, Offset(x1, y1));
    }
    for (int i = 0; i < 70; i += 20) {
      double x1 = centerX - outerRadius * cos(i * pi / 140);
      double y1 = centerY - outerRadius * sin(i * pi / 140);
      double x2 = centerX - innerRadius * cos(i * pi / 140);
      double y2 = centerY - innerRadius * sin(i * pi / 140);

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), hourDashPaint);
    }

    final midPoint = Offset(size.width * .77, size.height * .5);

    canvas.save();

    canvas.translate(midPoint.dx, midPoint.dy);

    double angle = 192 * (3.14159 / 180);

    canvas.rotate(angle);
    canvas.translate(-midPoint.dx, -midPoint.dy);

    final path = Path();
    path.moveTo(size.width * .79, size.height * .6);
    path.lineTo(size.width * .65, size.height * .25);
    path.lineTo(size.width * .83, size.height * .595);
    // path.lineTo(size.width*.935, size.height*.6);
    // path.lineTo(size.width*.95, size.height*.4);

    canvas.drawPath(path, paintStick);

    final circlePaint =
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.fill;
    final circlePaint2 =
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.fill;

    canvas.drawCircle(midPoint, 6.0, circlePaint);
    canvas.drawCircle(midPoint, 3.0, circlePaint2);

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomPaintDial2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint =
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 3;

    final textstyle = TextStyle(
      color: const Color.fromARGB(186, 255, 255, 255),
      fontSize: size.height*.04,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
    );

    final textSpan = TextSpan(text: '10', style: textstyle);

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(minWidth: 0, maxWidth: size.width);

    var hourDashPaint =
        Paint()
          ..color = Colors.white
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round;
    var paintStick =
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.fill
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 5;
    var paint2 =
        Paint()
          ..color = const Color.fromARGB(255, 90, 90, 90)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.height*.01;
    var paint3 =
        Paint()
          ..color = const Color.fromARGB(255, 90, 90, 90)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.height*.015;
    var paint4 =
        Paint()
          ..color = const Color.fromARGB(255, 90, 90, 90)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.height*.02;
    var paint5 =
        Paint()
          ..color = const Color.fromARGB(255, 90, 90, 90)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.height*.025;
    var paint6 =
        Paint()
          ..color = const Color.fromARGB(255, 90, 90, 90)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.height*.03;
    var paint7 =
        Paint()
          ..color = const Color.fromARGB(255, 90, 90, 90)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.height*.035;

    var centerX = size.width * .07;
    var centerX2 = size.width * .82;
    var centerY = size.height / 2;
    var centerY2 = size.height * .5;

    var center = Offset(centerX, centerY);
    var radius = size.height * .44;

    var outerRadius = radius - size.height*.03;
    var innerRadius = radius - size.height*.06;
    var innerRadius2 = radius - size.height*.13;
    var innerRadius3 = radius - size.height*.13;

    canvas.drawArc(
      Rect.fromPoints(
        Offset(size.width * -0.9, size.height * 0.03),
        Offset(size.width * .95, size.height * .97),
      ),
      17.5,
      2.65,
      false,
      paint,
    );
    canvas.drawArc(
      Rect.fromPoints(
        Offset(size.width * -.8, size.height * 0.1),
        Offset(size.width * .85, size.height * .91),
      ),
      17.58,
      .36,
      false,
      paint7,
    );
    canvas.drawArc(
      Rect.fromPoints(
        Offset(size.width * -.8, size.height * 0.1),
        Offset(size.width * .85, size.height * .91),
      ),
      18,
      .36,
      false,
      paint6,
    );
    canvas.drawArc(
      Rect.fromPoints(
        Offset(size.width * -.8, size.height * 0.1),
        Offset(size.width * .85, size.height * .91),
      ),
      18.42,
      .36,
      false,
      paint5,
    );
    canvas.drawArc(
      Rect.fromPoints(
        Offset(size.width * -.8, size.height * 0.1),
        Offset(size.width * .85, size.height * .91),
      ),
      18.9,
      .36,
      false,
      paint4,
    );
    canvas.drawArc(
      Rect.fromPoints(
        Offset(size.width * -.8, size.height * 0.1),
        Offset(size.width * .85, size.height * .91),
      ),
      19.34,
      .36,
      false,
      paint3,
    );
    canvas.drawArc(
      Rect.fromPoints(
        Offset(size.width * -.8, size.height * 0.1),
        Offset(size.width * .85, size.height * .91),
      ),
      19.77,
      .36,
      false,
      paint2,
    );

    for (int i = 0; i < 70; i += 20) {
      double x1 = centerX - outerRadius * -cos(i * pi / 140);
      double y1 = centerY - outerRadius * sin(i * pi / 140);
      double x2 = centerX - innerRadius * -cos(i * pi / 140);
      double y2 = centerY - innerRadius * sin(i * pi / 140);

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), hourDashPaint);
    }
    for (int i = 0; i < 70; i += 20) {
      double x1 = centerX - innerRadius3 * -cos(i * pi / 140) - size.width*.07;
      double y1 = centerY - innerRadius3 * sin(i * pi / 140) - size.height*.02;
      double x2 = centerX - innerRadius2 * -cos(i * pi / 140) - size.width*.07;
      double y2 = centerY - innerRadius2 * -sin(i * pi / 140) - size.height*.02;

      textPainter.paint(canvas, Offset(x2, y2));
      i == 0 ? Null : textPainter.paint(canvas, Offset(x1, y1));
    }
    for (int i = 0; i < 70; i += 20) {
      double x1 = centerX - outerRadius * -cos(i * pi / 140);
      double y1 = centerY - outerRadius * -sin(i * pi / 140);
      double x2 = centerX - innerRadius * -cos(i * pi / 140);
      double y2 = centerY - innerRadius * -sin(i * pi / 140);

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), hourDashPaint);
    }

    final midPoint = Offset(size.width * .23, size.height * .5);

    canvas.save();

    canvas.translate(midPoint.dx, midPoint.dy);

    double angle = 168 * (3.14159 / 180);

    canvas.rotate(angle);
    canvas.translate(-midPoint.dx, -midPoint.dy);

    final path = Path();
    path.moveTo(size.width * .21, size.height * .6);
    path.lineTo(size.width * .35, size.height * .25);
    path.lineTo(size.width * .17, size.height * .596);
    // path.lineTo(size.width*.935, size.height*.6);
    // path.lineTo(size.width*.95, size.height*.4);

    canvas.drawPath(path, paintStick);

    final circlePaint =
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.fill;
    final circlePaint2 =
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.fill;

    canvas.drawCircle(midPoint, 6.0, circlePaint);
    canvas.drawCircle(midPoint, 3.0, circlePaint2);

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
