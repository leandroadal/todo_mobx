import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:todo_mobx/screens/login_screen.dart';
import 'package:todo_mobx/stores/list_store.dart';
import 'package:todo_mobx/stores/login_store.dart';
import 'package:todo_mobx/widgets/custom_icon_button.dart';
import 'package:todo_mobx/widgets/custom_text_field.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final ListStore listStore = ListStore();

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: const EdgeInsets.fromLTRB(32, 0, 32, 32),
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Tarefas',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 32),
                    ),
                    IconButton(
                      icon: const Icon(Icons.exit_to_app),
                      color: Colors.white,
                      onPressed: () {
                        Provider.of<LoginStore>(context, listen: false)
                            .logout();
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 16,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: <Widget>[
                        Observer(
                          builder: (_) {
                            return CustomTextField(
                              controller: controller,
                              hint: 'Tarefa',
                              onChanged: listStore.setNextTodoTitle,
                              suffix: listStore.isFormValid
                                  ? CustomIconButton(
                                      radius: 32,
                                      iconData: Icons.add,
                                      onTap: () {
                                        listStore.addTodo();
                                        //listStore.resetForm();
                                        controller.clear();
                                      },
                                    )
                                  : null,
                            );
                          },
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Expanded(
                          child: Observer(
                            key: UniqueKey(),
                            builder: (_) {
                              return ListView.separated(
                                itemCount: listStore.todos.length,
                                //shrinkWrap: true,
                                itemBuilder: (_, index) {
                                  final todo = listStore.todos[index];
                                  return Observer(builder: (_) {
                                    return ListTile(
                                      title: Text(
                                        todo.title,
                                        style: TextStyle(
                                          color: todo.isDone
                                              ? Colors.grey
                                              : Colors.black,
                                          decoration: todo.isDone
                                              ? TextDecoration.lineThrough
                                              : null,
                                        ),
                                      ),
                                      onTap: todo.toggle,
                                      trailing: IconButton(
                                        icon: const Icon(Icons.delete),
                                        onPressed: () {
                                          listStore.removeTodo(todo);
                                        },
                                      ),
                                    );
                                  });
                                },
                                separatorBuilder: (_, __) {
                                  return const Divider();
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
