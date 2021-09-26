// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on ControllerBase, Store {
  final _$priceAtom = Atom(name: 'ControllerBase.price');

  @override
  double get price {
    _$priceAtom.reportRead();
    return super.price;
  }

  @override
  set price(double value) {
    _$priceAtom.reportWrite(value, super.price, () {
      super.price = value;
    });
  }

  final _$ControllerBaseActionController =
      ActionController(name: 'ControllerBase');

  @override
  dynamic changePrice(dynamic newPrice) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.changePrice');
    try {
      return super.changePrice(newPrice);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
price: ${price}
    ''';
  }
}
