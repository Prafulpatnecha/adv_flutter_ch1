
import 'package:adv_flutter_ch1/quotesdata/provider/provider_qoutes_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/intro_list.dart';

class GalleryPhotoPage extends StatelessWidget {
  const GalleryPhotoPage({super.key});
  @override
  Widget build(BuildContext context) {
  // ProviderQuotesPage providerQuotesPageTrue=Provider.of<ProviderQuotesPage>(context,listen: true);
  ProviderQuotesPage providerQuotesPageFalse=Provider.of<ProviderQuotesPage>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu),
        elevation: 5,
        shadowColor: Colors.white,
        title: const Text('Gallery',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        surfaceTintColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Row(
              children: [
                const SizedBox(width: 20,),
                Container(
                  width: 100,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  // alignment: Alignment.center,
                  child: const Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 20,),
                      Text('Albums',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                      Spacer(),
                      Icon(Icons.arrow_drop_down_outlined,color: Colors.blue,),
                      SizedBox(width: 5,),
                    ],
                  ),
                ),
                const Spacer(),
                const Icon(Icons.search_sharp),
                PopupMenuButton(onSelected: (value) {
                },iconColor: Colors.black,icon: const Icon(Icons.more_vert,color: Colors.black,),itemBuilder: (context) => [
                  PopupMenuItem(onTap: () {
                  // Navigator.of(context).pushNamed('/lock');
                      Navigator.of(context).pushNamed('/lock');
                      providerQuotesPageFalse.fingerFalse();
                  },child: const Text('Secure Folder')),
                ],)
              ],
            ),
            Wrap(
              spacing: 15,
              children: [
                ...List.generate(galleryImage.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,),
                    child: Column(
                      children: [
                        Container(
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(galleryImage[index]['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text(galleryImage[index]['type'],style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                        
                      ],
                    ),
                  );
                },)
              ],
            )
          ],
        ),
      ),
    );
  }
}
