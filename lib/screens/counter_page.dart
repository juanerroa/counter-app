import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Numero Actual", style: TextStyle(fontSize: 35)),
            Text("$number", style: const TextStyle(fontSize: 30)),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.plus_one),
            onPressed: () => addValue(1),
          ),
          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1),
            onPressed: () => addValue(-1),
          )
        ],
      ),
    );
  }

  void addValue(int value) {
    number += value;
    setState(() {});
  }
}
