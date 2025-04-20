import 'package:flutter/material.dart';
import '../utils/inputs.dart';
import '../widgets/widgets.dart';

class CheckDataScreen extends StatelessWidget {
  const CheckDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final titulo =
        titulos.firstWhere(
          (mapa) => mapa.containsKey('checkData'),
        )['checkData'];
    final enlace =
        enlaces.firstWhere((mapa) => mapa.containsKey('ayuda'))['ayuda'];

    return Scaffold(
      appBar: ContainerAppBar(titulo: titulo, ayudaUrl: enlace),
      body: Column(
        children: [
          ContainerResumeCheckMoney(),
          // Bloque gris oscuro desde aquí hacia abajo
          Expanded(
            child: Container(
              color: Colors.grey[300],
              child: Column(
                children: const [
                  ContainerWarningCheckMoney(),
                  ContainerResumeDataReceiver(),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 8, left: 15, right: 15, bottom: 50),
        child: ContainerButtons(
          type: 'retirar',
          onTap: () {
            Navigator.pushNamed(context, 'CheckData');
          },
        ),
      ),
    );
  }
}
