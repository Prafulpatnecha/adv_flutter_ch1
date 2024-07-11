
class QuotesModal
{
  String? quote;
  String? author;
  // List<QuotesModal> quotesListModel=[
  //
  // ];
  QuotesModal({this.quote,this.author});
  factory QuotesModal.fromQuotes(Map m1)
  {
    return QuotesModal(quote: m1['quote'],author: m1['author']);
  }
  // QuotesModal.toList(List l1)
  // {
  //   for(int i=0; i<l1.length;i++)
  //     {
  //       quotesListModel.add(QuotesModal.fromQuotes(l1[i]));
  //     }
  // }
}