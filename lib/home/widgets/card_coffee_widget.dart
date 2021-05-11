import 'package:cafeteria_flutter/shared/models/coffee_model.dart';
import 'package:flutter/material.dart';

class CardCoffeeWidget extends StatelessWidget {
  final CoffeeModel coffeeModel;
  const CardCoffeeWidget({Key? key, required this.coffeeModel})
      : super(key: key);

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
            children: [Text("Café"), Text("Caffé Misto")],
          ),
        ),
      ],
    );
  }
}
