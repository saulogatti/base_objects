import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app/app_dependencies.dart';
import 'app/app_root.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: 'assets/env/env_config.txt');

  final dependencies = AppDependencies.bootstrap();
  runApp(AppRoot(dependencies: dependencies));
}
