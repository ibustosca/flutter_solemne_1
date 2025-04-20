import 'package:flutter/material.dart';

class ContainerSuccessCard extends StatelessWidget {
  final String monto;

  const ContainerSuccessCard({super.key, required this.monto});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none, // permite que el ícono sobresalga
      children: [
        // Tarjeta blanca con padding superior para dejar espacio al ícono
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Text(
                '¡Listo! Los \$$monto están en camino',
                style: const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),

        // Ícono sobresaliendo encima
        Positioned(
          top: 0,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color.fromARGB(255, 67, 157, 70),
                width: 4,
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.check,
                color: Color.fromARGB(255, 67, 157, 70),
                size: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
