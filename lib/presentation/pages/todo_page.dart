import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/todo/todo_bloc.dart';
import '../widgets/todo_list_widget.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Base Template Flutter')),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.errorMessage != null) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(state.errorMessage!, textAlign: TextAlign.center),
              ),
            );
          }

          return TodoListWidget(todos: state.todos);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.read<TodoBloc>().add(const TodoEvent.refreshed()),
        icon: const Icon(Icons.refresh),
        label: const Text('Atualizar'),
      ),
    );
  }
}
