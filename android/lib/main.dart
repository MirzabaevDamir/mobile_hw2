import 'package:flutter/material.dart';
import 'package:widgets_practice/my_third_deep.dart';

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
          title: const Text(
            'Widgets Practice',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MessageWidget(message: 'Nursulton!'),
            SizedBox(
              height: 70,
            ),
            CounterStatefulWidget(),
          ],
        ),
      ),
    );
  }
}

class MessageWidget extends StatelessWidget {
  final String message;

  const MessageWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
        child: Text(
          'Hi My Name Is $message',
          style: const TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}

class CounterStatefulWidget extends StatefulWidget {
  const CounterStatefulWidget({super.key});

  @override
  State<CounterStatefulWidget> createState() => _CounterStatefulWidgetState();
}

class _CounterStatefulWidgetState extends State<CounterStatefulWidget> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 45,
        ),
        const Text(
          'Counter value',
          style: TextStyle(fontSize: 24, color: Colors.grey),
        ),
        const SizedBox(
          height: 12,
        ),
        ThirdDeep(
          counter: counter,
        ),
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          width: 200,
          child: ElevatedButton(
            onPressed: _incrementCounter,
            child: const Row(
              children: [
                Icon(Icons.add),
                SizedBox(
                  width: 4,
                ),
                Text('Counter'),
              ],
            ),
          ),
        )
      ],
    );
  }
}
