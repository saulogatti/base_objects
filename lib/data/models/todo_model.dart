import '../../domain/entities/todo_entity.dart';

class TodoModel {
  final String id;
  final String title;
  final bool completed;

  const TodoModel({required this.id, required this.title, required this.completed});

  TodoEntity toEntity() {
    return TodoEntity(id: id, title: title, completed: completed);
  }

  TodoModel copyWith({String? id, String? title, bool? completed}) {
    return TodoModel(id: id ?? this.id, title: title ?? this.title, completed: completed ?? this.completed);
  }
}
