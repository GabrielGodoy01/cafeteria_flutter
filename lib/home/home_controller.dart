import 'package:cafeteria_flutter/home/home_repository.dart';
import 'package:cafeteria_flutter/shared/models/coffee_model.dart';

class HomeController {
  List<CoffeeModel> lista = [];

  final repository = HomeRepository();
  HomeController() {
    getCafe();
  }

  getCafe() {
    lista = repository.getCoffeeList();
  }
}
