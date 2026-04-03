import 'package:flutter/material.dart';

import 'app_dependencies.dart';
import 'route/app_router.dart';

class AppRoot extends StatelessWidget {
  final AppDependencies dependencies;

  const AppRoot({required this.dependencies, super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter(dependencies: dependencies).router;

    return MaterialApp.router(
      title: 'Base Template Flutter',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo), useMaterial3: true),
    );
  }
}
