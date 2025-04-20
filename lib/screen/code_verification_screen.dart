import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import '../utils/inputs.dart';

class CodeVerificationScreen extends StatelessWidget {
  const CodeVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments =
        (ModalRoute.of(context)?.settings.arguments ?? <String, dynamic>{})
            as Map;
    final contentProduct = arguments['selectedVerificationType'];
    final textOtro =
        botonesSimples.firstWhere((map) => map.containsKey('otro'))['otro'];

    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.security_outlined, size: 35)),
      body: Column(
        children: [
          ContainerTitleDescription(
            screen: 'ingresa',
            verificationType: contentProduct,
          ),
          ContainerCodigoVerificacionInput(),
          ContainerButtons(
            type: 'continuar',
            onTap: () {
              Navigator.pushNamed(context, 'InsertMoney');
            },
          ),
          ContainerButtons(
            type: 'reenviar',
            onTap: () {
              Navigator.pushNamed(context, 'forzamosAlError');
            },
          ),
          ContainerLinkText(
            texto: textOtro!,
            onTap: () {
              Navigator.pushNamed(context, 'forzamosAlError');
            },
            top: 250.0,
          ),
        ],
      ),
    );
  }
}
