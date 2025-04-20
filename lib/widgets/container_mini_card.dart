import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../screen/screen.dart';
import '../utils/inputs.dart';

class ContainerMiniCard extends StatelessWidget {
  final String tipo;
  const ContainerMiniCard({super.key, required this.tipo});

  @override
  Widget build(BuildContext context) {
    final icono = miniCard[tipo]?['icono'] as IconData?;
    final titulo = miniCard[tipo]?['titulo'] as String?;

    return GestureDetector(
      onTap: () {
        // FUNCIONALIDAD 3: COPIA LOS DATOS DE TRANSFERENCIA A LA MEMORIA, PARA PODER PEGARLOS EN CUALQUIER DESTINO
        if (tipo == 'shareMyData') {
          Clipboard.setData(const ClipboardData(text: datosTransferencia));
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Center(child: Text(mensajeDatosCopiados)),
              duration: Duration(seconds: 3),
            ),
          );
        } // FUNCIONALIDAD 4: ABRE NUEVO SCREEN CON LOS INDICADORES COMERCIALES, TALES COMO UF, UTM, DOLAR, EURO (NO EXISTENTE EN LA PAGINA DE MERCADO PAGO).
        else if (tipo == 'indicators') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const IndicatorsScreen()),
          );
        }
        // Otras funcionalidades futuras
        else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ErrorScreen()),
          );
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          children: [
            if (icono != null) Icon(icono, size: 30, color: Colors.black),
            const SizedBox(width: 12),
            Flexible(
              child: Text(
                titulo ?? '',
                softWrap: true,
                overflow: TextOverflow.visible,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
