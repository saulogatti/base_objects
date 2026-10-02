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
export 'access/user_upsert_request.dart';
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
export 'core/hours_amount.dart';
export 'core/money_amount.dart';
export 'core/page.dart';
export 'core/percent_amount.dart';
export 'core/quantity_amount.dart';
export 'core/scaled_amount.dart';
export 'core/wire_enums.dart';
export 'errors/api_error_code.dart';
export 'errors/api_error_json_keys.dart';
export 'errors/api_exception.dart';
export 'installation/installation.dart';
export 'installation/installation_api.dart';
export 'invoice/confirm_invoice_request.dart';
export 'invoice/confirm_invoice_result.dart';
export 'invoice/invoice.dart';
export 'invoice/invoice_checkout.dart';
export 'invoice/invoice_draft.dart';
export 'invoice/invoice_lines.dart';
export 'party/party.dart';
export 'receivable/receivable.dart';
export 'report/report.dart';
export 'service_order/deliver_service_order_request.dart';
export 'service_order/deliver_service_order_result.dart';
export 'service_order/open_service_order_request.dart';
export 'service_order/save_diagnosis_request.dart';
export 'service_order/service_order.dart';
export 'service_order/service_order_commands.dart';
export 'service_order/service_order_entry.dart';
export 'service_order/service_order_listing.dart';
export 'stock/stock.dart';
export 'store/store.dart';
