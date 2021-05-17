import 'package:cafeteria_flutter/shared/widgets/like_icon_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/informations_widget.dart';
import 'widgets/ingredients_widget.dart';
import 'widgets/order_now_button_widget.dart';
import 'widgets/prepare_time_widget.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(color: Color(0xFFF3B2B7)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  height: MediaQuery.of(context).size.width * 0.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 20, left: 18),
                            width: MediaQuery.of(context).size.width * 0.55,
                            child: Text(
                              "Café Macciato",
                              style: TextStyle(
                                  fontSize: 34.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 60),
                            child: LikeIconWidget(),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20, left: 18),
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: Text(
                          "descrição do café de macho macho",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              PrepareTimeWidget(),
              IngredientsWidget(),
              InformationsWidget(),
              OrderNowButtonWidget(),
            ],
          ),
        ),
        Positioned(
          top: 80,
          left: 30,
          child: Container(
            width: MediaQuery.of(context).size.width * 1.4,
            child: Image(
              image: AssetImage("assets/pinkcup.png"),
            ),
          ),
        ),
      ]),
    );
  }
}
