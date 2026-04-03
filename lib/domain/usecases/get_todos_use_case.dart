import '../../core/error/app_failure.dart';
import '../../core/result/simple_result.dart';
import '../entities/todo_entity.dart';
import '../repositories/todo_repository.dart';

class GetTodosUseCase {
  final TodoRepository _repository;

  const GetTodosUseCase(this._repository);

  Future<Result<List<TodoEntity>, AppFailure>> call() {
    return _repository.getTodos();
  }
}
