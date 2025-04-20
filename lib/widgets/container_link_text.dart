import 'package:flutter/material.dart';

class ContainerLinkText extends StatelessWidget {
  final String texto;
  final VoidCallback onTap;
  final double top;
  final double size;

  const ContainerLinkText({
    super.key,
    required this.texto,
    required this.onTap,
    required this.top,
    this.size = 14.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: top, bottom: 0),
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          foregroundColor: Colors.blue,
          textStyle: TextStyle(
            fontSize: size,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none,
          ),
        ),
        child: Text(texto),
      ),
    );
  }
}
