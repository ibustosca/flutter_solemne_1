import 'package:flutter/material.dart';
import '../utils/inputs.dart';

class ContainerResumeCheckMoney extends StatelessWidget {
  final String monto;
  const ContainerResumeCheckMoney({super.key, required this.monto});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 2.0),
                  child: Text(
                    mensajeAcreditacion,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Text(
                  fechaAcreditacion,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  softWrap: true,
                ),
              ],
            ),
          ),
          Text(
            '\$$monto',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
