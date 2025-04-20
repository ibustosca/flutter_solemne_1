import 'package:url_launcher/url_launcher.dart';

Future<void> abrirEnlaceExterno(String urlString) async {
  final Uri url = Uri.parse(urlString);
  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw Exception('No se pudo abrir el enlace: $urlString');
  }
}
