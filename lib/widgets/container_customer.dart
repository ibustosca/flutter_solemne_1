import 'package:flutter/material.dart';

class ContainerCustomer extends StatelessWidget {
  const ContainerCustomer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        '🧑🏻 Iván Bustos',
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
    );
  }
}
