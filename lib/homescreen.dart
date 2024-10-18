import 'dart:developer';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('APP BAR'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have clicked $_counter times',
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  incrementCount();
                });
                log("Increased");
              },
              icon: const Icon(Icons.add_circle_outline),
              iconSize: 50,
            ),
          ],
        ),
      ),
    );
  }

  incrementCount() {
    setState(() {
      _counter += 1;
    });
  }
}
