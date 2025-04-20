import 'package:flutter/material.dart';
import '../utils/inputs.dart';

class ContainerPromoBanner extends StatelessWidget {
  const ContainerPromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            tituloDescubreMas,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 15),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(imagePromo, fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
