sealed class AppFailure {
  final String message;

  const AppFailure(this.message);
}

final class NetworkFailure extends AppFailure {
  const NetworkFailure(super.message);
}

final class UnknownFailure extends AppFailure {
  const UnknownFailure(super.message);
}
