import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
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
            ],
          ),
          const SizedBox(height: 40,),
          const Text('If you have any queries, get in touch with \nus. We will be happy to help you!',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          const SizedBox(height: 40,),
          Container(
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
          const SizedBox(height: 20,),
          Container(
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
          const SizedBox(height: 30,),
          Container(
            width: 310,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.blue),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Social Media',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 17),),
                ),
                Divider(color: Colors.blue,),
              ],
            )
          ),
        ],
      ),
    );
  }
}
