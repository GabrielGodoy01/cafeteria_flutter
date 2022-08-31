import 'package:flutter/material.dart';

class ItemAddWidget extends StatefulWidget {
  final String text;
  final IconData icon;

  const ItemAddWidget({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  _ItemAddWidgetState createState() => _ItemAddWidgetState();
}

class _ItemAddWidgetState extends State<ItemAddWidget> {
  var quantidade = 0;
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
                  widget.icon,
                  size: 32,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: Container(
                    alignment: Alignment.center,
                    width: 82,
                    child: Text(
                      widget.text,
                      style:
                          TextStyle(color: Colors.grey.shade500, fontSize: 15),
                    ),
                  ),
                ),
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
                            onPressed: quantidade > 0 ? menosQuantidade : null),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        child: Text(
                          "$quantidade",
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
                            maisQuantidade();
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
