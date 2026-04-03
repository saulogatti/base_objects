import '../../core/error/app_failure.dart';
import '../../core/result/simple_result.dart';
import '../entities/todo_entity.dart';

abstract class TodoRepository {
  Future<Result<List<TodoEntity>, AppFailure>> getTodos();
  Future<Result<List<TodoEntity>, AppFailure>> toggleTodo(String id);
}
