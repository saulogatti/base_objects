import '../../core/error/app_failure.dart';
import '../../core/result/simple_result.dart';
import '../entities/todo_entity.dart';
import '../repositories/todo_repository.dart';

class ToggleTodoUseCase {
  final TodoRepository _repository;

  const ToggleTodoUseCase(this._repository);

  Future<Result<List<TodoEntity>, AppFailure>> call(String id) {
    return _repository.toggleTodo(id);
  }
}
