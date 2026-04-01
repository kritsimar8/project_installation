import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:installation_project/DataProcessing.dart';
import 'package:installation_project/main.dart';
import 'package:mqtt_client/mqtt_client.dart';

class Item {
  String item;
  bool compeleted;
  Item({required this.item, this.compeleted = false});
  void toogle() {
    compeleted = !compeleted;
  }
}

class ItemData with ChangeNotifier {
  List<Item> _items = [];
  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);
  bool introCheck = false;

  int dummy =5;
  get dum => dummy;
  Ampere? get  AmpRead => myAmp;

  Ampere? myAmp;

  int? prevAmp; 
  int? currentAmp;

  int get size => _items.length;

  void addItem(Item item) {
    _items.add(item);
    notifyListeners();
   
  }

  void toggleItem(Item item) {
    item.toogle();
    notifyListeners();
  }

  void removeItems(Item item) {
    _items.remove(item);
    notifyListeners();
  }

  List<String> Labels = ['Stemp','Dtemp','Weight','CfmIn'];
  Map<String?,int?>? MyData;


  void DataSet(String mqttData){
    List<String> newData = mqttData.split(":");
    List<int> newDataInt = newData.map((i)=> int.parse(i)).toList();
    if(introCheck== false){
      prevAmp = 10;
      introCheck = true;
    }else{
       prevAmp = currentAmp ?? 1;
    }
    
    MyData = Map.fromIterables(Labels, newDataInt);    
    currentAmp = MyData?['Stemp'];
    
    print(' this curr $currentAmp and this is prev $prevAmp');
  
    myAmp = Ampere(NewAmp: currentAmp, OldAmp: prevAmp);

    
    notifyListeners();
    print('mera hogya');
    
  }

  Future mqttData() async{

  client.setProtocolV311();
  client.logging(on: false);
  client.keepAlivePeriod = 20;
  client.onDisconnected = onDisconnected;
  client.onSubscribed = onSubscribed;
  final connMess = MqttConnectMessage()
      .withClientIdentifier('Mqtt_MyClientUniqueIdQ2')
      .withWillTopic('willtopic') // If you set this you must set a will message
      .withWillMessage('My Will message')
      .startClean() // Non persistent session for testing
      .withWillQos(MqttQos.atLeastOnce);
  print('EXAMPLE::Hive client connecting....');
  client.connectionMessage = connMess;
  
   try {
    await client.connect();
  } on Exception catch (e) {
    print('EXAMPLE::client exception - $e');
    client.disconnect();
  }

  /// Check we are connected
  if (client.connectionStatus!.state == MqttConnectionState.connected) {
    print('EXAMPLE::Hive client connected');
  } else {
    print(
      'EXAMPLE::ERROR Hive client connection failed - disconnecting, state is ${client.connectionStatus!.state}',
    );
    client.disconnect();
    // exit(-1);
  }
   /// Lets try our subscriptions
  print('EXAMPLE:: <<<< SUBSCRIBE 1 >>>>');
  client.subscribe(topic1, MqttQos.atLeastOnce);
  print('EXAMPLE:: <<<< SUBSCRIBE 2 >>>>');
  client.subscribe(topic2, MqttQos.atLeastOnce);

  client.updates!.listen((messageList) {
    final recMess = messageList[0];
    final pubMess = recMess.payload as MqttPublishMessage;
    final pt = MqttPublishPayload.bytesToStringAsString(
      pubMess.payload.message,
    );
    print(
      'EXAMPLE::Change notification:: topic is <${recMess.topic}>, payload is <-- $pt -->',
    );
   DataSet(pt);
    
    
     
  });
                                                          
  //  client.published!.listen((MqttPublishMessage message) {
  //   print(
  //     'EXAMPLE::Published notification:: topic is ${message.variableHeader!.topicName}, with Qos ${message.header!.qos}',
  //   );
  // });

  /// Publish once the subscriptions are acknowledged
  bool wait = true;
  while (wait) {
    if (topic1Subscribed && topic2Subscribed) {
      wait = false;
      print('EXAMPLE::Both topics confirmed, publishing');
      final builder1 = MqttClientPayloadBuilder();
      builder1.addString('10 :20 :30 :40');
      print('EXAMPLE:: <<<< PUBLISH 1 >>>>');
      client.publishMessage(topic1, MqttQos.atLeastOnce, builder1.payload!);

      final builder2 = MqttClientPayloadBuilder();
      builder2.addString('Hello: from :mqtt_client: topic 2');
      print('EXAMPLE:: <<<< PUBLISH 2 >>>>');
      // client.publishMessage(topic2, MqttQos.atLeastOnce, builder2.payload!);
    } else {
      await MqttUtilities.asyncSleep(1);
    }
  }
  //  print('EXAMPLE::Sleeping....');
  // await MqttUtilities.asyncSleep(30);

  // print('EXAMPLE::Unsubscribing');
  // client.unsubscribe(topic1);
  // client.unsubscribe(topic2);

  // await MqttUtilities.asyncSleep(5);
  // print('EXAMPLE::Disconnecting');
  // client.disconnect();
  return 0;
}


}

