part of 'todo_bloc.dart';

@freezed
sealed class TodoEvent with _$TodoEvent {
  const factory TodoEvent.started() = _Started;
  const factory TodoEvent.refreshed() = _Refreshed;
  const factory TodoEvent.toggled(String id) = _Toggled;
}
