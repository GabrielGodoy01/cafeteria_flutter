import 'package:cafeteria_flutter/details/details_controller.dart';
import 'package:cafeteria_flutter/shared/models/informacoes_nutricionais_model.dart';
import 'package:cafeteria_flutter/shared/models/ingredients_model.dart';
import 'package:cafeteria_flutter/shared/widgets/like_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'widgets/informations_widget.dart';
import 'widgets/ingredients_widget.dart';
import '../order/order_now_button_widget.dart';
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
    var controller = DetailsController();
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 400, maxHeight: 700),
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(color: Color(0xFFDAB68C)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  nome,
                                  style: TextStyle(
                                      fontSize: 34.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            Observer(builder: (_) {
                              return LikeIconWidget(
                                isClicked: controller.isClicked,
                                onPressed: () {
                                  controller.setIsClicked();
                                },
                              );
                            })
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
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
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
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
              left: 50,
              top: 30,
              child: Container(
                width: 500,
                child: Image(
                  image: AssetImage(imagem),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
