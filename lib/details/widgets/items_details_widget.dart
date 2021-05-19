import 'package:flutter/material.dart';

import 'item_add_widget.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
        child: Column(
          children: [ItemAddWidget(), ItemAddWidget(), ItemAddWidget()],
        ),
      ),
    );
  }
}
