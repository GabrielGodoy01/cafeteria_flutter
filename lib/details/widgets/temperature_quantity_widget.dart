import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TemperatureQuantityWidget extends StatefulWidget {
  TemperatureQuantityWidget({Key? key}) : super(key: key);

  @override
  _TemperatureQuantityWidgetState createState() =>
      _TemperatureQuantityWidgetState();
}

class _TemperatureQuantityWidgetState extends State<TemperatureQuantityWidget> {
  var quantidade = 0;
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 1.0, color: Colors.grey.shade300)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Temperatura",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF473D3A),
                        fontSize: 15),
                  ),
                  CupertinoSwitch(
                    value: status,
                    onChanged: (value) {
                      setState(() {
                        status = value;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Quantidade",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF473D3A),
                        fontSize: 15),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFDAB68C),
                              borderRadius: BorderRadius.circular(100)),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.remove, size: 20),
                            onPressed: () {
                              setState(() {
                                if (quantidade <= 0) {
                                  quantidade = 0;
                                } else {
                                  quantidade--;
                                }
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            child: Text(
                              "$quantidade",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFDAB68C),
                              borderRadius: BorderRadius.circular(100)),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.add, size: 20),
                            onPressed: () {
                              setState(() {
                                quantidade++;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
