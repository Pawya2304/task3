import 'package:flutter/material.dart';
import 'dart:math';
import 'quote.dart';

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  _QuoteScreenState createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  late Quote _currentQuote;

  final List<Quote> _quotes = [
    Quote(text: "The only limit to our realization of tomorrow is our doubts of today.", author: "Franklin D. Roosevelt"),
    Quote(text: "The future belongs to those who believe in the beauty of their dreams.", author: "Eleanor Roosevelt"),
    Quote(text: "Do not watch the clock. Do what it does. Keep going.", author: "Sam Levenson"),
    Quote(text: "Success is not final, failure is not fatal: It is the courage to continue that counts.", author: "Winston Churchill"),
    Quote(text: "Act as if what you do makes a difference. It does.", author: "William James"),
  ];
@override
  void initState() {
    super.initState();
    _currentQuote = _getRandomQuote();
  }

  Quote _getRandomQuote() {
    final randomIndex = Random().nextInt(_quotes.length);
    return _quotes[randomIndex];
  }

  void _showNewQuote() {
    setState(() {
      _currentQuote = _getRandomQuote();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Random Quote Generator")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '"${_currentQuote.text}"',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
              ),
 const SizedBox(height: 10),
              Text(
                '- ${_currentQuote.author}',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: _showNewQuote,
                child: const Text("New Quote"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

