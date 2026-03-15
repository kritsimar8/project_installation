import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:installation_project/ButtonPage.dart';
import 'package:installation_project/HomePage_main.dart';
import 'package:installation_project/intro_page.dart';
import 'package:installation_project/second_page.dart';
import 'package:installation_project/test.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';


const topic1 = 'Honey1';
const topic2 = 'Honey2';
MqttServerClient client = MqttServerClient('test.mosquitto.org', '');
bool topic1Subscribed = false;
bool topic2Subscribed = false;

void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await GoogleFonts.pendingFonts([
    GoogleFonts.robotoMono(),
  ]);
   runApp(const MyApp());

  // client.setProtocolV311();
  // client.logging(on: false);
  // client.keepAlivePeriod = 20;
  // client.onDisconnected = onDisconnected;
  // client.onSubscribed = onSubscribed;
  // final connMess = MqttConnectMessage()
  //     .withClientIdentifier('Mqtt_MyClientUniqueIdQ2')
  //     .withWillTopic('willtopic') // If you set this you must set a will message
  //     .withWillMessage('My Will message')
  //     .startClean() // Non persistent session for testing
  //     .withWillQos(MqttQos.atLeastOnce);
  // print('EXAMPLE::Hive client connecting....');
  // client.connectionMessage = connMess;

  //  try {
  //   await client.connect();
  // } on Exception catch (e) {
  //   print('EXAMPLE::client exception - $e');
  //   client.disconnect();
  // }

  // /// Check we are connected
  // if (client.connectionStatus!.state == MqttConnectionState.connected) {
  //   print('EXAMPLE::Hive client connected');
  // } else {
  //   print(
  //     'EXAMPLE::ERROR Hive client connection failed - disconnecting, state is ${client.connectionStatus!.state}',
  //   );
  //   client.disconnect();
  //   exit(-1);
  // }
  //  /// Lets try our subscriptions
  // print('EXAMPLE:: <<<< SUBSCRIBE 1 >>>>');
  // client.subscribe(topic1, MqttQos.atLeastOnce);
  // print('EXAMPLE:: <<<< SUBSCRIBE 2 >>>>');
  // client.subscribe(topic2, MqttQos.atLeastOnce);

  // client.updates!.listen((messageList) {
  //   final recMess = messageList[0];
  //   final pubMess = recMess.payload as MqttPublishMessage;
  //   final pt = MqttPublishPayload.bytesToStringAsString(
  //     pubMess.payload.message,
  //   );
  //   print(
  //     'EXAMPLE::Change notification:: topic is <${recMess.topic}>, payload is <-- $pt -->',
  //   );
  //   print(pt.runtimeType);
  //   conversion(pt);
    
    
  // });
                                                          
  //  client.published!.listen((MqttPublishMessage message) {
  //   print(
  //     'EXAMPLE::Published notification:: topic is ${message.variableHeader!.topicName}, with Qos ${message.header!.qos}',
  //   );
  // });

  // /// Publish once the subscriptions are acknowledged
  // bool wait = true;
  // while (wait) {
  //   if (topic1Subscribed && topic2Subscribed) {
  //     wait = false;
  //     print('EXAMPLE::Both topics confirmed, publishing');
  //     final builder1 = MqttClientPayloadBuilder();
  //     builder1.addString('Hello from mqtt_client topic 1');
  //     print('EXAMPLE:: <<<< PUBLISH 1 >>>>');
  //     client.publishMessage(topic1, MqttQos.atLeastOnce, builder1.payload!);

  //     final builder2 = MqttClientPayloadBuilder();
  //     builder2.addString('Hello from mqtt_client topic 2');
  //     print('EXAMPLE:: <<<< PUBLISH 2 >>>>');
  //     client.publishMessage(topic2, MqttQos.atLeastOnce, builder2.payload!);
  //   } else {
  //     await MqttUtilities.asyncSleep(1);
  //   }
  // }
  // //  print('EXAMPLE::Sleeping....');
  // // await MqttUtilities.asyncSleep(30);

  // // print('EXAMPLE::Unsubscribing');
  // // client.unsubscribe(topic1);
  // // client.unsubscribe(topic2);

  // // await MqttUtilities.asyncSleep(5);
  // // print('EXAMPLE::Disconnecting');
  // // client.disconnect();
  // return 0;
 
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

void conversion(String data){
  final List<String> newData = data.split(":");
  print('hello');
  print(newData);
  print(newData.runtimeType);
  // return newData;
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/Main': (context) => const HomepageMain()
      },
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: Intro(),
    );
  }
}

// final client = MqttServerClient('test.mosquitto.org', '');
// const topic1 = 'SJHTopic1';
// const topic2 = 'SJHTopic2';
// bool topic1Subscribed = true;
// bool topic2Subscribed = false;

// var pongCount = 0; // Pong counter
// var pingCount = 0; // Ping counter

// Future<int> main() async {
//    client.setProtocolV311();
//   client.logging(on: false);
//   client.keepAlivePeriod = 20;
//   client.onDisconnected = onDisconnected;
//   client.onSubscribed = onSubscribed;
//   final connMess = MqttConnectMessage()
//       .withClientIdentifier('Mqtt_MyClientUniqueIdQ2')
//       .withWillTopic('willtopic') // If you set this you must set a will message
//       .withWillMessage('My Will message')
//       .startClean() // Non persistent session for testing
//       .withWillQos(MqttQos.atLeastOnce);
//   print('EXAMPLE::Hive client connecting....');
//   client.connectionMessage = connMess;

//    try {
//     await client.connect();
//   } on Exception catch (e) {
//     print('EXAMPLE::client exception - $e');
//     client.disconnect();
//   }

//   /// Check we are connected
//   if (client.connectionStatus!.state == MqttConnectionState.connected) {
//     print('EXAMPLE::Hive client connected');
//   } else {
//     print(
//       'EXAMPLE::ERROR Hive client connection failed - disconnecting, state is ${client.connectionStatus!.state}',
//     );
//     client.disconnect();
//     exit(-1);
//   }

//     print('EXAMPLE:: <<<< SUBSCRIBE 1 >>>>');
//   client.subscribe(topic1, MqttQos.atLeastOnce);
//   print('EXAMPLE:: <<<< SUBSCRIBE 2 >>>>');
//   client.subscribe(topic2, MqttQos.atLeastOnce);

//   client.updates!.listen((messageList) {
//     final recMess = messageList[0];
//     final pubMess = recMess.payload as MqttPublishMessage;
//     final pt = MqttPublishPayload.bytesToStringAsString(
//       pubMess.payload.message,
//     );
//     print(
//       'EXAMPLE::Change notification:: topic is <${recMess.topic}>, payload is <-- $pt -->',
//     );
//   });

//    client.published!.listen((MqttPublishMessage message) {
//     print(
//       'EXAMPLE::Published notification:: topic is ${message.variableHeader!.topicName}, with Qos ${message.header!.qos}',
//     );
//   });

//    bool wait = true;
//   while (wait) {
//     if (topic1Subscribed && topic2Subscribed) {
//       wait = false;
//       print('EXAMPLE::Both topics confirmed, publishing');
//       final builder1 = MqttClientPayloadBuilder();
//       builder1.addString('Hello from mqtt_client topic 1');
//       print('EXAMPLE:: <<<< PUBLISH 1 >>>>');
//       client.publishMessage(topic1, MqttQos.atLeastOnce, builder1.payload!);

//       final builder2 = MqttClientPayloadBuilder();
//       builder2.addString('Hello from mqtt_client topic 2');
//       print('EXAMPLE:: <<<< PUBLISH 2 >>>>');
//       client.publishMessage(topic2, MqttQos.atLeastOnce, builder2.payload!);
//     } else {
//       await MqttUtilities.asyncSleep(1);
//     }
//   }

//     print('EXAMPLE::Sleeping....');
//   await MqttUtilities.asyncSleep(30);

//   print('EXAMPLE::Unsubscribing');
//   client.unsubscribe(topic1);
//   client.unsubscribe(topic2);

//   await MqttUtilities.asyncSleep(5);
//   print('EXAMPLE::Disconnecting');
//   client.disconnect();
//   return 0;



// }

// void onSubscribed(String topic) {
//   print('EXAMPLE::Subscription confirmed for topic $topic');
//   if (topic == topic1) {
//     topic1Subscribed = true;
//   }
//   if (topic == topic2) {
//     topic2Subscribed = true;
//   }
// }

// void onDisconnected() {
//   print('EXAMPLE::OnDisconnected client callback - Client disconnection');
// }

// void onConnected() {
//   print(
//     'EXAMPLE::OnConnected client callback - Client connection was successful',
//   );
// }


// void pong() {
//   print('EXAMPLE::Ping response client callback invoked');
//   pongCount++;
//   print(
//     'EXAMPLE::Latency of this ping/pong cycle is ${client.lastCycleLatency} milliseconds',
//   );
// }

// void ping() {
//   print('EXAMPLE::Ping sent client callback invoked');
//   pingCount++;
// }