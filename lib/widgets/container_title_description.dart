import 'package:flutter/material.dart';
import '../utils/inputs.dart';

class ContainerTitleDescription extends StatelessWidget {
  final String screen;
  final String verificationType;

  const ContainerTitleDescription({
    super.key,
    required this.screen,
    required this.verificationType,
  });

  @override
  Widget build(BuildContext context) {
    final titulo = titulosYDescripciones[screen]?['titulo'];
    final descripcion = titulosYDescripciones[screen]?['descripcion'];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              titulo!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Text(
            '$descripcion $verificationType.',
            style: const TextStyle(color: Colors.black, fontSize: 15),
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
