// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TodoStore on TodoStoreBase, Store {
  late final _$isDoneAtom =
      Atom(name: 'TodoStoreBase.isDone', context: context);

  @override
  bool get isDone {
    _$isDoneAtom.reportRead();
    return super.isDone;
  }

  @override
  set isDone(bool value) {
    _$isDoneAtom.reportWrite(value, super.isDone, () {
      super.isDone = value;
    });
  }

  late final _$TodoStoreBaseActionController =
      ActionController(name: 'TodoStoreBase', context: context);

  @override
  void toggle() {
    final _$actionInfo = _$TodoStoreBaseActionController.startAction(
        name: 'TodoStoreBase.toggle');
    try {
      return super.toggle();
    } finally {
      _$TodoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isDone: ${isDone}
    ''';
  }
}
