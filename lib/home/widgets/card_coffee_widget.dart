import 'package:cafeteria_flutter/details/details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../details/details_page.dart';
import '../../shared/models/informacoes_nutricionais_model.dart';
import '../../shared/models/ingredients_model.dart';
import '../../shared/widgets/like_icon_widget.dart';

class CardCoffeeWidget extends StatelessWidget {
  final String nome;
  final String descricao;
  final double preco;
  final String imagem;
  final int tempoPreparacao;
  final List<Ingredients> ingredientes;
  final InformacoesNutricionaisModel informacoesNutricionais;

  const CardCoffeeWidget({
    Key? key,
    required this.nome,
    required this.descricao,
    required this.preco,
    required this.imagem,
    required this.tempoPreparacao,
    required this.ingredientes,
    required this.informacoesNutricionais,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = DetailsController();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      width: 250,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.antiAlias,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 3,
                  color: Color(0xFFDAB68C),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 60, bottom: 30, left: 12, right: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 80,
                          child: Text(
                            nome,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 28,
                                fontFamily: "PTSerif"),
                          ),
                        ),
                        Container(
                          height: 70,
                          child: Text(
                            descricao,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: "PTSerif"),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'R\$ $preco',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF473D3A),
                                    fontSize: 20,
                                    fontFamily: "PTSerif"),
                              ),
                              Observer(builder: (_) {
                                return LikeIconWidget(
                                  isClicked: controller.isClicked,
                                  onPressed: () {
                                    controller.setIsClicked();
                                  },
                                );
                              }),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -60,
                child: Container(
                  width: 350,
                  child: Image(
                    image: AssetImage(imagem),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            width: 230,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsPage(
                            nome: nome,
                            descricao: descricao,
                            preco: preco,
                            imagem: imagem,
                            tempoPreparacao: tempoPreparacao,
                            informacoesNutricionais: informacoesNutricionais,
                            ingredientes: ingredientes,
                          )),
                );
              },
              child: Text(
                "Comprar",
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Color(0xFF473D3A),
                  elevation: 5,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0))),
            ),
          ),
        ],
      ),
    );
  }
}
