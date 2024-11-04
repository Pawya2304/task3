import 'package:flutter/material.dart';
import 'quote_screen.dart';

void main() {
  runApp(RandomQuoteApp());
}

class RandomQuoteApp extends StatelessWidget {
  const RandomQuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Quote Generator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: QuoteScreen(),
    );
  }
}
