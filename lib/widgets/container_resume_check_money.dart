import 'package:flutter/material.dart';

class ContainerResumeCheckMoney extends StatelessWidget {
  const ContainerResumeCheckMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Columna de texto a la izquierda
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 2.0),
                  child: Text(
                    'Se acreditarán el martes',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Text(
                  '22 de abril',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  softWrap: true,
                ),
              ],
            ),
          ),

          // Texto '100' a la derecha
          const Text(
            '\$ 100',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
