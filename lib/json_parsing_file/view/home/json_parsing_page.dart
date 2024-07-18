import 'package:adv_flutter_ch1/json_parsing_file/provider/json_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class JsonParsingPage extends StatelessWidget {
  const JsonParsingPage({super.key});

  @override
  Widget build(BuildContext context) {
    JsonProvider jsonProviderTrue =
        Provider.of<JsonProvider>(context, listen: true);
    // JsonProvider jsonProviderFalse =
    //     Provider.of<JsonProvider>(context, listen: false);
    return Scaffold(
      body: ListView.builder(
        itemCount: jsonProviderTrue.jsonDataList.length,
        itemBuilder: (context, index) => ListTile(
          leading: Text(jsonProviderTrue.jsonDataList[index].id.toString()),
          title: Text(jsonProviderTrue.jsonDataList[index].title),
          trailing: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(jsonProviderTrue.jsonDataList[index].url)
                ),
              ),
              alignment: Alignment.center,
              child: Text(jsonProviderTrue.jsonDataList[index].albumId.toString()),
            ),
          ),
        ),
      ),
    );
  }
}
