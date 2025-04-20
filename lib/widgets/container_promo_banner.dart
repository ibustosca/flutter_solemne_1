import 'package:flutter/material.dart';

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
            'Descubre más',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 15),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/promo_meli.png', // asegúrate que esté en pubspec.yaml
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
