import 'package:flutter/material.dart';
import 'package:flutter_solemne_1/utils/inputs.dart';

class ContainerGeneralList extends StatelessWidget {
  const ContainerGeneralList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: listaGenericaDeVerificacion.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              shape: BoxShape.circle,
            ),
            child: Icon(
              color: Color.fromRGBO(71, 128, 220, 1),
              listaGenericaDeVerificacion[index]['icono'],
            ),
          ),
          title: Text(listaGenericaDeVerificacion[index]['titulo']!),
          subtitle: Text(listaGenericaDeVerificacion[index]['subtitulo']!),
          trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 14),
          onTap: () {
            // Pasamos parámetros con 'arguments' para la pantalla 'CodeVerificationScreen'
            Navigator.pushNamed(
              context,
              'CodeVerification',
              arguments: {
                'selectedVerificationType':
                    listaGenericaDeVerificacion[index]['titulo']!,
              },
            );
          },
        );
      },
      separatorBuilder: (_, __) => const Divider(thickness: 0.7),
    );
  }
}
