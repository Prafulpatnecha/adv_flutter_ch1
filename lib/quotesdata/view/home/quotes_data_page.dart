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
      builder: (context, child) => const MaterialApp(
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
        title: const Text("Quotes Page"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: providerQuotesPageTrue.quotesAddingList.length,
        // reverse: false,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            // leading: Text(index.toString()),
            title: Text(providerQuotesPageTrue.quotesAddingList[index]["quote"]),
            subtitle: Text(providerQuotesPageTrue.quotesAddingList[index]['author']),
            trailing: IconButton(onPressed: () {
              providerQuotesPageFalse.provideRemove(index);
            },icon: const Icon(Icons.delete_outline),),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          TextEditingController txtquote = TextEditingController();
          TextEditingController txtauthor = TextEditingController();
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Column(
                children: [
                  TextFormField(
                    controller: txtauthor,
                    decoration: const InputDecoration(
                      label: Text('Author Name'),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: txtquote,
                    decoration: const InputDecoration(
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
                    QuotesModal quotesModal=QuotesModal(quote: txtquote.text.toString(),author: txtauthor.text.toString());
                    providerQuotesPageFalse.addUserList(quotesModal);
                    // List<QuotesModal> listQuotes=[];
                    // listQuotes.add(QuotesModal(author: author.text.toString(),quote: quotes.text.toString()));
                    // provideModal();
                    Navigator.of(context).pop();
                  },
                  child: const Text('Next'),
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
TextEditingController txtquote=TextEditingController();
TextEditingController txtauthor=TextEditingController();