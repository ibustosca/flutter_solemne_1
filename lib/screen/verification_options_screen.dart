import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import '../utils/inputs.dart';

class VerificationOptionsScreen extends StatelessWidget {
  const VerificationOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textVerifica =
        botonesSimples.firstWhere(
          (map) => map.containsKey('verifica'),
        )['verifica'];
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.security_outlined, size: 35)),
      body: Column(
        children: [
          ContainerTitleDescription(screen: 'verifica', verificationType: ''),
          SizedBox(height: 280, child: ContainerGeneralList()),
          ContainerLinkText(
            texto: textVerifica!,
            onTap: () {
              Navigator.pushNamed(context, 'forzamosAlError');
            },
            top: 0,
          ),
        ],
      ),
    );
  }
}
