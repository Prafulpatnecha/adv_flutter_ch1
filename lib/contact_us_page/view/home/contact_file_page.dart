import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../quotesdata/provider/provider_qoutes_page.dart';

class ContactFilePage extends StatelessWidget {
  const ContactFilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ProviderQuotesPage providerQuoteTrue=Provider.of<ProviderQuotesPage>(context,listen: true);
    ProviderQuotesPage providerQuoteFalse=Provider.of<ProviderQuotesPage>(context,listen: false);
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50,),
          Row(
            children: [
              const SizedBox(width: 15,),
              IconButton(onPressed: () {
                Navigator.of(context).pop();
              }, icon: const Icon(Icons.navigate_before,color: Colors.blue,size: 34,)),
              const Text('Contact Us',style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold),),
              // Spacer(),
              // IconButton(onPressed: () {
              //   // Navigator.of(context).pop();
              // }, icon: const Icon(Icons.navigate_next_outlined,color: Colors.blue,size: 34,)),
            ],
          ),
          const SizedBox(height: 40,),
          const Text('If you have any queries, get in touch with \nus. We will be happy to help you!',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          const SizedBox(height: 40,),
          GestureDetector(
            onTap: () {
              providerQuoteFalse.phoneNumber();
            },
            child: Container(
              height: 70,
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue),
              ),
              child: const Row(
                children: [
                  SizedBox(width: 25,),
                  Icon(Icons.ad_units_outlined,color: Colors.blue,size: 30,),
                  SizedBox(width: 25,),
                  Text('+91 63551 99097',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20),)
                ],
              ),
            ),
          ),
          const SizedBox(height: 20,),
          GestureDetector(
            onTap: () {
              providerQuoteFalse.emailMethod();
            },
            child: Container(
              height: 70,
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue),
              ),
              child: const Row(
                children: [
                  SizedBox(width: 25,),
                  Icon(Icons.local_post_office_outlined,color: Colors.blue,size: 30,),
                  SizedBox(width: 25,),
                  Text('prafulpatnecha@gmail.com',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 17),)
                ],
              ),
            ),
          ),
          const SizedBox(height: 30,),
          Container(
              width: 310,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('Social Media',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                  const Divider(color: Colors.blue,),
                  GestureDetector(
                    onTap: () {
                      providerQuoteFalse.githubWeb();
                    },
                    child: Row(children: [
                      const SizedBox(width: 30,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Image.asset('assets/img/imgs1.png',width: 30,),
                      ),
                      const SizedBox(width: 28,),
                      const Text('PrafulPatnecha',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18),)
                    ],),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Divider(color: Colors.blue,),
                  ),
                  GestureDetector(
                    onTap: () {
                      providerQuoteFalse.instaWeb();
                    },
                    child: Row(children: [
                      const SizedBox(width: 28,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Image.asset('assets/img/imgs(3).png',width: 35,),
                      ),
                      const SizedBox(width: 27,),
                      const Text('PrafulPatnecha',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18),)
                    ],),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Divider(color: Colors.blue,),
                  ),
                  GestureDetector(
                    onTap: () {
                      providerQuoteFalse.smsMethod();
                    },
                    child: Row(children: [
                      const SizedBox(width: 35,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Icon(Icons.sms)
                      ),
                      const SizedBox(width: 30,),
                      const Text('SMS',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18),)
                    ],),
                  ),
                  SizedBox(height: 10,)
                  // const Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 25),
                  //   child: Divider(color: Colors.blue,),
                  // ),
                ],
              )
          ),
        ],
      ),
    );
  }
}
