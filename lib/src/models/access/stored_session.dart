/// Sessão gravada no dispositivo para ser retomada sem nova autenticação.
///
/// {@category modelos}
/// {@subCategory Sistema}
///
/// Guarda apenas quem entrou, em qual loja e quando. **Não** carrega senha nem
/// hash: retomar a sessão reconstrói usuário, lojas e permissões a partir do
/// banco, e quem não existe mais ou foi desativado não volta.
class StoredSession {
  /// Cria a sessão gravada.
  const new({
    required this.userId,
    required this.activeStoreId,
    required this.signedInAt,
  });

  /// Reconstrói a partir do JSON gravado.
  ///
  /// Lança [FormatException] quando falta campo ou o tipo não confere.
  factory fromJson(Map<String, dynamic> json) {
    final userId = json['user_id'];
    final activeStoreId = json['active_store_id'];
    final signedInAt = json['signed_in_at'];
    if (userId is! String || activeStoreId is! String || signedInAt is! String) {
      throw const FormatException('Sessão gravada inválida.');
    }
    return StoredSession(
      userId: userId,
      activeStoreId: activeStoreId,
      signedInAt: DateTime.parse(signedInAt),
    );
  }

  /// Usuário autenticado.
  final String userId;

  /// Loja ativa no momento da gravação.
  final String activeStoreId;

  /// Momento da autenticação com senha. Não muda ao trocar de loja: é dele que
  /// se conta o prazo máximo da sessão.
  final DateTime signedInAt;

  /// Copia trocando a loja ativa.
  StoredSession withActiveStore(String storeId) =>
      StoredSession(userId: userId, activeStoreId: storeId, signedInAt: signedInAt);

  /// Serializa para gravação.
  Map<String, dynamic> toJson() => {
    'user_id': userId,
    'active_store_id': activeStoreId,
    'signed_in_at': signedInAt.toUtc().toIso8601String(),
  };
}
