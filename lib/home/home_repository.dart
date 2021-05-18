import 'package:cafeteria_flutter/shared/models/coffee_model.dart';
import 'package:cafeteria_flutter/shared/models/informacoes_nutricionais_model.dart';

class HomeRepository {
  final List<CoffeeModel> listCoffeeModel = [
    CoffeeModel(
        nome: "Caffé Misto",
        descricao: "Café com leite devidamente preparado por profissionais",
        preco: 4.99,
        imagem: "assets/twocup.png",
        tempoPreparacao: 5,
        ingredientes: ["Water Expresso", "Sugar", "Coffe"],
        informacoesNutricionais: InformacoesNutricionaisModel(
            calorias: 250, cafeina: 150, proteinas: 10)),
    CoffeeModel(
        nome: "Cappuccino",
        descricao: "Café com leite devidamente preparado por profissionais",
        preco: 12.99,
        imagem: "assets/twocup.png",
        tempoPreparacao: 15,
        ingredientes: ["Water Expresso", "Sugar", "Coffe"],
        informacoesNutricionais: InformacoesNutricionaisModel(
            calorias: 12, cafeina: 12, proteinas: 12)),
    CoffeeModel(
        nome: "Cappuccino com leite",
        descricao: "Café com leite devidamente preparado por profissionais",
        preco: 12.99,
        imagem: "assets/twocup.png",
        tempoPreparacao: 45,
        ingredientes: ["Water Expresso", "Sugar", "Coffe"],
        informacoesNutricionais: InformacoesNutricionaisModel(
            calorias: 12000, cafeina: 139, proteinas: 1000)),
  ];

  List<CoffeeModel> getCoffeeList() {
    return listCoffeeModel;
  }
}
