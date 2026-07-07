import 'package:flutter/material.dart';
import 'package:installation_project/ButtonPage.dart';
import 'package:installation_project/checking.dart';
import 'package:installation_project/homePage.dart';
import 'package:installation_project/second_page.dart';
import 'package:provider/provider.dart';

class HomepageMain extends StatefulWidget {
  const HomepageMain({super.key});

  @override
  State<HomepageMain> createState() => _HomePageState();
}

class _HomePageState extends State<HomepageMain> {

  int index = 1;

   changeIndex(int myIndex){
    setState(() {
       index = myIndex; 
    });
   
  }


  @override
  Widget build(BuildContext context) {
    Provider.of<ItemData>(context, listen: false).startMqtt();
    final MyHeight = MediaQuery.of(context).size.height;
    final MyWidth = MediaQuery.of(context).size.width;
    print(index);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
     index ==1? HomePage(): index==2? SecondPage(): ButtonPage(),
          Column(
            children: [
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap:(){
                      changeIndex(1);},
                     
                    child: Icon(
                      Icons.home,
                      color: const Color.fromARGB(61, 255, 255, 255),
                    ),
                  ),
                  GestureDetector(
                     onTap: (){
                      changeIndex(2);
                      },
                    
                     
                    child: Icon(
                      Icons.balance,
                      color: const Color.fromARGB(61, 255, 255, 255),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      changeIndex(3);
                      print('3 is pressed');
                    },
                    child: Icon(
                      Icons.settings_power,
                      color: const Color.fromARGB(58, 255, 255, 255),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: MyWidth * .232),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                index==1?    CircleAvatar(
                      radius: 1,

                      backgroundColor: const Color.fromARGB(255, 53, 255, 59),
                    ):SizedBox(),
                 index==2?   CircleAvatar(
                      radius: 1,

                      backgroundColor: const Color.fromARGB(255, 53, 255, 59),
                    ):SizedBox() ,

                  index==3?  CircleAvatar(
                      radius: 1,

                      backgroundColor: const Color.fromARGB(255, 53, 255, 59),
                    ):SizedBox(),
                  ],
                ),
              ),
              SizedBox(height: MyHeight*.03,)
            ],
          ),
        ],
      ),
    );
  }
}