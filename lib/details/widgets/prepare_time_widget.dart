import 'package:flutter/material.dart';

class PrepareTimeWidget extends StatelessWidget {
  final int tempoPreparacao;
  const PrepareTimeWidget({
    Key? key,
    required this.tempoPreparacao,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 220),
      child: Container(
        alignment: Alignment.topLeft,
        height: MediaQuery.of(context).size.width * 0.25,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tempo de preparo",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A),
                    fontSize: 17),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "${tempoPreparacao}min",
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
