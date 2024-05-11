import 'package:mobx/mobx.dart';
import 'package:todo_mobx/stores/todo_store.dart';
part 'list_store.g.dart';

class ListStore = ListStoreBase with _$ListStore;

abstract class ListStoreBase with Store {
  @observable
  String nextTodoTitle = '';

  @action
  void setNextTodoTitle(String title) => nextTodoTitle = title;

  ObservableList<TodoStore> todos = ObservableList<TodoStore>();

  @action
  void addTodo() {
    todos.insert(0, TodoStore(nextTodoTitle)); // adicionado no inicio da lista
    nextTodoTitle = ''; // Para limpar o campo de texto
  }

  @action
  void removeTodo(TodoStore todo) => todos.remove(todo);

  @action
  void clearTodos() => todos.clear();

  @computed
  bool get isFormValid => nextTodoTitle.isNotEmpty;

  @observable
  bool isLoading = false;

  @action
  void setLoading(bool value) => isLoading = value;

  @observable
  bool isError = false;

  @action
  void setError(bool value) => isError = value;

  @observable
  String errorMessage = '';

  @action
  void setErrorMessage(String value) => errorMessage = value;

  @observable
  bool isRefreshing = false;

  @action
  void setRefreshing(bool value) => isRefreshing = value;

  @observable
  bool isRefreshingError = false;

  @action
  void setRefreshingError(bool value) => isRefreshingError = value;
}
