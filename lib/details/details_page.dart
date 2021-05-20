import 'package:cafeteria_flutter/shared/models/informacoes_nutricionais_model.dart';
import 'package:cafeteria_flutter/shared/models/ingredients_model.dart';
import 'package:cafeteria_flutter/shared/widgets/like_icon_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/informations_widget.dart';
import 'widgets/ingredients_widget.dart';
import 'widgets/order_now_button_widget.dart';
import 'widgets/prepare_time_widget.dart';

class DetailsPage extends StatelessWidget {
  final String nome;
  final String descricao;
  final double preco;
  final String imagem;
  final int tempoPreparacao;
  final List<Ingredients> ingredientes;
  final InformacoesNutricionaisModel informacoesNutricionais;

  const DetailsPage(
      {Key? key,
      required this.nome,
      required this.descricao,
      required this.preco,
      required this.imagem,
      required this.tempoPreparacao,
      required this.ingredientes,
      required this.informacoesNutricionais})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(color: Color(0xFFDAB68C)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  height: MediaQuery.of(context).size.width * 0.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 20, left: 18),
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              nome,
                              style: TextStyle(
                                  fontSize: 34.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20, left: 18),
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: Text(
                          descricao,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          children: [
            PrepareTimeWidget(
              tempoPreparacao: tempoPreparacao,
            ),
            IngredientsWidget(ingredientes: ingredientes),
            InformationsWidget(
              informacoesNutricionais: informacoesNutricionais,
            ),
            OrderNowButtonWidget(
              preco: preco,
            ),
          ],
        ),
        Positioned(
          top: 60,
          left: 250,
          child: LikeIconWidget(),
        ),
        Positioned(
          top: 30,
          left: 30,
          child: Container(
            width: MediaQuery.of(context).size.width * 1.4,
            child: Image(
              image: AssetImage(imagem),
            ),
          ),
        ),
      ]),
    );
  }
}
