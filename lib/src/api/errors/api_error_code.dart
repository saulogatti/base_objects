import 'dart:io';

/// Catálogo de códigos de erro da `API.md` §1.8, com o HTTP correspondente.
enum ApiErrorCode {
  /// Corpo ou query inválidos.
  validationError(HttpStatus.badRequest, 'VALIDATION_ERROR'),

  /// Sem token ou token inválido.
  unauthenticated(HttpStatus.unauthorized, 'UNAUTHENTICATED'),

  /// Access token expirado.
  tokenExpired(HttpStatus.unauthorized, 'TOKEN_EXPIRED'),

  /// E-mail ou senha inválidos (mensagem genérica).
  invalidCredentials(HttpStatus.unauthorized, 'INVALID_CREDENTIALS'),

  /// Sem permissão ou sem vínculo com a loja.
  forbidden(HttpStatus.forbidden, 'FORBIDDEN'),

  /// Usuário desativado.
  userInactive(HttpStatus.forbidden, 'USER_INACTIVE'),

  /// Sem vínculo com a loja pedida (ou com nenhuma loja).
  noStoreAccess(HttpStatus.forbidden, 'NO_STORE_ACCESS'),

  /// Recurso inexistente (ou de outra loja).
  notFound(HttpStatus.notFound, 'NOT_FOUND'),

  /// Unicidade violada.
  conflict(HttpStatus.conflict, 'CONFLICT'),

  /// `POST /installation` quando já existe um `SystemUserData` (`API.md` §4.2).
  alreadyInstalled(HttpStatus.conflict, 'ALREADY_INSTALLED'),

  /// Mesmo id de operação com dados diferentes.
  idempotencyConflict(HttpStatus.conflict, 'IDEMPOTENCY_CONFLICT'),

  /// Exclusão bloqueada por referência.
  inUse(HttpStatus.conflict, 'IN_USE'),

  /// Regra de negócio genérica.
  businessRule(HttpStatus.unprocessableEntity, 'BUSINESS_RULE'),

  /// Saída deixaria o estoque negativo.
  insufficientStock(HttpStatus.unprocessableEntity, 'INSUFFICIENT_STOCK'),

  /// Operação exige turno de caixa aberto.
  cashSessionRequired(HttpStatus.unprocessableEntity, 'CASH_SESSION_REQUIRED'),

  /// Terminal já possui turno aberto (`API.md` §12.2).
  cashSessionAlreadyOpen(HttpStatus.conflict, 'CASH_SESSION_ALREADY_OPEN'),

  /// Bloqueio por tentativas de login.
  loginLocked(HttpStatus.locked, 'LOGIN_LOCKED'),

  /// Limite de requisições.
  rateLimited(HttpStatus.tooManyRequests, 'RATE_LIMITED'),

  /// Código de recuperação inválido, expirado ou já usado.
  invalidRecoveryCode(HttpStatus.unprocessableEntity, 'INVALID_RECOVERY_CODE'),

  /// Falha inesperada. A mensagem ao cliente é genérica.
  internalError(HttpStatus.internalServerError, 'INTERNAL_ERROR');

  new(this.statusCode, this.wireCode);

  /// Status HTTP da §1.8.
  final int statusCode;

  /// Código em `SCREAMING_SNAKE` do corpo JSON.
  final String wireCode;
}

/// Mensagens genéricas prontas para o usuário final.
abstract final class ApiErrorMessages {
  /// Recurso inexistente ou de outra loja.
  static const notFound = 'Recurso não encontrado.';

  /// Falha inesperada; não inclui detalhe técnico.
  static const internalError = 'Ocorreu um erro interno. Tente novamente.';

  /// Token ausente ou inválido.
  static const unauthenticated = 'Autenticação necessária.';

  /// Access token expirado.
  static const tokenExpired = 'Token expirado.';

  /// Credencial errada ou e-mail inexistente — mesma mensagem de propósito.
  static const invalidCredentials = 'E-mail ou senha inválidos.';

  /// Sem permissão na loja.
  static const forbidden = 'Você não tem permissão para esta operação.';

  /// Conta desativada.
  static const userInactive = 'Usuário desativado. Procure o responsável.';

  /// Sem vínculo com a loja, ou sem nenhuma loja.
  static const noStoreAccess = 'Você não tem acesso a esta loja.';

  /// Sem vínculo com nenhuma loja na entrada.
  static const noStoreAccessAtLogin =
      'Usuário sem acesso a nenhuma loja. Peça a vinculação a um responsável.';

  /// Unicidade violada.
  static const conflict = 'Já existe um registro com este valor.';

  /// Rede já possui `SystemUserData`.
  static const alreadyInstalled = 'Esta rede já foi instalada.';

  /// `GET /installation/system-user` antes de `POST /installation`.
  static const systemNotInstalled = 'Sistema não instalado.';

  /// Header `X-Installation-Key` ausente ou divergente.
  static const invalidInstallationKey = 'Chave de instalação inválida.';

  /// Exclusão bloqueada por referência.
  static const inUse =
      'Este registro está em uso e não pode ser excluído. Desative-o em vez de apagar.';

  /// Mesmo id de operação com payload diferente.
  static const idempotencyConflict = 'Esta operação já foi executada com dados diferentes.';

  /// Bloqueio por tentativas.
  static const loginLocked = 'Muitas tentativas incorretas. Tente novamente em instantes.';

  /// Refresh inválido, expirado ou já revogado.
  static const refreshRejected = 'Refresh token inválido ou expirado.';

  /// Código de recuperação inválido, expirado ou consumido.
  static const invalidRecoveryCode = 'Código inválido ou expirado.';

  /// Limite de pedidos de recuperação.
  static const rateLimited = 'Muitas solicitações. Tente novamente em instantes.';

  /// Operação exige turno aberto do operador do token.
  static const cashSessionRequired = 'Selecione um turno aberto desta loja.';

  /// Turno aberto pertence a outro operador.
  static const cashSessionOtherOperator =
      'O turno pertence a outro operador. Feche e abra um novo turno para trocar o responsável.';

  /// Índice `cash_sessions_one_open`.
  static const cashSessionAlreadyOpen = 'Este terminal já possui turno aberto.';

  /// Fechamento com diferença sem justificativa.
  static const cashCloseDifferenceNotes = 'Justifique a falta ou sobra no fechamento.';

  /// Terminal inativo ou de outra loja na abertura.
  static const cashRegisterUnavailable = 'Terminal indisponível nesta loja.';
}
