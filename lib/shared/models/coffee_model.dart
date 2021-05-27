import 'informacoes_nutricionais_model.dart';
import 'ingredients_model.dart';

class CoffeeModel {
  final String nome;
  final String descricao;
  final double preco;

  final String imagem;
  final int tempoPreparacao;
  final List<Ingredients> ingredientes;
  final InformacoesNutricionaisModel informacoesNutricionais;

  CoffeeModel({
    required this.nome,
    required this.descricao,
    required this.preco,
    required this.imagem,
    required this.tempoPreparacao,
    required this.ingredientes,
    required this.informacoesNutricionais,
  });
}
