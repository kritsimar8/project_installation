import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:installation_project/DataProcessing.dart';
import 'package:installation_project/main.dart';
import 'package:mqtt_client/mqtt_client.dart';

class Item {
  String item;
  bool compeleted;
  static bool isMqttStart = false;

  static MqttInitialize() {
    isMqttStart = true;
  }

  Item({required this.item, this.compeleted = false});
  void toogle() {
    compeleted = !compeleted;
  }
}

class ItemData with ChangeNotifier {
  CombinedClass demo;

  ItemData({required this.demo});

  List<Item> _items = [];
  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);
  bool introCheck = false;

  Future<void> Testing() async {
    for (int i = 0; i < 10; i++) {
      demo.IncrementCount();
      print(i);
      await Future.delayed(Duration(seconds: 1));
    }
  }

  int dummy = 5;
  get dum => dummy;
  Ampere? get AmpRead => myAmp;
  SuctionTemp? get SuctTempRead => mySTemp;
  SPressure? get SPressureRead => mySPress;
  DPressure? get DPressRead => myDPress;

  Ampere? myAmp;
  DPressure? myDPress;
  SPressure? mySPress;
  InTemp? myInTemp;
  OutTemp? myOutTemp;
  SuctionTemp? mySTemp;
  MyWeight Weights = MyWeight(TotalWeight: 1.0, consumedWt: 1.0);
  CFMIn myInCfm = CFMIn(oldCfm: 6, NewCfm: 6);
  CFMOut myOutCfm = CFMOut(oldCfm: 5, NewCfm: 5);

  double? prevAmp;
  double? prevSTemp;
  double? prevDpress;
  double? prevInTmp;
  double? prevOutTemp;
  double? prevSpress;
  double? prevCFMIn;
  double? prevCFMOut;
  double? currentAmp;
  double? currentSTemp;
  double? currentDPress;
  double? currentInTmp;
  double? currentSPress;
  double? currentOutTemp;
  double? currentConsumedWt;
  double? currentCFMIn;
  double? currentCFMOut;
  double currentConsumedWtRound = 1.0;
  double? currentTotalWt;
  double currentTotalWtRound = 1.0;

  MyIndicators SPressIndicator = MyIndicators(
    IndicatorNo: 5,
    isAboveThreshold: true,
  );
  MyIndicators DPressIndicator = MyIndicators(
    IndicatorNo: 5,
    isAboveThreshold: true,
  );
  MyIndicators InTempIndicator = MyIndicators(
    IndicatorNo: 5,
    isAboveThreshold: true,
  );
  MyIndicators OutTempIndicator = MyIndicators(
    IndicatorNo: 5,
    isAboveThreshold: true,
  );

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

  void IndicationCalc(
    double? IndVal1,
    double? IndVal2,
    double? IndVal3,
    double? IndVal4,
  ) {
    SPressIndicator.IndicatorNo = ((IndVal1! / 24).round()).abs();
    DPressIndicator.IndicatorNo = ((IndVal2! / 24).round()).abs();
    InTempIndicator.IndicatorNo = ((IndVal3! / 24).round()).abs();
    OutTempIndicator.IndicatorNo = ((IndVal4! / 24).round()).abs();
    // print('$IndicationLevelSPress this is first phase');
  }

  void ThresholdSet() {
    SPressIndicator.isAboveThreshold = currentSPress! > 0 ? true : false;
    DPressIndicator.isAboveThreshold = currentDPress! > 0 ? true : false;
    InTempIndicator.isAboveThreshold = currentInTmp! > 0 ? true : false;
    OutTempIndicator.isAboveThreshold = currentOutTemp! > 0 ? true : false;
  }

  void WeightCalc() {
    currentTotalWtRound = ((currentTotalWt! / 10).ceil() / 10);
    currentConsumedWtRound = ((currentConsumedWt! / 10).ceil() / 10);
  }

  List<String> Labels = [
    'GasInd',
    'Stemp',
    'Ampere',
    'SPress',
    'DPress',
    'InTemp',
    'OutTemp',
    'TotalWt',
    'ConsumedWt',
    'CFMIN',
    'CFMOUT',
    'Hum',
    'AmbTemp',
  ];
  Map<String, double>? MyData;

  void DataSet(String mqttData) {
    List<String> newData = mqttData.split(":");

    List<double> newDataInt = newData.map((i) => double.parse(i)).toList();

    MyData = Map.fromIterables(Labels, newDataInt);
    demo.startUpdatingValues(MyData!);

    if (introCheck == false) {
      prevAmp = prevSTemp = 1.0;
      prevSpress = prevDpress = prevInTmp = prevOutTemp = -120;

      introCheck = true;
    } else {
      prevAmp = currentAmp;
      prevDpress = currentDPress;
      prevSpress = currentSPress;
      prevSTemp = currentSTemp;
      prevInTmp = currentInTmp;
      prevOutTemp = currentOutTemp;
      prevCFMIn = currentCFMIn;
      prevCFMOut = currentCFMOut;
    }

    currentSTemp = MyData?['Stemp'];
    currentAmp = MyData?['Ampere'];
    currentSPress = MyData?['SPress'];
    currentDPress = MyData?['DPress'];
    currentInTmp = MyData?['InTemp'];
    currentOutTemp = MyData?['OutTemp'];
    currentTotalWt = MyData?['TotalWt'];
    currentConsumedWt = MyData?['ConsumedWt'];
    currentCFMIn = MyData?['CFMIN'];
    currentCFMOut = MyData?['CFMOUT'];

    IndicationCalc(currentSPress, currentDPress, currentInTmp, currentOutTemp);
    ThresholdSet();
    WeightCalc();

    print(' this curr $currentSTemp and this is prev $prevSTemp');

    myAmp = Ampere(newAmp: currentAmp, oldAmp: prevAmp);
    mySPress = SPressure(newSPress: currentSPress, oldSPress: prevSpress);
    mySTemp = SuctionTemp(newSTemp: currentSTemp, oldSTemp: prevSTemp);
    myDPress = DPressure(newDPress: currentDPress, oldDPress: prevDpress);
    myInTemp = InTemp(newInTemp: currentInTmp, oldInTemp: prevInTmp);
    myOutTemp = OutTemp(newOutTemp: currentOutTemp, oldOutTemp: prevOutTemp);
    // print('$currentTotalWtRound this is Total     $currentConsumedWtRound this is consumed wt');
    Weights = MyWeight(
      TotalWeight: currentTotalWtRound,
      consumedWt: currentConsumedWtRound,
    );
    myInCfm = CFMIn(oldCfm: prevCFMIn ?? 6, NewCfm: currentCFMIn ?? 0);
    myOutCfm = CFMOut(oldCfm: prevCFMOut ?? 6, NewCfm: currentCFMOut ?? 0);

    notifyListeners();
    print('mera hogya');
  }

  Future startMqtt() async {
    if (Item.isMqttStart == false) {
      Future.delayed(Duration(milliseconds: 5000), () {
        mqttData();
      });
      Item.MqttInitialize();
    }
  }

  Future mqttData() async {
    client.setProtocolV311();
    client.logging(on: false);
    client.keepAlivePeriod = 20;
    client.onDisconnected = onDisconnected;
    client.onSubscribed = onSubscribed;
    final connMess = MqttConnectMessage()
        .withClientIdentifier('Mqtt_MyClientUniqueIdQ2')
        .withWillTopic(
          'willtopic',
        ) // If you set this you must set a will message
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
    // client.subscribe(topic2, MqttQos.atLeastOnce);

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
        builder1.addString('30:1.5:0:100:40:90:20:80:30:6:4:65:8');
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

  Future<void> Sendingdata() async {
   
   
      if (client.connectionStatus!.state == MqttConnectionState.connected ) {
        final builder1 = MqttClientPayloadBuilder();
        builder1.addString('this is for testing purpose');
        print('Test is published');
        client.publishMessage(topic2, MqttQos.atLeastOnce, builder1.payload!);
      }
    }
  
} 

class MyIndicators {
  int IndicatorNo;
  bool isAboveThreshold;

  MyIndicators({required this.IndicatorNo, required this.isAboveThreshold});
}
