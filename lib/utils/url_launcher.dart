import 'package:url_launcher/url_launcher.dart';

// ESTA FUNCION SIRVE PARA SER REUTILIZADA PARA IR A CUALQUIER URL EXTERNA Y NAVEGAR EN ELLA FUERA DE LA APP
// FUNCIONALIDAD ADICIONAL 2: ABRE LA AYUDA DE MERCADOPAGO EN UN BROWSER ADICIONAL EN EL TELEFONO Y NO EN LA MISMA APP
// ES UTILIZADA POR CADA APPBAR DE LA APP QUE TIENE EL ICONO DE AYUDA
Future<void> abrirEnlaceExterno(String urlString) async {
  final Uri url = Uri.parse(urlString);
  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw Exception('No se pudo abrir el enlace: $urlString');
  }
}
