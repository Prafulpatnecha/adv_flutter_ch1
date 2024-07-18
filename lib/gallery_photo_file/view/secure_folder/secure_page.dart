import 'package:flutter/material.dart';

import '../../../utils/intro_list.dart';


class SecurePage extends StatelessWidget {
  const SecurePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: Text('Resent',style: TextStyle(color: Colors.black),),
        leading: const Icon(Icons.menu,color: Colors.black,),
        actions: [
          Icon(Icons.search_sharp),
          Icon(Icons.more_vert),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            buildRow(),
            SizedBox(height: 20,),
            Wrap(
              spacing: 15,
              children: [
                ...List.generate(photoImage.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: AssetImage(photoImage[index]['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        // SizedBox(height: 5,),
                        // Text(galleryImage[index]['type'],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
        
                      ],
                    ),
                  );
                },)
              ],
            ),
            SizedBox(height: 10,),
            buildRow(),
            SizedBox(height: 10,),
            Wrap(
              spacing: 15,
              children: [
                ...List.generate(photoImage.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: AssetImage(photoImage[index]['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        // SizedBox(height: 5,),
                        // Text(galleryImage[index]['type'],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),

                      ],
                    ),
                  );
                },)
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row buildRow() {
    return Row(
          children: [
            SizedBox(width: 10,),
          Text('Today',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
          Spacer(),
          Text('select',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
            SizedBox(width: 10,),
        ],);
  }
}
