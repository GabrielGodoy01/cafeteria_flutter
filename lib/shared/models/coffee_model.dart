import 'dart:convert';

class CoffeeModel {
  final String nome;
  final String descricao;
  final String preco;
  final String imagem;

  CoffeeModel(
      {required this.nome,
      required this.descricao,
      required this.preco,
      required this.imagem});

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'descricao': descricao,
      'preco': preco,
      'imagem': imagem
    };
  }

  factory CoffeeModel.fromMap(Map<String, dynamic> map) {
    return CoffeeModel(
      nome: map['nome'],
      descricao: map['descricao'],
      preco: map['preco'],
      imagem: map['imagem'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CoffeeModel.fromJson(String source) =>
      CoffeeModel.fromMap(json.decode(source));
}
