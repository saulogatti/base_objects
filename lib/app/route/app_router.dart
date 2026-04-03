import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/bloc/todo/todo_bloc.dart';
import '../../presentation/pages/todo_page.dart';
import '../app_dependencies.dart';

class AppRouter {
  final AppDependencies dependencies;

  const AppRouter({required this.dependencies});

  GoRouter get router => GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return BlocProvider(
            create: (_) => TodoBloc(
              getTodosUseCase: dependencies.getTodosUseCase,
              toggleTodoUseCase: dependencies.toggleTodoUseCase,
            )..add(const TodoEvent.started()),
            child: const TodoPage(),
          );
        },
      ),
    ],
  );
}
