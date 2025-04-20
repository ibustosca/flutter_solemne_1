import 'package:flutter/material.dart';
import '../utils/inputs.dart';

class ContainerBalanceHeader extends StatelessWidget {
  const ContainerBalanceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final amount = home.firstWhere((m) => m.containsKey('amount'))['amount'];
    final subAmount =
        home.firstWhere((m) => m.containsKey('subAmount'))['subAmount'];
    final aLiberar =
        home.firstWhere((m) => m.containsKey('aLiberar'))['aLiberar'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Monto + íconos
        Row(
          children: [
            Text(
              amount!,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              subAmount!,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(width: 8),
            const Icon(
              Icons.remove_red_eye_outlined,
              size: 20,
              color: Colors.black54,
            ),
            const Spacer(),
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
        const SizedBox(height: 6),

        Text(aLiberar!, style: TextStyle(fontSize: 13, color: Colors.black54)),

        const Divider(thickness: 0.3),
      ],
    );
  }
}
