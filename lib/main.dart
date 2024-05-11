import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_mobx/screens/login_screen.dart';
import 'package:todo_mobx/stores/login_store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<LoginStore>(
      create: (context) => LoginStore(),
      //dispose: (context, value) => value.dispose(),
      child: MaterialApp(
        title: 'MobX Tutorial',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.deepPurpleAccent,
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: Colors.deepPurpleAccent,
            selectionColor: Colors.deepPurpleAccent,
            selectionHandleColor: Colors.deepPurpleAccent,
          ),
          scaffoldBackgroundColor: Colors.deepPurpleAccent,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
