import 'dart:convert';

class CoffeeModel {
  final String nome;
  final String descricao;
  final String preco;
  final String imagem;
  final String tempoPreparacao;
  final String ingredientes;
  final String informacoesNutricionais;

  CoffeeModel({
    required this.nome,
    required this.descricao,
    required this.preco,
    required this.imagem,
    required this.tempoPreparacao,
    required this.ingredientes,
    required this.informacoesNutricionais,
  });

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'descricao': descricao,
      'preco': preco,
      'imagem': imagem,
      'tempoPreparacao': tempoPreparacao,
      'ingredientes': ingredientes,
      'informacoesNutricionais': informacoesNutricionais,
    };
  }

  factory CoffeeModel.fromMap(Map<String, dynamic> map) {
    return CoffeeModel(
      nome: map['nome'],
      descricao: map['descricao'],
      preco: map['preco'],
      imagem: map['imagem'],
      tempoPreparacao: map['tempoPreparacao'],
      ingredientes: map['Ingredientes'],
      informacoesNutricionais: map['informacoesNutricionais'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CoffeeModel.fromJson(String source) =>
      CoffeeModel.fromMap(json.decode(source));
}
