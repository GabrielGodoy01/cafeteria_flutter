import 'dart:convert';

import 'package:cafeteria_flutter/shared/models/coffee_model.dart';

class CoffeeListModel {
  List<CoffeeModel> cafeList;

  CoffeeListModel({required this.cafeList});

  Map<String, dynamic> toMap() {
    return {
      'cafe': cafeList.map((x) => x.toMap()).toList(),
    };
  }

  factory CoffeeListModel.fromMap(Map<String, dynamic> map) {
    return CoffeeListModel(
      cafeList: List<CoffeeModel>.from(
          map['cafe']?.map((x) => CoffeeModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory CoffeeListModel.fromJson(String source) =>
      CoffeeListModel.fromMap(json.decode(source));
}
