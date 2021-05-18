import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 161,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      Text.rich(TextSpan(
                          text: "Olá, ",
                          style: TextStyle(
                              fontSize: 26.0, color: Color(0xFF473D3A)),
                          children: [
                            TextSpan(
                              text: "Darth",
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
                          "https://avatars.githubusercontent.com/u/24724451?v=4"),
                      radius: 32,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
}
