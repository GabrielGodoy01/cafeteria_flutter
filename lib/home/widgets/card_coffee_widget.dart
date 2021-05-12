import 'package:flutter/material.dart';

class CardCoffeeWidget extends StatelessWidget {
  final String nome;
  final String descricao;
  final String preco;
  final String imagem;

  const CardCoffeeWidget({
    Key? key,
    required this.nome,
    required this.descricao,
    required this.preco,
    required this.imagem,
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
                        Text(
                          nome,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 28,
                              fontFamily: "PTSerif"),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          descricao,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "PTSerif"),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'R\$ ${preco}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF473D3A),
                                  fontSize: 20,
                                  fontFamily: "PTSerif"),
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.pink,
                              size: 32.0,
                            )
                          ],
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
            width: 225,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Order now",
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
