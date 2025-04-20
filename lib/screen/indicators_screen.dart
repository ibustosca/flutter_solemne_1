import 'package:flutter/material.dart';
import '../utils/inputs.dart';
import '../widgets/widgets.dart';
import '../screen/screen.dart';

class IndicatorsScreen extends StatelessWidget {
  const IndicatorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final titulo =
        titulos.firstWhere(
          (mapa) => mapa.containsKey('indicadores'),
        )['indicadores'];
    final enlace =
        enlaces.firstWhere((mapa) => mapa.containsKey('ayuda'))['ayuda'];
    final inicio =
        botonesSimples.firstWhere(
          (mapa) => mapa.containsKey('inicio'),
        )['inicio'];

    return Scaffold(
      appBar: ContainerAppBar(titulo: titulo, ayudaUrl: enlace),
      body: ListView.separated(
        itemCount: indicadoresComerciales.length,
        separatorBuilder: (_, __) => const Divider(thickness: 0.5),
        itemBuilder: (context, index) {
          final indicador = indicadoresComerciales[index];
          return ContainerIndicadorItem(
            nombre: indicador['nombre']!,
            valor: indicador['valor']!,
          );
        },
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
