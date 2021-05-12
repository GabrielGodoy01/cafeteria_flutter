import 'package:cafeteria_flutter/shared/models/coffee_model.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePageRepository {
  Future<List<CoffeeModel>> getCoffeeList() async {
    final response = await rootBundle.loadString("assets/database/coffee.json");
    final map = jsonDecode(response) as Map<String, dynamic>;
    final list = map["cafe"] as List;
    final cafes = list.map((e) => CoffeeModel.fromMap(e)).toList();
    return cafes;
  }
}
