import 'package:mobx/mobx.dart';
part 'todo_store.g.dart';

class TodoStore = TodoStoreBase with _$TodoStore;

abstract class TodoStoreBase with Store {
  TodoStoreBase(this.title);

  final String title;

  @observable
  bool isDone = false;

  @action
  void toggle() => isDone = !isDone;
}
