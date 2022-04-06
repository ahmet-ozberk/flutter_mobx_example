// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Counter on _CounterBase, Store {
  final _$usersAtom = Atom(name: '_CounterBase.users');

  @override
  List<UserModelData?> get users {
    _$usersAtom.reportRead();
    return super.users;
  }

  @override
  set users(List<UserModelData?> value) {
    _$usersAtom.reportWrite(value, super.users, () {
      super.users = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_CounterBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$_CounterBaseActionController = ActionController(name: '_CounterBase');

  @override
  void getData() {
    final _$actionInfo = _$_CounterBaseActionController.startAction(
        name: '_CounterBase.getData');
    try {
      return super.getData();
    } finally {
      _$_CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
users: ${users},
isLoading: ${isLoading}
    ''';
  }
}
