import 'package:flutter/material.dart';

class ContainerLinkText extends StatelessWidget {
  final String texto;
  final VoidCallback onTap;
  final double top;

  const ContainerLinkText({
    super.key,
    required this.texto,
    required this.onTap,
    required this.top,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: top, bottom: 0),
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero, // sin relleno extra
          minimumSize: Size.zero, // evita altura mínima
          tapTargetSize:
              MaterialTapTargetSize.shrinkWrap, // área de toque precisa
          foregroundColor: Colors.blue,
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none, // sin subrayado
          ),
        ),
        child: Text(texto),
      ),
    );
  }
}
