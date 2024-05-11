import 'package:mobx/mobx.dart';

// Include generated file
part 'login_store.g.dart';

class LoginStore = LoginStoreBase with _$LoginStore;

// The store-class
abstract class LoginStoreBase with Store {
  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  bool passwordVisible = false;

  @observable
  bool loading = false;

  @observable
  bool isLoggedIn = false;

  @action
  void setEmail(String email) => this.email = email;

  @action
  void setPassword(String password) => this.password = password;

  @action
  void togglePasswordVisibility() => passwordVisible = !passwordVisible;

  @action
  void setLoading(bool isLoading) => loading = isLoading;

  @action
  Future<void> login() async {
    loading = true;
    await Future.delayed(const Duration(seconds: 2));
    loading = false;
    isLoggedIn = true;
    reset();
  }

  @action
  void reset() {
    email = '';
    password = '';
    passwordVisible = false;
  }

  @action
  void logout() {
    isLoggedIn = false;
    email = '';
    password = '';
    passwordVisible = false;
    loading = false;
  }

  @computed
  bool get isEmailValid => RegExp(
          r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
      .hasMatch(email);

  @computed
  bool get isPasswordValid => password.length >= 6;

  @computed
  Function? get loginPressed =>
      (isEmailValid && isPasswordValid && !loading) ? login : null;
}
