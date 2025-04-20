import 'package:flutter/material.dart';
import '../utils/inputs.dart';

class ContainerBalanceSummary extends StatelessWidget {
  const ContainerBalanceSummary({super.key});

  @override
  Widget build(BuildContext context) {
    final procentajeGanancia =
        home.firstWhere(
          (m) => m.containsKey('procentajeGanancia'),
        )['procentajeGanancia'];
    final ganancia =
        home.firstWhere((m) => m.containsKey('ganancia'))['ganancia'];

    return Column(
      children: [
        // Ganancias y porcentaje
        Row(
          children: [
            Text(
              ganancia!,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
              decoration: BoxDecoration(
                color: const Color.fromARGB(50, 33, 150, 243),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Icon(Icons.arrow_upward, size: 14, color: Colors.blue),
                  SizedBox(width: 2),
                  Text(
                    procentajeGanancia!,
                    style: TextStyle(fontSize: 12, color: Colors.blue),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 4),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'forzamosElError');
              },
              icon: const Icon(
                Icons.chevron_right,
                size: 24,
                color: Colors.black54,
              ),
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
            ),
          ],
        ),

        const Divider(thickness: 0.3),
      ],
    );
  }
}
