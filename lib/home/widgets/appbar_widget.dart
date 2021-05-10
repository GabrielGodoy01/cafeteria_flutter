import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 161,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(color: Colors.brown.shade400),
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(TextSpan(
                          text: "Olá, ",
                          style: TextStyle(fontSize: 20),
                          children: [
                            TextSpan(
                              text: "Darth broxinha",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ])),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                            "Seja bem-vindo a nossa Cafeteria, aproveite a estadia!"),
                      ),
                    ],
                  ),
                  Container(
                      width: 58,
                      height: 58,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg"),
                            fit: BoxFit.cover,
                          ))),
                ],
              ),
            ),
          ),
        );
}
