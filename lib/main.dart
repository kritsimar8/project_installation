import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:installation_project/ButtonPage.dart';
import 'package:installation_project/HomePage_main.dart';

void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await GoogleFonts.pendingFonts([
    GoogleFonts.robotoMono(),
  ]);


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: HomepageMain(),
    );
  }
}