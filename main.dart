import 'package:flutter/material.dart';
import 'package:quotesappp/quote.dart';
import 'package:quotesappp/quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));


class QuoteList extends StatefulWidget {

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Scoth Mark', text: 'Be yourself all day all time no matter you current condition'),
    Quote(author: 'Sam Dean', text: 'Be yourself all day all time no matter you current condition'),
    Quote(author: 'Jimoh Aliyu', text: 'Be yourself all day all time no matter you current condition')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Popular Quotes'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: (){
            setState(() {
              quotes.remove(quote);
            });
          }
        )).toList(),
    )
  );
  }
}

