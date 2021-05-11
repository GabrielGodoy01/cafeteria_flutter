import 'package:cafeteria_flutter/shared/models/coffee_list_model.dart';
import 'package:cafeteria_flutter/shared/models/coffee_model.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePageRepository {
  Future<List<CoffeeModel>> getCoffeeList() async {
    final response = await rootBundle.loadString("assets/database/coffee.json");
    final list = jsonDecode(response) as List;
    final cafes = list.map((e) => CoffeeModel.fromMap(e)).toList();
    return cafes;
  }
}
