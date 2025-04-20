import 'package:flutter/material.dart';
import '../utils/inputs.dart';

class ConainerDetailBalance extends StatelessWidget {
  const ConainerDetailBalance({super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      detalleSaldo,
      style: TextStyle(color: Colors.black, fontSize: 15),
    );
  }
}
