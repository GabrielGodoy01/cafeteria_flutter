import 'package:flutter/material.dart';

class TotalDetailsWidget extends StatefulWidget {
  final double preco;
  TotalDetailsWidget({Key? key, required this.preco}) : super(key: key);

  @override
  _TotalDetailsWidgetState createState() => _TotalDetailsWidgetState();
}

class _TotalDetailsWidgetState extends State<TotalDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF473D3A),
                        fontSize: 18)),
                Text("\$ ${widget.preco}",
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
                    borderRadius: BorderRadius.circular(30)),
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
    );
  }
}
