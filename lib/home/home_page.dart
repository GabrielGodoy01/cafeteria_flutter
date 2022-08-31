import 'package:cafeteria_flutter/home/home_controller.dart';
import 'package:cafeteria_flutter/home/widgets/card_coffee_widget.dart';

import 'package:flutter/material.dart';

import 'widgets/card_imagem_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 400),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ListView(children: [
              Column(children: [
                Container(
                  height: 161,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(TextSpan(
                                text: "Olá, ",
                                style: TextStyle(
                                    fontSize: 26.0, color: Color(0xFF473D3A)),
                                children: [
                                  TextSpan(
                                    text: "bem-vindo",
                                    style: TextStyle(
                                        fontSize: 26.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF473D3A)),
                                  )
                                ])),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                                alignment: Alignment.bottomLeft,
                                width: 280,
                                child: Text(
                                  "Seja bem-vindo a nossa Cafeteria, aproveite a estadia!",
                                  style: TextStyle(
                                    color: Color(0xFF473D3A),
                                  ),
                                )),
                          ],
                        ),
                        Container(
                          alignment: Alignment.topCenter,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://avatars.githubusercontent.com/u/61150821?v=4"),
                            radius: 32,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sabor da semana",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Veja tudo",
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 2),
                Container(
                  height: 400,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CardCoffeeWidget(
                        descricao: controller.lista[index].descricao,
                        imagem: controller.lista[index].imagem,
                        nome: controller.lista[index].nome,
                        preco: controller.lista[index].preco,
                        tempoPreparacao:
                            controller.lista[index].tempoPreparacao,
                        ingredientes: controller.lista[index].ingredientes,
                        informacoesNutricionais:
                            controller.lista[index].informacoesNutricionais,
                      );
                    },
                    itemCount: controller.lista.length,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Veja algumas fotos",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Veja tudo",
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  height: MediaQuery.of(context).size.height * 0.28,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          CardImagemWidget(imagem: "assets/coffee.jpg"),
                          CardImagemWidget(imagem: "assets/coffee2.jpg"),
                          CardImagemWidget(imagem: "assets/coffee3.jpg"),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}
