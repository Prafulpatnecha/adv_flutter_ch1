import 'package:adv_flutter_ch1/utils/colors_globle.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../quotesdata/provider/provider_qoutes_page.dart';
import '../../../utils/intro_list.dart';
import 'components/globle_funtion_intro.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    ProviderQuotesPage providerQuotesPageTrue =
        Provider.of<ProviderQuotesPage>(context, listen: true);
    ProviderQuotesPage providerQuotesPageFalse =
        Provider.of<ProviderQuotesPage>(context, listen: false);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height / 20,
          ),
          Text(
            'Food Express',
            style: TextStyle(
                color: greenColor, fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: height / 15,
          ),
          Container(
            height: height / 2.7,
            width: width / 1.05,
            decoration: BoxDecoration(
              // color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage(
                      introList[providerQuotesPageTrue.index]['image']),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: height / 15,
          ),
          Text(
            introList[providerQuotesPageTrue.index]['text'],
            style: TextStyle(
                color: greenColor,
                fontSize: 25,
                wordSpacing: 5,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Text(
            introList[providerQuotesPageTrue.index]['description'],
            textAlign: TextAlign.center,
            style: TextStyle(color: greenColor, fontSize: 18),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                introList.length,
                (index) {
                  return (index != providerQuotesPageTrue.index)
                      ? Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            createdNestedCircleAvatar(),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        )
                      : Container(
                          height: 8,
                          width: 29,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: greenDarkColor),
                        );
                },
              )
            ],
          ),
          SizedBox(
            height: height / 15,
          ),
          (providerQuotesPageTrue.index != introList.length - 1)
              ? buttonCreatedNextSkip(providerQuotesPageFalse,context)
              : GestureDetector(
            onTap: () {
              providerQuotesPageFalse.introBoolCheck();
              Navigator.of(context).pushNamed('/');
            },
                child: Container(
                            height: 45,
                            width: 150,
                            decoration: BoxDecoration(
                color: greenDarkColor,
                borderRadius: BorderRadius.circular(50)
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                "Let's Go",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
                            ),
                          ),
              ),
        ],
      ),
    );
  }

  Row buttonCreatedNextSkip(ProviderQuotesPage provider,BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            provider.introBoolCheck();
            Navigator.of(context).pushNamed('/');
          },
          child: Container(
            height: 54,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.green.shade100,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(100),
                topRight: Radius.circular(100),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              'Skip',
              style: TextStyle(
                  color: greenColor, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            provider.indexShare();
          },
          child: Container(
            height: 54,
            width: 120,
            decoration: BoxDecoration(
              color: greenDarkColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(100),
                bottomLeft: Radius.circular(100),
              ),
            ),
            alignment: Alignment.center,
            child: const Text(
              'Next',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
