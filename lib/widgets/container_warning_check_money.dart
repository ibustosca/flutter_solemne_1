import 'package:flutter/material.dart';
import '../utils/inputs.dart';

class ContainerWarningCheckMoney extends StatelessWidget {
  const ContainerWarningCheckMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey[100],
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
      child: const Text(
        warningInversion,
        style: TextStyle(fontSize: 15, color: Colors.grey),
      ),
    );
  }
}
