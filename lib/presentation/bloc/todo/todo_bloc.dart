import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/todo_entity.dart';
import '../../../domain/usecases/get_todos_use_case.dart';
import '../../../domain/usecases/toggle_todo_use_case.dart';

part 'todo_bloc.freezed.dart';
part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final GetTodosUseCase getTodosUseCase;
  final ToggleTodoUseCase toggleTodoUseCase;

  TodoBloc({required this.getTodosUseCase, required this.toggleTodoUseCase}) : super(const TodoState()) {
    on<_Started>(_onStarted);
    on<_Refreshed>(_onRefreshed);
    on<_Toggled>(_onToggled);
  }

  Future<void> _onStarted(_Started event, Emitter<TodoState> emit) async {
    await _loadTodos(emit);
  }

  Future<void> _onRefreshed(_Refreshed event, Emitter<TodoState> emit) async {
    await _loadTodos(emit);
  }

  Future<void> _loadTodos(Emitter<TodoState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));

    final result = await getTodosUseCase.call();
    result.fold(
      onSuccess: (todos) {
        emit(state.copyWith(isLoading: false, todos: todos));
      },
      onFailure: (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure.message));
      },
    );
  }

  Future<void> _onToggled(_Toggled event, Emitter<TodoState> emit) async {
    final result = await toggleTodoUseCase.call(event.id);

    result.fold(
      onSuccess: (todos) {
        emit(state.copyWith(todos: todos, errorMessage: null));
      },
      onFailure: (failure) {
        emit(state.copyWith(errorMessage: failure.message));
      },
    );
  }
}
