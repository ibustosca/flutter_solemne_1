import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContainerInputMoney extends StatelessWidget {
  final TextEditingController controller;

  const ContainerInputMoney({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: SizedBox(
        height: 70,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Campo invisible solo para entrada
            TextField(
              controller: controller,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              style: const TextStyle(
                fontSize: 70,
                color: Colors.transparent,
                height: 1,
              ),
              decoration: const InputDecoration(
                isDense: true,
                isCollapsed: true,
                contentPadding: EdgeInsets.zero,
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 0.6),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 0.6),
                ),
              ),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              cursorColor: Colors.grey,
            ),

            ValueListenableBuilder<TextEditingValue>(
              valueListenable: controller,
              builder: (context, value, _) {
                return Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Transform.translate(
                          offset: const Offset(0, -8),
                          child: Text(
                            '\$',
                            style: const TextStyle(
                              fontSize: 25,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      TextSpan(
                        text: controller.text,
                        style: const TextStyle(
                          fontSize: 50,
                          color: Colors.black54,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
