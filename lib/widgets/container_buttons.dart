import 'package:flutter/material.dart';
import '../utils/inputs.dart';

class ContainerButtons extends StatelessWidget {
  final String type;
  final VoidCallback onTap;

  const ContainerButtons({super.key, required this.type, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final backgroundColor = botonesConEstilo[type]?['backgroundColor'];
    final color = botonesConEstilo[type]?['color'];
    final text = botonesConEstilo[type]?['text'];

    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 0),
      child: SizedBox(
        width: 310,
        height: 45,
        child: TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            backgroundColor: backgroundColor,
            foregroundColor: color,
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          child: Text(text),
        ),
      ),
    );
  }
}
