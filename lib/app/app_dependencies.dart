import '../core/environment/environment.dart';
import '../data/data_sources/remote/todo_remote_data_source.dart';
import '../data/repositories/todo_repository_impl.dart';
import '../domain/repositories/todo_repository.dart';
import '../domain/usecases/get_todos_use_case.dart';
import '../domain/usecases/toggle_todo_use_case.dart';

class AppDependencies {
  final Environment environment;
  final TodoRepository todoRepository;
  final GetTodosUseCase getTodosUseCase;
  final ToggleTodoUseCase toggleTodoUseCase;

  const AppDependencies({
    required this.environment,
    required this.todoRepository,
    required this.getTodosUseCase,
    required this.toggleTodoUseCase,
  });

  factory AppDependencies.bootstrap() {
    final environment = Environment.fromEnv();
    final todoRemoteDataSource = TodoRemoteDataSource(apiBaseUrl: environment.apiBaseUrl);

    final todoRepository = TodoRepositoryImpl(remoteDataSource: todoRemoteDataSource);

    return AppDependencies(
      environment: environment,
      todoRepository: todoRepository,
      getTodosUseCase: GetTodosUseCase(todoRepository),
      toggleTodoUseCase: ToggleTodoUseCase(todoRepository),
    );
  }
}
