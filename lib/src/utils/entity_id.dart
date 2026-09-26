import 'package:uuid/data.dart';
import 'package:uuid/uuid.dart';

/// Geração e validação de identificadores de entidade (UUID v7).
///
/// {@category utilitarios}
///
/// Todo registro do sistema usa UUID v7 como identificador, gerado **no app**
/// antes de persistir ou enviar à API. Duas consequências práticas:
///
/// - O v7 carrega o timestamp no prefixo, então ordena por tempo de criação e
///   não fragmenta o índice do banco como o v4.
/// - Como o ID nasce no cliente, reenviar a mesma operação após falha de rede
///   não cria registro duplicado — o banco rejeita a chave repetida.
///
/// ```dart
/// final produto = Product(id: EntityId.generate(), name: 'Capinha', ...);
/// ```
///
/// Veja também:
/// - `DefaultObject` — base das entidades, onde o ID vive
abstract final class EntityId {
  static const Uuid _uuid = Uuid();

  /// Identificador vazio: entidade ainda não persistida.
  ///
  /// Use [isPersisted] para checar, em vez de comparar com esta constante.
  static const String empty = '';

  /// Último milissegundo usado no prefixo de tempo, por isolate.
  static int _lastMillis = 0;

  /// Gera um novo identificador UUID v7, sempre maior que o anterior.
  ///
  /// O v7 padrão preenche o que vem depois do milissegundo com bytes
  /// aleatórios: dois IDs gerados no mesmo milissegundo saem em ordem
  /// arbitrária. Aqui o prefixo nunca se repete — quando o relógio não
  /// avançou, usa o milissegundo seguinte ao último (método de monotonia
  /// previsto na RFC 9562, §6.2).
  ///
  /// É o que permite usar o ID como desempate em listagens ordenadas por
  /// horário. No Windows, `DateTime.now()` avança em passos de 1 a 15 ms, e
  /// operações em sequência empatam no horário com frequência.
  static String generate() {
    final now = DateTime.timestamp().millisecondsSinceEpoch;
    _lastMillis = now > _lastMillis ? now : _lastMillis + 1;
    return _uuid.v7(config: V7Options(_lastMillis, null));
  }

  /// Indica que o identificador corresponde a um registro já persistido.
  ///
  /// Considera persistido todo ID não vazio e sintaticamente válido.
  static bool isPersisted(String? id) => id != null && id.isNotEmpty && isValid(id);

  /// Valida o formato do identificador.
  ///
  /// Aceita qualquer versão de UUID: registros migrados do banco antigo podem
  /// ter recebido v4 no script de conversão.
  static bool isValid(String id) => Uuid.isValidUUID(fromString: id);

  /// Retorna [id] quando já for um identificador válido, ou gera um novo.
  ///
  /// Útil em `fromJson` e nos construtores de domínio, onde o ID pode vir
  /// ausente (entidade nova) ou preenchido (entidade vinda do banco/API).
  static String orGenerate(String? id) => isPersisted(id) ? id! : generate();
}
