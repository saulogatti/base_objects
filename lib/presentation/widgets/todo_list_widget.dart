import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/todo_entity.dart';
import '../bloc/todo/todo_bloc.dart';

class TodoListWidget extends StatelessWidget {
  final List<TodoEntity> todos;

  const TodoListWidget({required this.todos, super.key});

  @override
  Widget build(BuildContext context) {
    if (todos.isEmpty) {
      return const Center(child: Text('Sem tarefas no momento.'));
    }

    return ListView.separated(
      padding: const EdgeInsets.all(12),
      itemCount: todos.length,
      separatorBuilder: (context, index) => const SizedBox(height: 8),
      itemBuilder: (_, index) {
        final todo = todos[index];

        return Card(
          child: CheckboxListTile(
            value: todo.completed,
            title: Text(todo.title),
            onChanged: (_) {
              context.read<TodoBloc>().add(TodoEvent.toggled(todo.id));
            },
          ),
        );
      },
    );
  }
}
