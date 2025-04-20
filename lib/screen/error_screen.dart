import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import '../utils/inputs.dart';
import '../screen/screen.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final titulo =
        titulos.firstWhere((mapa) => mapa.containsKey('error'))['error'];
    final enlace =
        enlaces.firstWhere((mapa) => mapa.containsKey('ayuda'))['ayuda'];

    return Scaffold(
      appBar: ContainerAppBar(titulo: titulo, ayudaUrl: enlace),
      body: Container(
        margin: const EdgeInsets.only(top: 300),
        child: Column(
          children: [
            Center(child: Text('Lo sentimos, se ha producido un error.')),
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
            texto: 'Ir al inicio',
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
