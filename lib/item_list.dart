import 'package:flutter/material.dart';
import 'package:installation_project/checking.dart';
import 'package:provider/provider.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemData>(
      builder: (context, data, child)  {
        return ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: data.size,
          shrinkWrap: true,
          itemBuilder: (context,index){
            final item = data.items[index];
           
            return GestureDetector(
              onLongPress: ()=> data.removeItems(item),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    child: Text(item.item[0]),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Text(item.item,
                    style: TextStyle(
                      decoration: item.compeleted ? TextDecoration.lineThrough : null,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),),
                    Checkbox(value: item.compeleted, 
                    onChanged: (c)=> data.toggleItem(item))
                    ],
                  ),
                ),
              ),
            );
          });
      },
    );
  }
}