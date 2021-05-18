import 'package:cafeteria_flutter/details/widgets/temperature_quantity_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cup_details_widget.dart';
import 'items_details_widget.dart';

class OrderNowButtonWidget extends StatefulWidget {
  const OrderNowButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  _OrderNowButtonWidgetState createState() => _OrderNowButtonWidgetState();
}

class _OrderNowButtonWidgetState extends State<OrderNowButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 1,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.083,
          decoration: BoxDecoration(
              color: Color(0xFF473D3A),
              borderRadius: BorderRadius.circular(30)),
          child: TextButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                context: context,
                builder: (BuildContext context) {
                  return StatefulBuilder(builder: (BuildContext context,
                      StateSetter setState /*You can rename this!*/) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.73,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 8, top: 4),
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              icon: Icon(
                                Icons.close,
                                size: 25,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                          TemperatureQuantityWidget(),
                          CupDetailsWidget(),
                          ItemsDetailsWidget(),
                        ],
                      ),
                    );
                  });
                },
              );
            },
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
