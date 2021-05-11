import 'package:cafeteria_flutter/home/home_page_repository.dart';
import 'package:cafeteria_flutter/shared/models/coffee_list_model.dart';
import 'package:cafeteria_flutter/shared/models/coffee_model.dart';

class HomeController {
  CoffeeListModel? coffee;

  final repository = HomePageRepository();
  HomeController() {
    getCafe();
  }

  Future<void> getCafe() async {
    coffee!.cafeList = await repository.getCoffeeList();
  }
}
