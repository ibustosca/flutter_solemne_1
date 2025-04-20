import 'package:flutter/material.dart';

class ContainerWarningCheckMoney extends StatelessWidget {
  const ContainerWarningCheckMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // 👈 esto lo expande
      color: Colors.grey[100],
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
      child: const Text(
        'Estás usando dinero que tenés invertido',
        style: TextStyle(fontSize: 15, color: Colors.grey),
      ),
    );
  }
}
