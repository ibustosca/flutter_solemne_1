import 'package:flutter/material.dart';
import 'package:flutter_solemne_1/screen/screen.dart';
import '../widgets/widgets.dart';
import '../utils/inputs.dart';

class SuccessScreen extends StatelessWidget {
  final String monto;

  const SuccessScreen({super.key, required this.monto});

  @override
  Widget build(BuildContext context) {
    final titulo =
        titulos.firstWhere((mapa) => mapa.containsKey('done'))['done'];
    final enlace =
        enlaces.firstWhere((mapa) => mapa.containsKey('ayuda'))['ayuda'];
    final inicio =
        botonesSimples.firstWhere(
          (mapa) => mapa.containsKey('inicio'),
        )['inicio'];

    return Scaffold(
      appBar: ContainerAppBar(
        titulo: '${titulo!}$monto $camino',
        ayudaUrl: enlace,
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Center(child: ContainerSuccessCard(monto: monto)),
            ContainerSuccessDescription(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 30),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 15,
            right: 15,
            bottom: 20,
          ),
          child: ContainerLinkText(
            texto: inicio!,
            top: 0,
            size: 17.0,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
        ),
      ),
    );
  }
}
