import '../../core/error/app_failure.dart';
import '../../core/result/simple_result.dart';
import '../../domain/entities/todo_entity.dart';
import '../../domain/repositories/todo_repository.dart';
import '../data_sources/remote/todo_remote_data_source.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoRemoteDataSource remoteDataSource;

  const TodoRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Result<List<TodoEntity>, AppFailure>> getTodos() async {
    try {
      final data = await remoteDataSource.getTodos();
      final entities = data.map((item) => item.toEntity()).toList(growable: false);
      return Result.success(entities);
    } catch (e) {
      return Result.failure(UnknownFailure('Falha ao carregar tarefas: ${e.toString()}'));
    }
  }

  @override
  Future<Result<List<TodoEntity>, AppFailure>> toggleTodo(String id) async {
    try {
      final data = await remoteDataSource.toggleTodo(id);
      final entities = data.map((item) => item.toEntity()).toList(growable: false);
      return Result.success(entities);
    } catch (e) {
      return Result.failure(UnknownFailure('Falha ao atualizar tarefa: ${e.toString()}'));
    }
  }
}
