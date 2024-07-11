import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/list_globle.dart';
import '../../modal/modal_qoutes_page.dart';
import '../../provider/provider_qoutes_page.dart';

class QuotesDataPage extends StatelessWidget {
  const QuotesDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderQuotesPage(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: QuotesHomePage(),
      ),
    );
  }
}

class QuotesHomePage extends StatelessWidget {
  const QuotesHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ProviderQuotesPage providerQuotesPageTrue =
        Provider.of<ProviderQuotesPage>(context, listen: true);
    ProviderQuotesPage providerQuotesPageFalse =
        Provider.of<ProviderQuotesPage>(context, listen: false);
    (providerQuotesPageTrue.quotesAddingList.isEmpty)
        ? providerQuotesPageFalse.quotesAddingJsonFile(quotesList)
        : null;
    // providerQuotesPageFalse.provideModal();
    return Scaffold(
      appBar: AppBar(
        title: Text("Quotes Page"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: providerQuotesPageTrue.quotesAddingList.length,
        // reverse: false,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            // leading: Text(index.toString()),
            title: Text(providerQuotesPageTrue.quotesAddingList[index]['quote']),
            subtitle: Text(providerQuotesPageTrue.quotesAddingList[index]
                    ['author']),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          TextEditingController quote = TextEditingController();
          TextEditingController author = TextEditingController();
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Column(
                children: [
                  TextFormField(
                    controller: author,
                    decoration: InputDecoration(
                      label: Text('Author Name'),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: quote,
                    decoration: InputDecoration(
                      label: Text('Quotes'),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                    ),
                  ),
                ],
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    QuotesModal quotesModal=QuotesModal(quote: quote.text,author: author.text);
                    providerQuotesPageFalse.addUserList(quotesModal);
                    // List<QuotesModal> listQuotes=[];
                    // listQuotes.add(QuotesModal(author: author.text.toString(),quote: quotes.text.toString()));
                    // provideModal();
                    Navigator.of(context).pop();
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          );
        },
        child: const Icon(Icons.add_circle_outline),
      ),
    );
  }
}
TextEditingController quotes=TextEditingController();
TextEditingController author=TextEditingController();