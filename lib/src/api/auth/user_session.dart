import 'package:base_objects/src/api/auth/auth.dart';
import 'package:base_objects/src/api/auth/user.dart';
import 'package:base_objects/src/api/store/store.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_session.g.dart';

/// Objeto JSON `session` (`API.md` §2.1).
@JsonSerializable()
final class UserSession {
  /// Cria a sessão.
  const new({required this.user, required this.availableStores, this.activeStore, this.membership});

  /// Lê a sessão.
  factory fromJson(Map<String, dynamic> json) => _$UserSessionFromJson(json);

  static const schema = _$UserSessionJsonSchema;

  /// Usuário autenticado.
  final User user;

  /// Loja ativa. `null` quando o superadmin ainda não cadastrou loja.
  final Store? activeStore;

  /// Lojas com vínculo.
  final List<Store> availableStores;

  /// Vínculo na loja ativa. `null` junto com [activeStore].
  final StoreMembership? membership;

  /// Serializa a sessão.
  Map<String, dynamic> toJson() => _$UserSessionToJson(this);
}
