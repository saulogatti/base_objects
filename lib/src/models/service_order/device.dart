import 'package:base_objects/src/models/default/default_object.dart';

/// Aparelho de um cliente (domínio).
///
/// {@category modelos}
/// {@subCategory OrdemServico}
///
/// O aparelho pertence ao **cliente**, não à loja: ele pode deixar para
/// conserto numa unidade e buscar na outra, e o histórico de reparos do mesmo
/// aparelho precisa seguir junto — inclusive para decidir se um retorno está
/// coberto pela garantia do serviço anterior.
///
/// [imei] é o campo de busca no balcão. É por ele que se acha a ordem quando o
/// cliente não lembra o número.
class Device extends DefaultObject {
  /// Cria um aparelho.
  new({
    required this.customerId,
    required this.brand,
    required this.model,
    this.color,
    this.imei,
    this.serialNumber,
    this.notes,
    super.id,
    super.createdAt,
    super.updatedAt,
  });

  /// Fabricante, ex.: 'Samsung'.
  final String brand;

  /// Cor do aparelho, útil para conferência na retirada.
  final String? color;

  /// Dono do aparelho.
  final String customerId;

  /// IMEI, principal chave de busca no atendimento.
  final String? imei;

  /// Modelo, ex.: 'Galaxy S21'.
  final String model;

  /// Observações sobre o aparelho.
  final String? notes;

  /// Número de série, quando aplicável.
  final String? serialNumber;

  /// Descrição curta para listagem, ex.: 'Samsung Galaxy S21'.
  String get displayName => '$brand $model';

  /// Cria uma cópia com os campos informados alterados.
  Device copyWith({
    String? brand,
    String? model,
    String? color,
    String? imei,
    String? serialNumber,
    String? notes,
    DateTime? updatedAt,
  }) => Device(
    id: id,
    customerId: customerId,
    brand: brand ?? this.brand,
    model: model ?? this.model,
    color: color ?? this.color,
    imei: imei ?? this.imei,
    serialNumber: serialNumber ?? this.serialNumber,
    notes: notes ?? this.notes,
    createdAt: createdAt,
    updatedAt: updatedAt ?? DateTime.now(),
  );

  @override
  String toString() => 'Device($displayName, imei: $imei)';
}
