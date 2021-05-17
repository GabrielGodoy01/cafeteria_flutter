import 'package:flutter/material.dart';

class OrderNowButtonWidget extends StatelessWidget {
  const OrderNowButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.085,
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
          ),
        ));
  }
}
