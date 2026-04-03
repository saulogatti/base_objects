import '../../models/todo_model.dart';

class TodoRemoteDataSource {
  final String apiBaseUrl;
  final List<TodoModel> _todos = const [
    TodoModel(id: '1', title: 'Configurar arquitetura base', completed: true),
    TodoModel(id: '2', title: 'Criar fluxo inicial com BLoC', completed: false),
    TodoModel(id: '3', title: 'Preparar template para features', completed: false),
  ];

  const TodoRemoteDataSource({required this.apiBaseUrl});

  Future<List<TodoModel>> getTodos() async {
    await Future<void>.delayed(const Duration(milliseconds: 120));
    return _todos;
  }

  Future<List<TodoModel>> toggleTodo(String id) async {
    await Future<void>.delayed(const Duration(milliseconds: 80));

    return _todos
        .map((todo) => todo.id == id ? todo.copyWith(completed: !todo.completed) : todo)
        .toList(growable: false);
  }
}
