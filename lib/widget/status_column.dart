import 'package:flutter/material.dart';

class StatusColumn extends StatelessWidget {
  final String label;
  final int value;
  final Color color;

  const StatusColumn({required this.label, required this.value, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 12)),
        const SizedBox(height: 10),
        Text(
          '$value',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: color),
        ),
      ],
    );
  }
}