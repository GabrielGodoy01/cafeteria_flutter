import 'package:cafeteria_flutter/shared/models/informacoes_nutricionais_model.dart';
import 'package:flutter/material.dart';

import 'nutricional_information_widget.dart';

class InformationsWidget extends StatelessWidget {
  final InformacoesNutricionaisModel informacoesNutricionais;
  const InformationsWidget({
    Key? key,
    required this.informacoesNutricionais,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              top: BorderSide(width: 1.0, color: Colors.grey.shade300),
              bottom: BorderSide(width: 2.0, color: Colors.grey.shade300)),
        ),
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 24, bottom: 24),
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
              child: Column(
                children: [
                  NutricionalInformationWidget(
                      text: "Calorias",
                      valor: informacoesNutricionais.calorias.toString()),
                  NutricionalInformationWidget(
                    text: "Proteínas",
                    valor: "${informacoesNutricionais.proteinas.toString()}g",
                  ),
                  NutricionalInformationWidget(
                      text: "Cafeína",
                      valor: "${informacoesNutricionais.cafeina.toString()}mg"),
                ],
              ),
            )
          ]),
        ));
  }
}
