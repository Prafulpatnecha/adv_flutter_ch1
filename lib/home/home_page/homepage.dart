import 'package:adv_flutter_ch1/quotesdata/provider/provider_qoutes_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/golble_value.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ProviderQuotesPage providerQuotesPageTrue=Provider.of<ProviderQuotesPage>(context,listen: true);
    ProviderQuotesPage providerQuotesPageFalse=Provider.of<ProviderQuotesPage>(context,listen: false);
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
                color: providerQuotesPageTrue.isDark?Colors.white12:Colors.black12,
                offset: const Offset(0,0),
                blurStyle: BlurStyle.outer,
                spreadRadius: 0,
                blurRadius: 50
              ),
            ],
            borderRadius: BorderRadius.circular(20),
            color: providerQuotesPageTrue.isDark?Colors.black:Colors.white
          ),
          child: Column(
            children: [
              SizedBox(height: height*0.1,),
              Text('Yo Man!',style: TextStyle(color: providerQuotesPageTrue.isDark?Colors.white:Colors.black,fontSize: 30,fontWeight: FontWeight.bold,),),
              Text("It's a simple example of\n dark theme",textAlign: TextAlign.center,style: TextStyle(color: providerQuotesPageTrue.isDark?Colors.white38:Colors.black38,fontSize: 23,),),
              SizedBox(height: height*0.1,),
              GestureDetector(
                onTap: () {
                  // setState(() {
                    providerQuotesPageFalse.darkAndLightMode(false);
                  // });
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
                    child: Text('Light Icon',style: TextStyle(color: providerQuotesPageTrue.isDark?Colors.white:Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // setState(() {
                    providerQuotesPageFalse.darkAndLightMode(true);
                  // });
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
                    child: Text('Dark Icon',style: TextStyle(color: providerQuotesPageTrue.isDark?Colors.white:Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                ),
              ),
              Row(
                children: [
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).pushNamed('/stepper');
                  }, child: const Text('Stepper Go To Next Page')),
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).pushNamed('/contact');
                  }, child: const Text('Contact Us Page')),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).pushNamed('/provider');
                  }, child: const Text('Provider')),
                  ElevatedButton(onPressed: () {
                    providerQuotesPageFalse.introBoolCheckOn();
                    // Navigator.of(context).pushNamed('/intro');
                  }, child: const Text('Intro Re-On')),
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).pushNamed('/quotes');
                  }, child: const Text('Quotes')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
