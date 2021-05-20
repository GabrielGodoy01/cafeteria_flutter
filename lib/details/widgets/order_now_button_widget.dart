import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item_add_widget.dart';

class OrderNowButtonWidget extends StatefulWidget {
  final double preco;
  const OrderNowButtonWidget({
    Key? key,
    required this.preco,
  }) : super(key: key);

  @override
  _OrderNowButtonWidgetState createState() => _OrderNowButtonWidgetState();
}

class _OrderNowButtonWidgetState extends State<OrderNowButtonWidget> {
  var quantidade = 1;
  var quantidadeItems = 0;
  bool status = false;
  var segmentedControlValue = 0;
  int? _value = 1;
  double get precoTotal =>
      double.parse((widget.preco * quantidade).toStringAsFixed(2));

  void menosQuantidade() {
    setState(() {
      quantidade--;
    });
  }

  void maisQuantidade() {
    setState(() {
      quantidade++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 1,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.083,
          decoration: BoxDecoration(
              color: Color(0xFF473D3A),
              borderRadius: BorderRadius.circular(30)),
          child: TextButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                context: context,
                builder: (BuildContext context) {
                  return StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.73,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 8, top: 4),
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              icon: Icon(
                                Icons.close,
                                size: 25,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey.shade300)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 16, left: 24, bottom: 16),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 4),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Temperatura",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF473D3A),
                                                fontSize: 15),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: Text(
                                              "Quantidade",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF473D3A),
                                                  fontSize: 15),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child:
                                              CupertinoSlidingSegmentedControl(
                                            groupValue: segmentedControlValue,
                                            backgroundColor: Color(0xFFDAB68C),
                                            children: const <int, Widget>{
                                              0: Icon(Icons.whatshot),
                                              1: Icon(Icons.ac_unit),
                                            },
                                            onValueChanged: (int? value) {
                                              segmentedControlValue = value!;
                                            },
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Color(0xFFDAB68C),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100)),
                                                child: IconButton(
                                                  color: Colors.white,
                                                  icon: Icon(Icons.remove,
                                                      size: 20),
                                                  onPressed: () {
                                                    setState(() {
                                                      if (quantidade <= 1) {
                                                        quantidade = 1;
                                                      } else {
                                                        quantidade--;
                                                      }
                                                    });
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8),
                                                child: Container(
                                                  child: Text(
                                                    "$quantidade",
                                                    style:
                                                        TextStyle(fontSize: 20),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Color(0xFFDAB68C),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100)),
                                                child: IconButton(
                                                  color: Colors.white,
                                                  icon:
                                                      Icon(Icons.add, size: 20),
                                                  onPressed: () {
                                                    setState(() {
                                                      maisQuantidade();
                                                    });
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1.0, color: Colors.grey.shade300)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 7),
                              child: Container(
                                padding: EdgeInsets.only(left: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Select size",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF473D3A),
                                            fontSize: 15)),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 28),
                                      child: Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.only(left: 10),
                                        width: 80,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton<int>(
                                              value: _value,
                                              items: [
                                                DropdownMenuItem(
                                                  child: Text("P"),
                                                  value: 1,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("M"),
                                                  value: 2,
                                                ),
                                                DropdownMenuItem(
                                                    child: Text("G"), value: 3),
                                                DropdownMenuItem(
                                                    child: Text("GG"), value: 4)
                                              ],
                                              onChanged: (value) {
                                                setState(() {
                                                  _value = value;
                                                });
                                              }),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1.0, color: Colors.grey.shade300)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 8),
                              child: Column(
                                children: [
                                  ItemAddWidget(
                                    text: "Sugar",
                                    icon: Icons.food_bank_outlined,
                                  ),
                                  ItemAddWidget(
                                    text: "Ice",
                                    icon: Icons.food_bank_rounded,
                                  ),
                                  ItemAddWidget(
                                    text: "Cream",
                                    icon: Icons.chat_bubble_sharp,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 16),
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Total",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF473D3A),
                                              fontSize: 18)),
                                      Text("\$ $precoTotal",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFFDAB68C),
                                              fontSize: 24))
                                    ],
                                  ),
                                  Container(
                                      height: 57,
                                      width: 220,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF473D3A),
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Compre agora",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  });
                },
              );
            },
            child: Text(
              "Compre agora",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ));
  }
}
