import 'package:flutter/material.dart';

class ThirdDeep extends StatelessWidget {
  const ThirdDeep({
    super.key,
    required this.counter,
  });

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.6), blurRadius: 10, spreadRadius: 5),
        ],
        color: Colors.purple,
      ),
      child: Center(
        child: Text(counter.toString(), style: const TextStyle(fontSize: 32)),
      ),
    );
  }
}
