import 'package:flutter/material.dart';

import 'ingredients_icon_widget.dart';

class IngredientsWidget extends StatelessWidget {
  const IngredientsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
            top: BorderSide(width: 1.0, color: Colors.grey.shade300),
            bottom: BorderSide(width: 1.0, color: Colors.grey.shade300)),
      ),
      alignment: Alignment.topLeft,
      height: MediaQuery.of(context).size.width * 0.44,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Ingredientes",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF473D3A),
                fontSize: 17),
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.31,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                IngredientsIconWidget(
                  icon: Icons.face,
                  text: "Water expresso",
                ),
                IngredientsIconWidget(
                  icon: Icons.favorite,
                  text: "Sugar",
                ),
                IngredientsIconWidget(
                  icon: Icons.access_alarm_sharp,
                  text: "Coffee",
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
