// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ListStore on ListStoreBase, Store {
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: 'ListStoreBase.isFormValid'))
          .value;

  late final _$nextTodoTitleAtom =
      Atom(name: 'ListStoreBase.nextTodoTitle', context: context);

  @override
  String get nextTodoTitle {
    _$nextTodoTitleAtom.reportRead();
    return super.nextTodoTitle;
  }

  @override
  set nextTodoTitle(String value) {
    _$nextTodoTitleAtom.reportWrite(value, super.nextTodoTitle, () {
      super.nextTodoTitle = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'ListStoreBase.isLoading', context: context);

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

  late final _$isErrorAtom =
      Atom(name: 'ListStoreBase.isError', context: context);

  @override
  bool get isError {
    _$isErrorAtom.reportRead();
    return super.isError;
  }

  @override
  set isError(bool value) {
    _$isErrorAtom.reportWrite(value, super.isError, () {
      super.isError = value;
    });
  }

  late final _$errorMessageAtom =
      Atom(name: 'ListStoreBase.errorMessage', context: context);

  @override
  String get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$isRefreshingAtom =
      Atom(name: 'ListStoreBase.isRefreshing', context: context);

  @override
  bool get isRefreshing {
    _$isRefreshingAtom.reportRead();
    return super.isRefreshing;
  }

  @override
  set isRefreshing(bool value) {
    _$isRefreshingAtom.reportWrite(value, super.isRefreshing, () {
      super.isRefreshing = value;
    });
  }

  late final _$isRefreshingErrorAtom =
      Atom(name: 'ListStoreBase.isRefreshingError', context: context);

  @override
  bool get isRefreshingError {
    _$isRefreshingErrorAtom.reportRead();
    return super.isRefreshingError;
  }

  @override
  set isRefreshingError(bool value) {
    _$isRefreshingErrorAtom.reportWrite(value, super.isRefreshingError, () {
      super.isRefreshingError = value;
    });
  }

  late final _$ListStoreBaseActionController =
      ActionController(name: 'ListStoreBase', context: context);

  @override
  void setNextTodoTitle(String title) {
    final _$actionInfo = _$ListStoreBaseActionController.startAction(
        name: 'ListStoreBase.setNextTodoTitle');
    try {
      return super.setNextTodoTitle(title);
    } finally {
      _$ListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTodo() {
    final _$actionInfo = _$ListStoreBaseActionController.startAction(
        name: 'ListStoreBase.addTodo');
    try {
      return super.addTodo();
    } finally {
      _$ListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTodo(TodoStore todo) {
    final _$actionInfo = _$ListStoreBaseActionController.startAction(
        name: 'ListStoreBase.removeTodo');
    try {
      return super.removeTodo(todo);
    } finally {
      _$ListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearTodos() {
    final _$actionInfo = _$ListStoreBaseActionController.startAction(
        name: 'ListStoreBase.clearTodos');
    try {
      return super.clearTodos();
    } finally {
      _$ListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$ListStoreBaseActionController.startAction(
        name: 'ListStoreBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$ListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(bool value) {
    final _$actionInfo = _$ListStoreBaseActionController.startAction(
        name: 'ListStoreBase.setError');
    try {
      return super.setError(value);
    } finally {
      _$ListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setErrorMessage(String value) {
    final _$actionInfo = _$ListStoreBaseActionController.startAction(
        name: 'ListStoreBase.setErrorMessage');
    try {
      return super.setErrorMessage(value);
    } finally {
      _$ListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRefreshing(bool value) {
    final _$actionInfo = _$ListStoreBaseActionController.startAction(
        name: 'ListStoreBase.setRefreshing');
    try {
      return super.setRefreshing(value);
    } finally {
      _$ListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRefreshingError(bool value) {
    final _$actionInfo = _$ListStoreBaseActionController.startAction(
        name: 'ListStoreBase.setRefreshingError');
    try {
      return super.setRefreshingError(value);
    } finally {
      _$ListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nextTodoTitle: ${nextTodoTitle},
isLoading: ${isLoading},
isError: ${isError},
errorMessage: ${errorMessage},
isRefreshing: ${isRefreshing},
isRefreshingError: ${isRefreshingError},
isFormValid: ${isFormValid}
    ''';
  }
}
