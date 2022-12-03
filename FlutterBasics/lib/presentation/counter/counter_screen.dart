import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Text(
          'Count: $_count',
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: _count >= 0 ? Colors.green : Colors.red,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: 'btn1',
              backgroundColor: Colors.red,
              onPressed: () {
                setState(() {
                  _count--;
                });
              },
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              heroTag: 'btn2',
              backgroundColor: Colors.green,
              onPressed: () {
                setState(() {
                  _count++;
                });
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
