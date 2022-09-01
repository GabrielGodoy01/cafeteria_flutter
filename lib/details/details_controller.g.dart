// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DetailsController on DetailsControllerBase, Store {
  late final _$isClickedAtom =
      Atom(name: 'DetailsControllerBase.isClicked', context: context);

  @override
  bool get isClicked {
    _$isClickedAtom.reportRead();
    return super.isClicked;
  }

  @override
  set isClicked(bool value) {
    _$isClickedAtom.reportWrite(value, super.isClicked, () {
      super.isClicked = value;
    });
  }

  late final _$DetailsControllerBaseActionController =
      ActionController(name: 'DetailsControllerBase', context: context);

  @override
  void setIsClicked() {
    final _$actionInfo = _$DetailsControllerBaseActionController.startAction(
        name: 'DetailsControllerBase.setIsClicked');
    try {
      return super.setIsClicked();
    } finally {
      _$DetailsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isClicked: ${isClicked}
    ''';
  }
}
