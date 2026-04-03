import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  final String apiBaseUrl;

  const Environment({required this.apiBaseUrl});

  factory Environment.fromEnv() {
    return Environment(apiBaseUrl: dotenv.env['API_BASE_URL'] ?? 'https://api.example.com');
  }
}
