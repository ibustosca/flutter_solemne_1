import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import '../utils/url_launcher.dart';
import '../utils/inputs.dart';
import '../screen/screen.dart';

class InsertMoneyScreen extends StatelessWidget {
  const InsertMoneyScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final titulo =
        titulos.firstWhere(
          (mapa) => mapa.containsKey('insertMoney'),
        )['insertMoney'];
    final enlace =
        enlaces.firstWhere((mapa) => mapa.containsKey('ayuda'))['ayuda'];
    final TextEditingController montoController = TextEditingController(
      text: '0',
    );
    return Scaffold(
      appBar: ContainerAppBar(titulo: titulo, ayudaUrl: enlace),
      body: Column(
        children: [
          ContainerInputMoney(controller: montoController),
          ConainerDetailBalance(),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 20, bottom: 7),
              color: Colors.grey[200], // fondo gris claro
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 50),
        child: ContainerButtons(
          type: 'continuar',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (context) => CheckDataScreen(monto: montoController.text),
              ),
            );
          },
        ),
      ),
    );
  }
}
