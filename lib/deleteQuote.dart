// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'quote.dart';
//import 'package:google_fonts/google_fonts.dart';


void main() => runApp( const MaterialApp(
  home: Quotes(),
));

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quote> quotes= [
      Quote(author: 'Segun James', text: 'I have Citadel'),
      Quote(author: "Aderinola", text: 'I am a Software Engineer'),
      Quote(author: "Mayowa", text: 'My favourite food is rice and beans')
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite Quotes'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) => QuoteCard(
          quote: quote, 
          delete: () { 
            setState((){
              quotes.remove(quote);
          });
          }
          )).toList(),
        ),
    );
  }
}

class QuoteCard extends StatelessWidget {

  final Quote quote;
 final void Function()? delete;
  
  const QuoteCard({ required this.quote, required this.delete });

  @override
  Widget build(BuildContext context) {

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16.0
              ),
        
            ),
            const SizedBox(height: 10.0,),
            Text(
              quote.author,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
                fontWeight: FontWeight.bold
              ),
              
        
            ),
            TextButton.icon(
              onPressed: delete,
              label: const Text('Delete'),
              icon: const Icon(
                  Icons.delete
                ) 
                )
          ],
        ),
      ),
    );
  }
}