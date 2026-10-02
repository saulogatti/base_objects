import 'package:base_objects/src/api/core/api_time.dart';
import 'package:base_objects/src/api/party/party.dart';
import 'package:base_objects/src/api/service_order/service_order_entry.dart';
import 'package:json_annotation/json_annotation.dart';

part 'open_service_order_request.g.dart';

/// Corpo de `POST .../service-orders`.
@JsonSerializable()
final class OpenServiceOrderRequest {
  /// Cria o corpo.
  const new({
    required this.id,
    required this.customerId,
    required this.device,
    required this.reportedIssue,
    required this.hasBackup,
    this.accessories,
    this.deviceCondition,
    this.unlockCode,
    this.promisedDate,
  });

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$OpenServiceOrderRequestFromJson(json);

  /// UUID da ordem.
  final String id;

  /// Cliente.
  final String customerId;

  /// Aparelho. Gravado por upsert do `device.id`.
  final Device device;

  /// Defeito relatado.
  final String reportedIssue;

  /// Acessórios, ou `null`.
  final String? accessories;

  /// Checklist, ou `null`.
  final DeviceEntryCondition? deviceCondition;

  /// Senha ou padrão, ou `null`.
  final String? unlockCode;

  /// Se foi feito backup.
  final bool hasBackup;

  /// Prazo prometido, ou `null`.
  final CalendarDate? promisedDate;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$OpenServiceOrderRequestToJson(this);
}
