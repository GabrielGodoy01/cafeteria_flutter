import 'package:flutter/material.dart';

class ItemAddWidget extends StatefulWidget {
  const ItemAddWidget({
    Key? key,
  }) : super(key: key);

  @override
  _ItemAddWidgetState createState() => _ItemAddWidgetState();
}

class _ItemAddWidgetState extends State<ItemAddWidget> {
  @override
  Widget build(BuildContext context) {
    var quantidade = 0;
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(
                  Icons.icecream,
                  size: 32,
                ),
                Text("Icecream")
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                height: 60,
                width: 220,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
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
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        child: Text(
                          "$quantidade cubos",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
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
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
