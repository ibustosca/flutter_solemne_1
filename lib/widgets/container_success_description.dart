import 'package:flutter/material.dart';

class ContainerSuccessDescription extends StatelessWidget {
  const ContainerSuccessDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey[100],
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
      child: const Text(
        'El dinero estará el martes 22 de abril en la cuenta del Banco Estado.\n'
        'Cuando se acredite te lo confirmaremos por e-mail.',
        style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 85, 85, 85)),
        textAlign: TextAlign.left,
      ),
    );
  }
}
