import 'package:base_objects/src/api/core/api_time.dart';
import 'package:base_objects/src/api/core/wire_enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'service_order_commands.g.dart';

/// Linha do histórico de status.
@JsonSerializable()
final class ServiceOrderStatusChange {
  /// Cria a linha.
  const new({
    required this.id,
    required this.serviceOrderId,
    required this.toStatus,
    required this.changedAt,
    this.fromStatus,
    this.notes,
    this.changedBy,
    this.changedByName,
  });

  /// Lê a linha.
  factory fromJson(Map<String, dynamic> json) => _$ServiceOrderStatusChangeFromJson(json);

  /// UUID.
  final String id;

  /// Ordem.
  final String serviceOrderId;

  /// Status anterior. `null` na abertura.
  final ServiceOrderStatus? fromStatus;

  /// Novo status.
  final ServiceOrderStatus toStatus;

  /// Observação, ou `null`.
  final String? notes;

  /// Autor, ou `null`.
  final String? changedBy;

  /// Nome do autor, ou `null`.
  final String? changedByName;

  /// Momento.
  final ApiInstant changedAt;

  /// Serializa a linha.
  Map<String, dynamic> toJson() => _$ServiceOrderStatusChangeToJson(this);
}

/// Corpo de `POST .../approve`.
@JsonSerializable()
final class ApproveServiceOrderRequest {
  /// Cria o corpo.
  const new({required this.approvedByName});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$ApproveServiceOrderRequestFromJson(json);

  /// Nome de quem autorizou.
  final String approvedByName;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$ApproveServiceOrderRequestToJson(this);
}

/// Corpo de `POST .../reject`.
@JsonSerializable()
final class RejectServiceOrderRequest {
  /// Cria o corpo.
  const new({required this.rejectionReason});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$RejectServiceOrderRequestFromJson(json);

  /// Motivo.
  final String rejectionReason;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$RejectServiceOrderRequestToJson(this);
}

/// Corpo de `POST .../status`.
@JsonSerializable()
final class ChangeServiceOrderStatusRequest {
  /// Cria o corpo.
  const new({required this.status, this.notes});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$ChangeServiceOrderStatusRequestFromJson(json);

  /// Novo status. `delivered` e `cancelled` têm rota própria.
  final ServiceOrderStatus status;

  /// Observação, ou `null`.
  final String? notes;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$ChangeServiceOrderStatusRequestToJson(this);
}

/// Corpo de `PUT .../technician`.
@JsonSerializable()
final class AssignTechnicianRequest {
  /// Cria o corpo.
  const new({required this.technicianId});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$AssignTechnicianRequestFromJson(json);

  /// Técnico com vínculo na loja.
  final String technicianId;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$AssignTechnicianRequestToJson(this);
}

/// Corpo de `POST .../service-orders/{id}/cancel`.
@JsonSerializable()
final class CancelServiceOrderRequest {
  /// Cria o corpo.
  const new({required this.reason});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$CancelServiceOrderRequestFromJson(json);

  /// Motivo.
  final String reason;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$CancelServiceOrderRequestToJson(this);
}
