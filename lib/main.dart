import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:installation_project/ButtonPage.dart';
import 'package:installation_project/DataProcessing.dart';
import 'package:installation_project/HomePage_main.dart';
import 'package:installation_project/checking.dart';
import 'package:installation_project/homePage.dart';
import 'package:installation_project/home_test.dart';
import 'package:installation_project/intro_page.dart';
import 'package:installation_project/second_page.dart';
import 'package:installation_project/test.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'package:provider/provider.dart';


const topic1 = 'Honey1';
const topic2 = 'Honey2';
MqttServerClient client = MqttServerClient('broker.hivemq.com', '');
bool topic1Subscribed = false;
bool topic2Subscribed = false;

 Future main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await GoogleFonts.pendingFonts([
    GoogleFonts.robotoMono(),
  ]);
   runApp(const MyApp());

  

 
  
 
}

void onSubscribed(String topic) {
  print('EXAMPLE::Subscription confirmed for topic $topic');
  if (topic == topic1) {
    topic1Subscribed = true;
  }
  if (topic == topic2) {
    topic2Subscribed = true;
  }
}

/// The unsolicited disconnect callback
void onDisconnected() {
  print('EXAMPLE::OnDisconnected client callback - Client disconnection');
}

// void conversion(String data){
//   final List<String> newData = data.split(":");
//   print('hello');
//   print(newData);
//   print(newData.runtimeType);
//   dataProcessing().DataSet(newData);

//   // return newData;
// }




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ItemData(),
      child: MaterialApp(
        routes: {
          '/Main': (context) => const HomepageMain()
        },
        title: 'Flutter Demo',
        theme: ThemeData(
      
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        debugShowCheckedModeBanner: false,
        home: Test_Home(),
      ),

    );
  }
}
