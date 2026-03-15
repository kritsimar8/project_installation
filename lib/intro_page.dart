import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:installation_project/HomePage_main.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {

  @override
  Widget build(BuildContext context) {
   Future.delayed(Duration(seconds: 2),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomepageMain()));
   });
    double MyHeight = MediaQuery.of(context).size.height;
    double Mywidth = MediaQuery.of(context).size.width;


    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: MyHeight*.39),
              height: MyHeight*.25,
              width: Mywidth*.8,
              color: const Color.fromARGB(0, 20, 255, 28),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Ambience Automation',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.fugazOne(
                        color: const Color.fromARGB(255, 33, 240, 40),
                        fontSize: 50
                      ),
                    ),
                    Text(
                      'Lets automate ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.gruppo(
                        color: const Color.fromARGB(255, 33, 240, 40),
                        fontSize: 25
                      ),
                    ),
                  ],
                ),
              )
            ),
            Spacer(),
            Text('Ambience Automation',
            style: GoogleFonts.libreBarcode128(
              color:  const Color.fromARGB(255, 33, 240, 40),
              fontSize: 30
            ),
            )
          ],
        ),
      ),
    );
  }
}