part of 'todo_bloc.dart';

@freezed
abstract class TodoState with _$TodoState {
  const factory TodoState({
    @Default(false) bool isLoading,
    @Default(<TodoEntity>[]) List<TodoEntity> todos,
    String? errorMessage,
  }) = _TodoState;
}
