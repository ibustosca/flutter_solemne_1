import 'package:flutter/material.dart';
import '../utils/inputs.dart';
import '../widgets/widgets.dart';

class ContainerBalance extends StatelessWidget {
  const ContainerBalance({super.key});

  @override
  Widget build(BuildContext context) {
    final titulo = home.firstWhere((m) => m.containsKey('titulo'))['titulo'];
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titulo!,
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
            const SizedBox(height: 8),
            const ContainerBalanceHeader(),
            const ContainerBalanceSummary(),

            // Botones
            Row(
              children: [
                Expanded(
                  child: ContainerButtons(
                    type: 'ingresar',
                    onTap: () {
                      Navigator.pushNamed(context, 'forzamosElError');
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ContainerButtons(
                    type: 'transferir',
                    onTap: () {
                      Navigator.pushNamed(context, 'VerificationOptions');
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
