import 'package:flutter/material.dart';

import 'nutricional_information_widget.dart';

class InformationsWidget extends StatelessWidget {
  const InformationsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              top: BorderSide(width: 1.0, color: Colors.grey.shade300),
              bottom: BorderSide(width: 1.0, color: Colors.grey.shade300)),
        ),
        alignment: Alignment.topLeft,
        height: MediaQuery.of(context).size.width * 0.45,
        width: MediaQuery.of(context).size.width * 1,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Informações nutricionais",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF473D3A),
                  fontSize: 17),
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.31,
              child: Column(
                children: [
                  NutricionalInformationWidget(text: "Calorias", valor: "250"),
                  NutricionalInformationWidget(
                    text: "Proteínas",
                    valor: "10g",
                  ),
                  NutricionalInformationWidget(text: "Cafeína", valor: "150mg"),
                ],
              ),
            )
          ]),
        ));
  }
}
