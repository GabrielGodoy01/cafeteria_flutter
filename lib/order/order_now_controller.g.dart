// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_now_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OrderNowController on OrderNowControllerBase, Store {
  Computed<double>? _$precoTotalComputed;

  @override
  double get precoTotal =>
      (_$precoTotalComputed ??= Computed<double>(() => super.precoTotal,
              name: 'OrderNowControllerBase.precoTotal'))
          .value;

  final _$quantidadeAtom = Atom(name: 'OrderNowControllerBase.quantidade');

  @override
  int get quantidade {
    _$quantidadeAtom.reportRead();
    return super.quantidade;
  }

  @override
  set quantidade(int value) {
    _$quantidadeAtom.reportWrite(value, super.quantidade, () {
      super.quantidade = value;
    });
  }

  final _$valorAtom = Atom(name: 'OrderNowControllerBase.valor');

  @override
  int get valor {
    _$valorAtom.reportRead();
    return super.valor;
  }

  @override
  set valor(int value) {
    _$valorAtom.reportWrite(value, super.valor, () {
      super.valor = value;
    });
  }

  final _$precoAtom = Atom(name: 'OrderNowControllerBase.preco');

  @override
  double get preco {
    _$precoAtom.reportRead();
    return super.preco;
  }

  @override
  set preco(double value) {
    _$precoAtom.reportWrite(value, super.preco, () {
      super.preco = value;
    });
  }

  final _$controleTemperaturaAtom =
      Atom(name: 'OrderNowControllerBase.controleTemperatura');

  @override
  int get controleTemperatura {
    _$controleTemperaturaAtom.reportRead();
    return super.controleTemperatura;
  }

  @override
  set controleTemperatura(int value) {
    _$controleTemperaturaAtom.reportWrite(value, super.controleTemperatura, () {
      super.controleTemperatura = value;
    });
  }

  final _$OrderNowControllerBaseActionController =
      ActionController(name: 'OrderNowControllerBase');

  @override
  void trocaTemperatura(int value) {
    final _$actionInfo = _$OrderNowControllerBaseActionController.startAction(
        name: 'OrderNowControllerBase.trocaTemperatura');
    try {
      return super.trocaTemperatura(value);
    } finally {
      _$OrderNowControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void trocaValor(int value) {
    final _$actionInfo = _$OrderNowControllerBaseActionController.startAction(
        name: 'OrderNowControllerBase.trocaValor');
    try {
      return super.trocaValor(value);
    } finally {
      _$OrderNowControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void trocaPreco(double valor) {
    final _$actionInfo = _$OrderNowControllerBaseActionController.startAction(
        name: 'OrderNowControllerBase.trocaPreco');
    try {
      return super.trocaPreco(valor);
    } finally {
      _$OrderNowControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void menosQuantidade() {
    final _$actionInfo = _$OrderNowControllerBaseActionController.startAction(
        name: 'OrderNowControllerBase.menosQuantidade');
    try {
      return super.menosQuantidade();
    } finally {
      _$OrderNowControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void maisQuantidade() {
    final _$actionInfo = _$OrderNowControllerBaseActionController.startAction(
        name: 'OrderNowControllerBase.maisQuantidade');
    try {
      return super.maisQuantidade();
    } finally {
      _$OrderNowControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
quantidade: ${quantidade},
valor: ${valor},
preco: ${preco},
controleTemperatura: ${controleTemperatura},
precoTotal: ${precoTotal}
    ''';
  }
}
