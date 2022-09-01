import 'package:flutter/material.dart';

class LikeIconWidget extends StatelessWidget {
  final Function()? onPressed;
  final bool isClicked;
  const LikeIconWidget({Key? key, this.onPressed, required this.isClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.white),
      child: IconButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        icon: Icon(
          Icons.favorite,
          color: isClicked ? Colors.pink : Colors.grey,
          size: 20.0,
        ),
      ),
    );
  }
}
