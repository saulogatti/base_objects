/// Chaves do envelope de erro da `API.md` §1.8.
abstract final class ApiErrorJsonKeys {
  static const error = 'error';
  static const code = 'code';
  static const message = 'message';
  static const details = 'details';
  static const requestId = 'requestId';
  static const fields = 'fields';
  static const field = 'field';
  static const value = 'value';
  static const retryAfterSeconds = 'retryAfterSeconds';
}
