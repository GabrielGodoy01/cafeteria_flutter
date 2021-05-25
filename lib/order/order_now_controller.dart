import 'package:mobx/mobx.dart';

part 'order_now_controller.g.dart';

class OrderNowController = OrderNowControllerBase with _$OrderNowController;

abstract class OrderNowControllerBase with Store {
  OrderNowControllerBase({required this.preco});

  @observable
  int quantidade = 1;

  @observable
  int valor = 1;

  @observable
  double preco = 0;

  @observable
  int controleTemperatura = 0;

  @computed
  double get precoTotal =>
      double.parse((preco * quantidade).toStringAsFixed(2));

  @action
  void trocaTemperatura(int value) => controleTemperatura = value;

  @action
  void trocaValor(int value) => valor = value;

  @action
  void trocaPreco(double valor) => preco = valor;

  @action
  void menosQuantidade() => quantidade < 0 ? quantidade = 0 : quantidade--;

  @action
  void maisQuantidade() => quantidade++;
}
