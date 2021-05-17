import 'package:flutter/material.dart';

class LikeIconWidget extends StatelessWidget {
  const LikeIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.white),
      child: Icon(
        Icons.favorite,
        color: Colors.pink,
        size: 20.0,
      ),
    );
  }
}
