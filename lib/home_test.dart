import 'package:flutter/material.dart';
import 'package:installation_project/DataProcessing.dart';
import 'package:installation_project/checking.dart';
import 'package:installation_project/item_list.dart';
import 'package:installation_project/main.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:provider/provider.dart';

class Test_Home extends StatefulWidget {
  const Test_Home({super.key});

  @override
  State<Test_Home> createState() => _Test_HomeState();
}

class _Test_HomeState extends State<Test_Home> {

  ItemData myProcess = ItemData(demo:CombinedClass());


  @override
  Widget build(BuildContext context) {
    Provider.of<ItemData>(context,listen: false).mqttData();
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider demo'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          ItemList(),
          Center(
            child: Consumer<ItemData>(
              // selector: (p0, p1) => p1.prevAmp,
              builder: (context, value, child) {
                print(value.AmpRead?.newAmp);
                print('top one is new checking');
                return Text(value.AmpRead?.newAmp.toString() ?? 'Null');
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(context: context, builder: (context){
          String item = '';
          return AlertDialog(
            title: const Text('add item'),
            content: TextField(
              onChanged: (value){
                item = value;
              },
              decoration: const InputDecoration(hintText: 'Enter item name'),
            ),
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, 
                  foregroundColor: Colors.white, 
                ),
                onPressed: (){
                  if (item.isNotEmpty){
                    Provider.of<ItemData>(context, listen: false).addItem(Item(item: item));
                    Navigator.pop(context);
                  }
                }, child: const Text('Add'))
            ],
          );
        });
      },
      child: const Icon(Icons.add),
      ),
    );
  }
}

