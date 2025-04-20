import 'package:flutter/material.dart';
import '../utils/inputs.dart';

class ContainerTimer extends StatelessWidget {
  const ContainerTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const Icon(Icons.timer_outlined, color: Colors.black87, size: 24),
          const SizedBox(width: 8),
          Text(
            tiempo,
            style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
