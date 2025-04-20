import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import '../utils/inputs.dart';

class ContainerResumeDataReceiver extends StatelessWidget {
  const ContainerResumeDataReceiver({super.key});

  @override
  Widget build(BuildContext context) {
    final datos = {
      for (var item in receiver) item.keys.first: item.values.first,
    };

    return Container(
      color: Colors.grey[100],
      width: double.infinity,
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            datos['banco']!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 12),

          Text(
            datos['tituloTitular']!,
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
          Text(
            datos['titular']!,
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          SizedBox(height: 12),

          Text(
            datos['tituloCuenta']!,
            style: TextStyle(fontSize: 13, color: Colors.black),
          ),
          Text(
            datos['cuenta']!,
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          SizedBox(height: 25),

          ContainerLinkText(
            texto: 'Agregar otra cuenta',
            top: 0,
            onTap: () {
              Navigator.pushNamed(context, 'forzamosElError');
            },
          ),
        ],
      ),
    );
  }
}
