import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContainerCodigoVerificacionInput extends StatelessWidget {
  final int longitud;

  const ContainerCodigoVerificacionInput({super.key, this.longitud = 6});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(longitud, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: SizedBox(
              width: 35,
              height: 45,
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  counterText: '',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
                style: const TextStyle(fontSize: 13),
              ),
            ),
          );
        }),
      ),
    );
  }
}
