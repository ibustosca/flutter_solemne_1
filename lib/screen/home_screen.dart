import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import '../utils/inputs.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final titulo =
        titulos.firstWhere((mapa) => mapa.containsKey('inicio'))['inicio'];
    final enlace =
        enlaces.firstWhere((mapa) => mapa.containsKey('ayuda'))['ayuda'];
    final tipos = miniCard.keys.toList(); // ['crypto', 'ahorro']

    return Scaffold(
      appBar: ContainerAppBar(titulo: titulo, ayudaUrl: enlace),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          SizedBox(height: 30),
          ContainerBalance(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                for (var tipo in tipos)
                  Expanded(child: ContainerMiniCard(tipo: tipo)),
              ],
            ),
          ),

          ContainerPromoBanner(),
          ContainerInviteBanner(bottom: 10),
        ],
      ),
    );
  }
}
