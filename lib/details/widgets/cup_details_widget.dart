import 'package:flutter/material.dart';

class CupDetailsWidget extends StatefulWidget {
  CupDetailsWidget({Key? key}) : super(key: key);

  @override
  _CupDetailsWidgetState createState() => _CupDetailsWidgetState();
}

class _CupDetailsWidgetState extends State<CupDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(width: 1.0, color: Colors.grey.shade300)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Select cup",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF473D3A),
                          fontSize: 15)),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Select size",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF473D3A),
                          fontSize: 15))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
