import 'package:flutter/material.dart';
import 'package:medibank/status_column.dart';

class ClaimStatusCard extends StatelessWidget {
  final int current, pending, history;
  final Color color;

  const ClaimStatusCard({
    required this.current,
    required this.pending,
    required this.history,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: const Color.fromARGB(255, 227, 234, 240),
          boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 5)],
        ),
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            StatusColumn(label: 'Current', value: current, color: color),
            StatusColumn(label: 'Pending', value: pending, color: color),
            StatusColumn(label: 'History', value: history, color: color),
          ],
        ),
      ),
    );
  }
}