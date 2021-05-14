import 'package:cafeteria_flutter/home/home_page_controller.dart';
import 'package:cafeteria_flutter/home/widgets/appbar_widget.dart';
import 'package:cafeteria_flutter/home/widgets/card_coffee_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/card_imagem_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: ListView(children: [
        Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sabor da semana",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
          Container(
            height: 324,
            child: FutureBuilder(
              future: controller.getCafe(),
              builder: (context, snapshot) => ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CardCoffeeWidget(
                    nome: controller.coffee.cafeList[index].nome,
                    descricao: controller.coffee.cafeList[index].descricao,
                    preco: controller.coffee.cafeList[index].preco,
                    imagem: controller.coffee.cafeList[index].imagem,
                  );
                },
                itemCount: controller.coffee.cafeList.length,
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Veja algumas fotos",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
        ]),
      ]),
    );
  }
}
