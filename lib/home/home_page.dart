import 'package:cafeteria_flutter/home/home_page_controller.dart';
import 'package:cafeteria_flutter/home/widgets/appbar_widget.dart';
import 'package:cafeteria_flutter/home/widgets/card_coffee_widget.dart';
import 'package:flutter/material.dart';

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
      body: Column(children: [
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
                  "See all",
                  style: TextStyle(color: Colors.grey.shade500),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 200,
          child: FutureBuilder(
            future: controller.getCafe(),
            builder: (context, snapshot) => ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CardCoffeeWidget(
                  controllerNome: controller.coffee!.cafeList[index].nome,
                );
              },
              itemCount: controller.coffee!.cafeList.length,
            ),
          ),
        )
      ]),
    );
  }
}
