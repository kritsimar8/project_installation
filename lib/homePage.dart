import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:installation_project/Gauges.dart';
import 'package:installation_project/state.dart';
import 'package:installation_project/test2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final AnimationController _controller;

  late final Animation<double> _animation2 = Tween<double>(
    begin: 1,
    end: -.1,
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn));
  late final Animation<double> _animation3 = Tween<double>(
    begin: 0,
    end: 60,
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn));
  late final Animation<double> _animation4 = Tween<double>(
    begin: -120,
    end: 120,
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOutQuad));

  Animation<double> rotation() {
    late final Animation<double> _animation = Tween<double>(
      begin: 1,
      end: 1.95,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn),
    );

    return _animation;
  }

  void Animate() {
    _controller.duration = Duration(milliseconds: 600);
    _controller.forward();
    

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      }
    });
    state.statechange();
  }

  @override
  void initState() {
    // TODO: implement initState
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();

    super.dispose();
  }

  double i = 0;
  // Future<double?> increment() async {
  //   for (i = 0; i < 100;) {
  //     i += 1.0;
  //     await Future.delayed(Duration(seconds: 1));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // print(_animation.value);

    double FontSize = MediaQuery.textScalerOf(context).scale(1);

    final MyHeight = MediaQuery.of(context).size.height;
    final MyWidth = MediaQuery.of(context).size.width;

    state.inState == false ? Animate() : Null;
    // Animate();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MyHeight * .05),
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
                borderRadius: BorderRadius.all(Radius.circular(MyHeight * .15)),
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
                        borderRadius: BorderRadius.all(
                          Radius.circular(MyHeight * .15),
                        ),
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
                        borderRadius: BorderRadius.all(
                          Radius.circular(MyHeight * .15),
                        ),
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
                        borderRadius: BorderRadius.all(
                          Radius.circular(MyHeight * .15),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: MyHeight * .258,
                            width: MyWidth * .288,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(MyHeight * .15),
                                topLeft: Radius.circular(MyHeight * .15),
                              ),
                              color: const Color.fromARGB(0, 161, 30, 21),
                            ),
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: MyHeight * .258,
                                  width: MyWidth * .288,

                                  child: CustomPaint(
                                    painter: CustomPaintDial(),
                                  ),
                                ),
                                SizedBox(
                                  height: MyHeight * .258,
                                  width: MyWidth * .288,

                                  child: AnimatedBuilder(
                                    animation: _controller,
                                    builder: (context, child) {
                                      return CustomPaint(
                                        painter: CustomDial2(
                                          rotate: rotation().value,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: MyHeight * .258,
                            width: MyWidth * .288,
                            color: Colors.black,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: MyHeight * .01),
                                  height: MyHeight * .09,
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
                                            height: MyHeight * .035,
                                            width: MyWidth * .07,

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
                                                  fontSize: MyHeight * .018,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: MyHeight * .035,
                                            width: MyWidth * .07,
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
                                                  fontSize: MyHeight * .018,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: MyHeight * .035,
                                            width: MyWidth * .08,

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
                                                  fontSize:
                                                      MyHeight * .035 * .5,
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
                                            height: MyHeight * .035,
                                            width: MyWidth * .07,

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
                                                  fontSize: MyHeight * .018,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: MyHeight * .035,
                                            width: MyWidth * .07,
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
                                                  fontSize: MyHeight * .018,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: MyHeight * .035,
                                            width: MyWidth * .08,
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
                                                  fontSize: MyHeight * .017,
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
                                        child: Stack(
                                          children: [
                                            SizedBox(
                                              height: MyHeight * .1,
                                              width: MyWidth * .288,
                                              child: CustomPaint(
                                                painter: CustomPainter10(),
                                              ),
                                            ),
                                            AnimatedBuilder(
                                              animation: _controller,
                                              builder: (context, child) {
                                                return SizedBox(
                                                  height: MyHeight * .1,
                                                  width: MyWidth * .288,
                                                  child: CustomPaint(
                                                    painter: CustomGasInd(
                                                      rotate: _animation3.value,
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
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
                                            fontSize: MyHeight * .012,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding:
                                      FontSize <= 1.3
                                          ? EdgeInsets.only(
                                            left: MyWidth * .042,
                                            right: MyWidth * .042,
                                          )
                                          : EdgeInsets.all(0),
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
                                          fontSize: MyHeight * .011,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        '+1',
                                        style: GoogleFonts.robotoMono(
                                          fontSize: MyHeight * .012,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Container(
                                        height: MyHeight * .017,
                                        width: MyWidth * .048,

                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                            0,
                                            255,
                                            255,
                                            255,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5),
                                          ),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.do_disturb_on_outlined,
                                            size: MyWidth * .03,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '-1',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.robotoMono(
                                          fontSize: MyHeight * .01,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        '-2',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.robotoMono(
                                          fontSize: MyHeight * .01,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  'S.TEMP || AMPERE',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.robotoMono(
                                    fontSize: MyHeight * .012,
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
                                bottomRight: Radius.circular(MyHeight * .15),
                                topRight: Radius.circular(MyHeight * .15),
                              ),
                              color: const Color.fromARGB(0, 161, 30, 21),
                            ),
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: MyHeight * .258,
                                  width: MyWidth * .288,
                                  child: CustomPaint(
                                    painter: CustomPaintDial2(),
                                  ),
                                ),
                                SizedBox(
                                  height: MyHeight * .258,
                                  width: MyWidth * .288,
                                  child: AnimatedBuilder(
                                    animation: _animation2,
                                    builder: (context, child) {
                                      return CustomPaint(
                                        painter: CustomDial3(
                                          rotate: _animation2.value,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: MyHeight * .02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MyHeight * .28,
                width: MyWidth * .48,
                color: const Color.fromARGB(0, 0, 0, 0),
                child: Stack(
                  children: [
                    SizedBox(
                      height: MyHeight * .28,
                      width: MyWidth * .48,
                      child: CustomPaint(painter: CustomPainterGauge()),
                    ),
                    SizedBox(
                      height: MyHeight * .28,
                      width: MyWidth * .48,
                      child: AnimatedBuilder(
                        animation: _animation4,
                        builder: (context, child) {
                          return CustomPaint(
                            painter: Stick(rotation: _animation4.value),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: MyHeight * .28,
                      width: MyWidth * .48,
                      child: CustomPaint(painter: Readings(read: 'PSI')),
                    ),
                  ],
                ),
              ),
              Container(
                height: MyHeight * .28,
                width: MyWidth * .48,
                color: const Color.fromARGB(0, 0, 0, 0),
                child: Stack(
                  children: [
                    SizedBox(
                      height: MyHeight * .28,
                      width: MyWidth * .48,
                      child: CustomPaint(painter: CustomPainterGauge()),
                    ),
                    SizedBox(
                      height: MyHeight * .28,
                      width: MyWidth * .48,
                      child: AnimatedBuilder(
                        animation: _animation4,
                        builder: (context, child) {
                          return CustomPaint(
                            painter: Stick(rotation: _animation4.value),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: MyHeight * .28,
                      width: MyWidth * .48,
                      child: CustomPaint(painter: Readings(read: 'PSI')),
                    ),
                  ],
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
                child: Stack(
                  children: [
                    SizedBox(
                      height: MyHeight * .28,
                      width: MyWidth * .48,
                      child: CustomPaint(painter: CustomPainterGauge()),
                    ),
                    SizedBox(
                      height: MyHeight * .28,
                      width: MyWidth * .48,
                      child: AnimatedBuilder(
                        animation: _animation4,
                        builder: (context, child) {
                          return CustomPaint(
                            painter: Stick(rotation: _animation4.value),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: MyHeight * .28,
                      width: MyWidth * .48,
                      child: CustomPaint(painter: Readings(read: 'Cel')),
                    ),
                  ],
                ),
              ),
              Container(
                height: MyHeight * .28,
                width: MyWidth * .48,
                color: const Color.fromARGB(0, 0, 0, 0),
                child: Stack(
                  children: [
                    SizedBox(
                      height: MyHeight * .28,
                      width: MyWidth * .48,
                      child: CustomPaint(painter: CustomPainterGauge()),
                    ),
                    SizedBox(
                      height: MyHeight * .28,
                      width: MyWidth * .48,
                      child: AnimatedBuilder(
                        animation: _animation4,
                        builder: (context, child) {
                          return CustomPaint(
                            painter: Stick(rotation: _animation4.value),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: MyHeight * .28,
                      width: MyWidth * .48,
                      child: CustomPaint(painter: Readings(read: 'Cel')),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomDial2 extends CustomPainter {
  double rotate;
  CustomDial2({required this.rotate});
  @override
  void paint(Canvas canvas, Size size) {
    final midPoint = Offset(size.width * .77, size.height * .5);
    var paintStick =
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.fill
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 5;

    canvas.save();

    canvas.translate(midPoint.dx, midPoint.dy);

    double angle = rotate * 192 * (3.14159 / 180);

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

class CustomDial3 extends CustomPainter {
  double rotate;
  CustomDial3({required this.rotate});
  @override
  void paint(Canvas canvas, Size size) {
    final midPoint = Offset(size.width * .23, size.height * .5);
    var paintStick =
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.fill
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 5;

    canvas.save();

    canvas.translate(midPoint.dx, midPoint.dy);

    double angle = rotate * 168 * (3.14159 / 180);

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
    return true;
  }
}

class CustomPaintDial extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    List<TextPainter> myList = [];
    var paint =
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 3;

    final textstyle = TextStyle(
      color: const Color.fromARGB(186, 255, 255, 255),
      fontSize: size.height * .04,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
    );

    final textSpan = TextSpan(text: '24', style: textstyle);
    final textSpan2 = TextSpan(text: '20', style: textstyle);
    final textSpan3 = TextSpan(text: '16', style: textstyle);
    final textSpan4 = TextSpan(text: '12', style: textstyle);
    final textSpan5 = TextSpan(text: '8', style: textstyle);
    final textSpan6 = TextSpan(text: '4', style: textstyle);
    final textSpan7 = TextSpan(text: '0', style: textstyle);

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
    final textPainter5 = TextPainter(
      text: textSpan5,
      textDirection: TextDirection.ltr,
    );
    final textPainter6 = TextPainter(
      text: textSpan6,
      textDirection: TextDirection.ltr,
    );
    final textPainter7 = TextPainter(
      text: textSpan7,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(minWidth: 0, maxWidth: size.width);
    textPainter2.layout(minWidth: 0, maxWidth: size.width);
    textPainter3.layout(minWidth: 0, maxWidth: size.width);
    textPainter4.layout(minWidth: 0, maxWidth: size.width);
    textPainter5.layout(minWidth: 0, maxWidth: size.width);
    textPainter6.layout(minWidth: 0, maxWidth: size.width);
    textPainter7.layout(minWidth: 0, maxWidth: size.width);

    myList.addAll([
      textPainter,
      textPainter2,
      textPainter3,
      textPainter4,
      textPainter5,
      textPainter6,
      textPainter7,
    ]);

    var centerX = size.width * .93;
    var centerX2 = size.width * .82;
    var centerY = size.height / 2;
    var centerY2 = size.height * .5;

    var center = Offset(centerX, centerY);
    var radius = size.height * .44;

    var outerRadius = radius - size.height * .03;
    var innerRadius = radius - size.height * .06;
    var innerRadius2 = radius - size.height * .13;
    var innerRadius3 = radius - size.height * .13;

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
          ..strokeWidth = size.height * .01;
    var paint3 =
        Paint()
          ..color = const Color.fromARGB(255, 90, 90, 90)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.height * .015;
    var paint4 =
        Paint()
          ..color = const Color.fromARGB(255, 90, 90, 90)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.height * .02;
    var paint5 =
        Paint()
          ..color = const Color.fromARGB(255, 90, 90, 90)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.height * .025;
    var paint6 =
        Paint()
          ..color = const Color.fromARGB(255, 90, 90, 90)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.height * .03;
    var paint7 =
        Paint()
          ..color = const Color.fromARGB(255, 90, 90, 90)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.height * .035;
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
    int TempRange1 = 3;
    int TempRange2 = 3;
    for (int i = 0; i < 70; i += 20) {
      double x1 = centerX - innerRadius3 * cos(i * pi / 140) - size.width * .07;
      double y1 =
          centerY - innerRadius3 * sin(i * pi / 140) - size.height * .02;
      double x2 = centerX - innerRadius2 * cos(i * pi / 140) - size.width * .07;
      double y2 =
          centerY - innerRadius2 * -sin(i * pi / 140) - size.height * .02;

      myList[TempRange1].paint(canvas, Offset(x2, y2));
      i == 0 ? Null : myList[TempRange2].paint(canvas, Offset(x1, y1));
      TempRange1++;
      TempRange2 == 0 ? Null : TempRange2--;
    }
    for (int i = 0; i < 70; i += 20) {
      double x1 = centerX - outerRadius * cos(i * pi / 140);
      double y1 = centerY - outerRadius * sin(i * pi / 140);
      double x2 = centerX - innerRadius * cos(i * pi / 140);
      double y2 = centerY - innerRadius * sin(i * pi / 140);

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), hourDashPaint);
    }

    // final midPoint = Offset(size.width * .77, size.height * .5);

    // canvas.save();

    // canvas.translate(midPoint.dx, midPoint.dy);

    // double angle = 192 * (3.14159 / 180);

    // canvas.rotate(angle);
    // canvas.translate(-midPoint.dx, -midPoint.dy);

    // final path = Path();
    // path.moveTo(size.width * .79, size.height * .6);
    // path.lineTo(size.width * .65, size.height * .25);
    // path.lineTo(size.width * .83, size.height * .595);
    // // path.lineTo(size.width*.935, size.height*.6);
    // // path.lineTo(size.width*.95, size.height*.4);

    // canvas.drawPath(path, paintStick);

    // final circlePaint =
    //     Paint()
    //       ..color = Colors.white
    //       ..style = PaintingStyle.fill;
    // final circlePaint2 =
    //     Paint()
    //       ..color = Colors.black
    //       ..style = PaintingStyle.fill;

    // canvas.drawCircle(midPoint, 6.0, circlePaint);
    // canvas.drawCircle(midPoint, 3.0, circlePaint2);

    // canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomPaintDial2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    List<TextPainter> myList = [];
    var paint =
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 3;

    final textstyle = TextStyle(
      color: const Color.fromARGB(186, 255, 255, 255),
      fontSize: size.height * .04,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
    );

    final textSpan = TextSpan(text: '24', style: textstyle);
    final textSpan2 = TextSpan(text: '20', style: textstyle);
    final textSpan3 = TextSpan(text: '16', style: textstyle);
    final textSpan4 = TextSpan(text: '12', style: textstyle);
    final textSpan5 = TextSpan(text: '8', style: textstyle);
    final textSpan6 = TextSpan(text: '4', style: textstyle);
    final textSpan7 = TextSpan(text: '0', style: textstyle);

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
    final textPainter5 = TextPainter(
      text: textSpan5,
      textDirection: TextDirection.ltr,
    );
    final textPainter6 = TextPainter(
      text: textSpan6,
      textDirection: TextDirection.ltr,
    );
    final textPainter7 = TextPainter(
      text: textSpan7,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(minWidth: 0, maxWidth: size.width);
    textPainter2.layout(minWidth: 0, maxWidth: size.width);
    textPainter3.layout(minWidth: 0, maxWidth: size.width);
    textPainter4.layout(minWidth: 0, maxWidth: size.width);
    textPainter5.layout(minWidth: 0, maxWidth: size.width);
    textPainter6.layout(minWidth: 0, maxWidth: size.width);
    textPainter7.layout(minWidth: 0, maxWidth: size.width);

    myList.addAll([
      textPainter,
      textPainter2,
      textPainter3,
      textPainter4,
      textPainter5,
      textPainter6,
      textPainter7,
    ]);

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
          ..strokeWidth = size.height * .01;
    var paint3 =
        Paint()
          ..color = const Color.fromARGB(255, 90, 90, 90)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.height * .015;
    var paint4 =
        Paint()
          ..color = const Color.fromARGB(255, 90, 90, 90)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.height * .02;
    var paint5 =
        Paint()
          ..color = const Color.fromARGB(255, 90, 90, 90)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.height * .025;
    var paint6 =
        Paint()
          ..color = const Color.fromARGB(255, 90, 90, 90)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.height * .03;
    var paint7 =
        Paint()
          ..color = const Color.fromARGB(255, 90, 90, 90)
          ..style = PaintingStyle.stroke
          ..strokeWidth = size.height * .035;

    var centerX = size.width * .07;
    var centerX2 = size.width * .82;
    var centerY = size.height / 2;
    var centerY2 = size.height * .5;

    var center = Offset(centerX, centerY);
    var radius = size.height * .44;

    var outerRadius = radius - size.height * .03;
    var innerRadius = radius - size.height * .06;
    var innerRadius2 = radius - size.height * .13;
    var innerRadius3 = radius - size.height * .13;

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

    int Range1 = 3;
    int Range2 = 2;
    for (int i = 0; i < 70; i += 20) {
      double x1 =
          centerX - innerRadius3 * -cos(i * pi / 140) - size.width * .07;
      double y1 =
          centerY - innerRadius3 * sin(i * pi / 140) - size.height * .02;
      double x2 =
          centerX - innerRadius2 * -cos(i * pi / 140) - size.width * .07;
      double y2 =
          centerY - innerRadius2 * -sin(i * pi / 140) - size.height * .02;

      myList[Range1].paint(canvas, Offset(x2, y2));
      i == 0 ? Null : myList[Range2].paint(canvas, Offset(x1, y1));
      Range1++;
      i == 0 ? Null : Range2--;
    }
    for (int i = 0; i < 70; i += 20) {
      double x1 = centerX - outerRadius * -cos(i * pi / 140);
      double y1 = centerY - outerRadius * -sin(i * pi / 140);
      double x2 = centerX - innerRadius * -cos(i * pi / 140);
      double y2 = centerY - innerRadius * -sin(i * pi / 140);

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), hourDashPaint);
    }

    // final midPoint = Offset(size.width * .23, size.height * .5);

    // canvas.save();

    // canvas.translate(midPoint.dx, midPoint.dy);

    // double angle = 168 * (3.14159 / 180);

    // canvas.rotate(angle);
    // canvas.translate(-midPoint.dx, -midPoint.dy);

    // final path = Path();
    // path.moveTo(size.width * .21, size.height * .6);
    // path.lineTo(size.width * .35, size.height * .25);
    // path.lineTo(size.width * .17, size.height * .596);
    // // path.lineTo(size.width*.935, size.height*.6);
    // // path.lineTo(size.width*.95, size.height*.4);

    // canvas.drawPath(path, paintStick);

    // final circlePaint =
    //     Paint()
    //       ..color = Colors.white
    //       ..style = PaintingStyle.fill;
    // final circlePaint2 =
    //     Paint()
    //       ..color = Colors.black
    //       ..style = PaintingStyle.fill;

    // canvas.drawCircle(midPoint, 6.0, circlePaint);
    // canvas.drawCircle(midPoint, 3.0, circlePaint2);

    // canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
