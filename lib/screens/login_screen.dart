import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:todo_mobx/screens/list_screen.dart';
import 'package:todo_mobx/stores/login_store.dart';
import 'package:todo_mobx/widgets/custom_icon_button.dart';
import 'package:todo_mobx/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginStore loginStore;
  ReactionDisposer? disposer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    loginStore = Provider.of<LoginStore>(context);
    /*
    autorun((_) {
      if (loginStore.isLoggedIn) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const ListScreen(),
          ),
        );
      }
    });*/
    disposer = reaction((_) => loginStore.isLoggedIn, (loggedIn) {
      if (loggedIn) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const ListScreen()));
      }
    });
  }

  @override
  void dispose() {
    // para fechar a reaction
    disposer?.call();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(32),
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 16,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Observer(
                      builder: (context) => CustomTextField(
                        hint: 'E-mail',
                        prefix: const Icon(Icons.account_circle),
                        textInputType: TextInputType.emailAddress,
                        onChanged: loginStore.setEmail,
                        enabled: !loginStore.loading,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Observer(
                      builder: (_) {
                        return CustomTextField(
                          hint: 'Senha',
                          prefix: const Icon(Icons.lock),
                          obscure: !loginStore.passwordVisible,
                          onChanged: loginStore.setPassword,
                          enabled: !loginStore.loading,
                          suffix: CustomIconButton(
                            radius: 32,
                            iconData: loginStore.passwordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            onTap: loginStore.togglePasswordVisibility,
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Observer(
                      builder: (context) {
                        return SizedBox(
                          height: 44,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32),
                              ),
                              backgroundColor: Theme.of(context).primaryColor,
                              disabledBackgroundColor:
                                  Theme.of(context).primaryColor.withAlpha(100),
                              foregroundColor: Colors.white,
                              disabledForegroundColor: Colors.white38,
                              textStyle: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            onPressed:
                                loginStore.loginPressed as void Function()?,
                            child: loginStore.loading
                                ? const CircularProgressIndicator(
                                    valueColor:
                                        AlwaysStoppedAnimation(Colors.white))
                                : const Text('Login'),
                          ),
                        );
                      },
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
