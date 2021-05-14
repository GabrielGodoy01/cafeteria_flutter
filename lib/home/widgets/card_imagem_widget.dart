import 'package:flutter/material.dart';

class CardImagemWidget extends StatelessWidget {
  final String imagem;

  const CardImagemWidget({required this.imagem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.28,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage(imagem),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
