import 'package:flutter/material.dart';
import 'package:flutter_hooks_riverpod/counter_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomePage')),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const CounterPage()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.greenAccent,
          ),
          child: const Text(
            'Go to Counter Page',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
