// widgets/custom_app_bar.dart
import 'package:flutter/material.dart';
import '../utils/url_launcher.dart';
import '../utils/inputs.dart';

class ContainerAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? titulo;
  final String? ayudaUrl;

  const ContainerAppBar({
    super.key,
    required this.titulo,
    required this.ayudaUrl,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Center(child: Text(mensajeMantencion))),
          );
        },
      ),
      title: Text(titulo!, style: const TextStyle(fontSize: 17)),
      actions: [
        IconButton(
          tooltip: 'Ayuda',
          onPressed: () {
            if (ayudaUrl != null) {
              abrirEnlaceExterno(ayudaUrl!);
            }
          },
          icon: const CircleAvatar(
            backgroundColor: Colors.amberAccent,
            radius: 16,
            child: Icon(
              Icons.help_outline_rounded,
              size: 25,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
