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
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 30),
          child: Column(
            children: [
              SizedBox(height: 30),
              // FUNCIONALIDAD ADICIONAL 1: MUESTRA EL NOMBRE DEL TITULAR Y LA CANTIDAD DE TIEMPO RESTANTE PARA QUE SE CIERRE LA SESION (NO EXISTENTE EN MERCADOPAGO ORIGINALMENTE)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [ContainerCustomer(), ContainerTimer()],
                ),
              ),
              ContainerBalance(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    for (var tipo in tipos)
                      SizedBox(
                        width:
                            (MediaQuery.of(context).size.width - 12 * 2 - 10) /
                            2, // ancho de 2 por fila
                        child: ContainerMiniCard(tipo: tipo),
                      ),
                  ],
                ),
              ),

              ContainerPromoBanner(),
              ContainerInviteBanner(bottom: 10),
            ],
          ),
        ),
      ),
    );
  }
}
