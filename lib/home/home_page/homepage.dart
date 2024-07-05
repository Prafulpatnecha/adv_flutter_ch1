import 'package:flutter/material.dart';

import '../../utils/golble_value.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          width: width/1.09,
          height: height/1.3,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: isDark?Colors.white12:Colors.black12,
                offset: const Offset(0,0),
                blurStyle: BlurStyle.outer,
                spreadRadius: 0,
                blurRadius: 50
              ),
            ],
            borderRadius: BorderRadius.circular(20),
            color: isDark?Colors.black:Colors.white
          ),
          child: Column(
            children: [
              SizedBox(height: height*0.1,),
              Text('Yo Man!',style: TextStyle(color: isDark?Colors.white:Colors.black,fontSize: 30,fontWeight: FontWeight.bold,),),
              Text("It's a simple example of\n dark theme",textAlign: TextAlign.center,style: TextStyle(color: isDark?Colors.white38:Colors.black38,fontSize: 23,),),
              SizedBox(height: height*0.1,),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isDark=false;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height:115,
                    width: double.infinity,
                    decoration: BoxDecoration(
                    color: colorYellow,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Text('Light Icon',style: TextStyle(color: isDark?Colors.white:Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isDark=true;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height:115,
                    width: double.infinity,
                    decoration: BoxDecoration(
                    color: colorRed,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Text('Dark Icon',style: TextStyle(color: isDark?Colors.white:Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
