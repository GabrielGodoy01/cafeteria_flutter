import 'package:flutter/material.dart';

class ItemsDetailsWidget extends StatefulWidget {
  ItemsDetailsWidget({Key? key}) : super(key: key);

  @override
  _ItemsDetailsWidgetState createState() => _ItemsDetailsWidgetState();
}

class _ItemsDetailsWidgetState extends State<ItemsDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(width: 1.0, color: Colors.grey.shade300)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
