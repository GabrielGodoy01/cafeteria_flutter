import 'package:flutter/material.dart';

class IngredientsIconWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  const IngredientsIconWidget(
      {Key? key, required this.icon, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, top: 16),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(15)),
            height: 50,
            width: 50,
            child: Icon(
              icon,
              color: Colors.white,
              size: 24.0,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 4),
            alignment: Alignment.topCenter,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
