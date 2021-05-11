import 'package:cafeteria_flutter/home/home_page_controller.dart';
import 'package:cafeteria_flutter/shared/models/coffee_list_model.dart';
import 'package:flutter/material.dart';

class CardCoffeeWidget extends StatelessWidget {
  final String controllerNome;

  const CardCoffeeWidget({
    Key? key,
    required this.controllerNome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: 58,
            height: 58,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg"),
                ))),
        Card(
          color: Colors.red,
          child: Column(
            children: [Text(controllerNome), Text("Caffé Misto")],
          ),
        ),
      ],
    );
  }
}
