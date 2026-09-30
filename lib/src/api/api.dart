/// Objetos JSON compartilhados da API HTTP.
///
/// Campos, `fromJson`/`toJson` e os decimais do fio. Sem Flutter, Shelf
/// nem Postgres. Lógica que não muda o JSON fica em `extension` no app
/// ou no backend.
///
/// Cada pasta agrupa os objetos de uma frente da API. `core/` guarda o que
/// todas reaproveitam: instantes, decimais, página, erro, endereço e enums.
library;

export 'access/access.dart';
export 'access/audit_log.dart';
export 'auth/auth.dart';
export 'auth/user.dart';
export 'auth/user_session.dart';
export 'auth/validate_recovery_code_request.dart';
export 'cash/cash_method_total.dart';
export 'cash/cash_movement.dart';
export 'cash/cash_register.dart';
export 'cash/cash_session.dart';
export 'cash/cash_summary.dart';
export 'cash/close_cash_session_request.dart';
export 'cash/create_cash_register_request.dart';
export 'cash/open_cash_session_request.dart';
export 'cash/payment_method.dart';
export 'cash/record_cash_movement_request.dart';
export 'catalog/catalog.dart';
export 'core/address.dart';
export 'core/api_error.dart';
export 'core/api_time.dart';
export 'core/page.dart';
export 'core/scaled_amount.dart';
export 'core/wire_enums.dart';
export 'installation/installation.dart';
export 'installation/installation_api.dart';
export 'invoice/invoice.dart';
export 'party/party.dart';
export 'receivable/receivable.dart';
export 'report/report.dart';
export 'service_order/service_order.dart';
export 'stock/stock.dart';
export 'store/store.dart';
