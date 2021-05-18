import 'package:cafeteria_flutter/details/details_page.dart';
import 'package:cafeteria_flutter/shared/models/informacoes_nutricionais_model.dart';
import 'package:cafeteria_flutter/shared/widgets/like_icon_widget.dart';
import 'package:flutter/material.dart';

class CardCoffeeWidget extends StatelessWidget {
  final String nome;
  final String descricao;
  final double preco;
  final String imagem;
  final int tempoPreparacao;
  final List<String> ingredientes;
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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
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
                              LikeIconWidget(),
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
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Image(
                    image: AssetImage(imagem),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
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
