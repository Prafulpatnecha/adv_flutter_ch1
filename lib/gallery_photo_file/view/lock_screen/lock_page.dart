import 'package:adv_flutter_ch1/quotesdata/provider/provider_qoutes_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LockPage extends StatelessWidget {
  const LockPage({super.key});

  @override
  Widget build(BuildContext context) {
    ProviderQuotesPage providerQuotesPageTrue=Provider.of<ProviderQuotesPage>(context,listen: true);
    ProviderQuotesPage providerQuotesPageFalse=Provider.of<ProviderQuotesPage>(context,listen: false);
    providerQuotesPageFalse.fingerMethod();
    // if(providerQuotesPageTrue.checkFinger)
    //   {
    //     Navigator.of(context).pushNamed('/quotes');
    //   }
    return Scaffold(
      body: Column(
        children: [
          const Row(children: [],),
          const Spacer(),
          const Icon(Icons.fingerprint_outlined,color: Colors.blue,size: 60,),
          (providerQuotesPageTrue.checkFinger)?IconButton(onPressed: () {
            Navigator.of(context).pushNamed('/secure');
          }, icon: const Icon(Icons.navigate_next,size: 60,color: Colors.black,),):Container(),
          const SizedBox(height: 80,),
        ],
      ),
    );
  }
}

