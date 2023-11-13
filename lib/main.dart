damir

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widgets Practice Widget', style: TextStyle(fontStyle: FontStyle.italic),),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyStatelessWidget(greeting: 'Hi Everybody!!!!'),
            SizedBox
            CounterWidget(),
          ],
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  final String greeting;

  const MyStatelessWidget({super.key, required this.greeting});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        greeting,
        style: const TextStyle(fontSize: 32, fontStyle: FontStyle.italic),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;
  bool animateSize = false;

  void _incrementCounter() {
    setState(() {
      animateSize = true;
    });
    setState(() {
      counter++;
      animateSize = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'My Counter Value',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(
            height: 20,
          ),
          MyTheerdContainer(
            counter: counter,
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: _incrementCounter,
            child: const Text('Increment'),
          ),
        ],
      ),
    );
  }
}

class MyTheerdContainer extends StatelessWidget {
  const MyTheerdContainer({
    super.key,
    required this.counter,
  });

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: const BoxDecoration(
        color: Colors.red,
      ),
      child: Center(
        child: Text(counter.toString()),
      ),
    );
  }
}
