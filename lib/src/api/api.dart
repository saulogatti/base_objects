/// Objetos JSON compartilhados da API HTTP.
///
/// Campos, `fromJson`/`toJson` e os decimais do fio. Sem Flutter, Shelf
/// nem Postgres. Lógica que não muda o JSON fica em `extension` no app
/// ou no backend.
library;

export 'access.dart';
export 'api_error.dart';
export 'api_time.dart';
export 'audit_log.dart';
export 'cash.dart';
export 'catalog.dart';
export 'installation/installation.dart';
export 'installation/installation_api.dart';
export 'invoice.dart';
export 'login/auth.dart';
export 'page.dart';
export 'party.dart';
export 'receivable.dart';
export 'report.dart';
export 'scaled_amount.dart';
export 'service_order.dart';
export 'stock.dart';
export 'store.dart';
export 'wire_enums.dart';
