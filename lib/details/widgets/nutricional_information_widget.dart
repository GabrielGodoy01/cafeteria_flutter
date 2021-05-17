import 'package:flutter/material.dart';

class NutricionalInformationWidget extends StatelessWidget {
  final String text;
  final String valor;
  const NutricionalInformationWidget(
      {Key? key, required this.text, required this.valor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Container(
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(color: Colors.grey.shade500, fontSize: 13),
            ),
            Container(
              padding: EdgeInsets.only(left: 12),
              alignment: Alignment.center,
              child: Text(valor,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF473D3A),
                      fontSize: 13)),
            ),
          ],
        ),
      ),
    );
  }
}
