import 'package:flutter/material.dart';

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
                      Container(
                        padding: EdgeInsets.only(top: 20, left: 18),
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Text(
                          "Café Macciato",
                          style: TextStyle(
                              fontSize: 34.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
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
        Padding(
          padding: const EdgeInsets.only(top: 320),
          child: Container(
            alignment: Alignment.topLeft,
            height: MediaQuery.of(context).size.width * 1.2,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 24),
              child: Column(
                children: [
                  Text(
                    "Preparation time",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF473D3A),
                        fontSize: 17),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
