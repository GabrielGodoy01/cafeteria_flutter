import 'package:cafeteria_flutter/shared/models/coffee_model.dart';
import 'package:cafeteria_flutter/shared/models/informacoes_nutricionais_model.dart';
import 'package:cafeteria_flutter/shared/models/ingredients_model.dart';
import 'package:flutter/material.dart';

class HomeRepository {
  final List<CoffeeModel> listCoffeeModel = [
    CoffeeModel(
        nome: "Caffé Misto",
        descricao: "Café com leite devidamente preparado por profissionais",
        preco: 4.99,
        imagem: "assets/twocup.png",
        tempoPreparacao: 5,
        ingredientes: [
          Ingredients(
            color: Colors.pink.shade400,
            ingrediente: "Leite",
            icon: Icons.local_bar,
          ),
          Ingredients(
            color: Colors.brown.shade400,
            ingrediente: "Café",
            icon: Icons.coffee,
          ),
          Ingredients(
            color: Colors.blue,
            ingrediente: "Sugar",
            icon: Icons.icecream,
          ),
        ],
        informacoesNutricionais: InformacoesNutricionaisModel(
            calorias: 250, cafeina: 150, proteinas: 10)),
    CoffeeModel(
        nome: "Cappuccino",
        descricao: "Um Cappuccino perfeito para dias friso e chuvosos",
        preco: 12.99,
        imagem: "assets/twocup.png",
        tempoPreparacao: 15,
        ingredientes: [
          Ingredients(
            color: Colors.brown.shade400,
            ingrediente: "Cappuccino",
            icon: Icons.coffee,
          ),
          Ingredients(
            color: Colors.blue,
            ingrediente: "Sugar",
            icon: Icons.icecream,
          ),
        ],
        informacoesNutricionais: InformacoesNutricionaisModel(
            calorias: 12, cafeina: 12, proteinas: 12)),
    CoffeeModel(
        nome: "Chá com leite",
        descricao: "Um chá delicioso acompanhado com leite",
        preco: 12.99,
        imagem: "assets/twocup.png",
        tempoPreparacao: 45,
        ingredientes: [
          Ingredients(
            color: Colors.brown.shade400,
            ingrediente: "Chá",
            icon: Icons.coffee,
          ),
          Ingredients(
            color: Colors.blue,
            ingrediente: "Leite",
            icon: Icons.local_bar,
          ),
          Ingredients(
            color: Colors.pink.shade400,
            ingrediente: "Açucar",
            icon: Icons.icecream,
          ),
        ],
        informacoesNutricionais: InformacoesNutricionaisModel(
            calorias: 12000, cafeina: 139, proteinas: 1000)),
  ];

  List<CoffeeModel> getCoffeeList() {
    return listCoffeeModel;
  }
}
