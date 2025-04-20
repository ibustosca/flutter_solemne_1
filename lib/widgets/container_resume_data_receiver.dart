import 'package:flutter/material.dart';

class ContainerResumeDataReceiver extends StatelessWidget {
  const ContainerResumeDataReceiver({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100], // Fondo gris claro
      width: double.infinity,
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            'Banco Estado',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 12),

          Text(
            'Titular',
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
          Text(
            'Elizabeth Cerda',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          SizedBox(height: 12),

          Text(
            'Cuenta Vista - Número de cuenta',
            style: TextStyle(fontSize: 13, color: Colors.black54),
          ),
          Text('13676575', style: TextStyle(fontSize: 16, color: Colors.black)),
          SizedBox(height: 25),

          Text(
            'Agregar otra cuenta',
            style: TextStyle(
              fontSize: 14,
              color: Colors.blue,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
