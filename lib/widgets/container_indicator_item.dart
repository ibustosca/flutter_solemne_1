import 'package:flutter/material.dart';

class ContainerIndicadorItem extends StatelessWidget {
  final String nombre;
  final String valor;

  const ContainerIndicadorItem({
    super.key,
    required this.nombre,
    required this.valor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.trending_up, color: Colors.blue),
      title: Text(nombre, style: const TextStyle(fontWeight: FontWeight.w600)),
      trailing: Text(
        valor,
        style: const TextStyle(fontSize: 15, color: Colors.black54),
      ),
    );
  }
}
