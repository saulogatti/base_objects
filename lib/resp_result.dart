/// Resultado de falha, com o erro em [failure].
final class Failure<S, F> extends Result<S, F> {
  /// Cria a falha com [failure].
  const new(this.failure);

  /// Causa da falha.
  final F failure;

  @override
  String toString() => 'Failure(failure: $failure)';
}

/// Resultado de uma operação que pode ter sucesso ([Success]) ou falha ([Failure]).
///
/// [S] é o tipo de [Success.value]. [F] é o tipo de [Failure.failure].
/// Use [fold] ou um `switch` para tratar os dois casos.
sealed class Result<S, F> {
  /// Cria a base comum de [Success] e [Failure].
  const new();

  /// Encapsula [failure] em um [Failure].
  factory failure(F failure) = Failure<S, F>;

  /// Encapsula [value] em um [Success].
  factory success(S value) = Success<S, F>;

  /// Erro quando este resultado é [Failure], ou `null` em caso de sucesso.
  F? get failureOrNull => isFailure ? (this as Failure<S, F>).failure : null;

  /// Valor quando este resultado é [Success], ou `null` em caso de falha.
  S? get getOrNull => isSuccess ? (this as Success<S, F>).value : null;

  /// Indica se este resultado é um [Failure].
  bool get isFailure => this is Failure<S, F>;

  /// Indica se este resultado é um [Success].
  bool get isSuccess => this is Success<S, F>;

  /// Aplica [onSuccess] ou [onFailure] conforme o caso, obrigando o tratamento exaustivo.
  T fold<T extends Object?>({
    required T Function(S value) onSuccess,
    required T Function(F failure) onFailure,
  }) {
    return switch (this) {
      Success<S, F>(value: final S v) => onSuccess(v),
      Failure<S, F>(failure: final F f) => onFailure(f),
    };
  }

  /// Encaminha para [fold], na ordem posicional `(sucesso, falha)`.
  ///
  /// Preferível usar [fold] em código novo.
  T? when<T extends Object>({
    required T? Function(S value) onSuccess,
    required T? Function(F failure) onFailure,
  }) => fold<T?>(onSuccess: onSuccess, onFailure: onFailure);

  /// Executa [block] e devolve [Success], ou [Failure] se lançar.
  ///
  /// [Exception] é preservada; qualquer outro erro vira `Exception(e.toString())`.
  static Future<Result<T, Exception>> guard<T extends Object>(Future<T> Function() block) async {
    try {
      return Result<T, Exception>.success(await block());
    } on Exception catch (e) {
      return Result<T, Exception>.failure(e);
    } catch (e) {
      return Result<T, Exception>.failure(Exception(e.toString()));
    }
  }

  /// Executa [action] e devolve [Success], ou [Failure] se lançar um erro do tipo [F].
  ///
  /// Outras exceções não são capturadas.
  ///
  /// ```dart
  /// final result = await Result.resultAsync<MyType, MyException>(() async {
  ///   return await fetchData();
  /// });
  /// ```
  static Future<Result<T, F>> resultAsync<T, F extends Object>(Future<T> Function() action) async {
    try {
      final T value = await action();
      return Result<T, F>.success(value);
    } on F catch (e) {
      return Result<T, F>.failure(e);
    }
  }
}

/// Resultado de sucesso, com o valor em [value].
final class Success<S, F> extends Result<S, F> {
  /// Cria o sucesso com [value].
  const new(this.value);

  /// Valor produzido pela operação.
  final S value;

  @override
  String toString() => 'Success(value: $value)';
}

/// Operações de transformação e efeito colateral sobre um [Result].
extension ResultExtension<S, F> on Result<S, F> {
  /// Encadeia [mapper] quando este resultado é sucesso; propaga a falha caso contrário.
  Result<R, F> flatMap<R extends Object>(Result<R, F> Function(S value) mapper) {
    return fold<Result<R, F>>(onSuccess: mapper, onFailure: Result<R, F>.failure);
  }

  /// Encadeia [mapper] quando este resultado é falha; propaga o sucesso caso contrário.
  Result<S, R> flatMapError<R>(Result<S, R> Function(F error) mapper) {
    return fold(onSuccess: Result<S, R>.success, onFailure: (error) => mapper(error));
  }

  /// Converte o valor de sucesso com [mapper]; propaga a falha caso contrário.
  Result<R, F> map<R extends Object>(R Function(S value) mapper) {
    return fold(
      onSuccess: (value) => Result<R, F>.success(mapper(value)),
      onFailure: Result<R, F>.failure,
    );
  }

  /// Converte o erro com [mapper]; propaga o sucesso caso contrário.
  Result<S, R> mapError<R>(R Function(F failure) mapper) {
    return fold(
      onSuccess: Result<S, R>.success,
      onFailure: (failure) => Result<S, R>.failure(mapper(failure)),
    );
  }

  /// Executa [effect] se este resultado for falha e devolve o mesmo [Result].
  Result<S, F> onFailure(void Function(F failure) effect) {
    if (this case Failure<S, F>(failure: final Object? f)) {
      effect(f as F);
    }
    return this;
  }

  /// Executa [effect] se este resultado for sucesso e devolve o mesmo [Result].
  Result<S, F> onSuccess(void Function(S value) effect) {
    if (this case Success<S, F>(value: final Object v)) {
      effect(v as S);
    }
    return this;
  }
}
