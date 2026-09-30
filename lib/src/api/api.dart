/// Objetos JSON compartilhados da API HTTP.
///
/// Campos, `fromJson`/`toJson` e os decimais do fio. Sem Flutter, Shelf
/// nem Postgres. Lógica que não muda o JSON fica em `extension` no app
/// ou no backend.
///
/// Cada pasta agrupa os objetos de uma frente da API. `core/` guarda o que
/// todas reaproveitam: instantes, decimais, página, erro, endereço e enums.
library;

// Usuários, papéis e auditoria.
export 'access/access.dart';
export 'access/audit_log.dart';
// Autenticação e sessão.
export 'auth/auth.dart';
export 'auth/user.dart';
export 'auth/user_session.dart';
export 'auth/validate_recovery_code_request.dart';
// Cadastros.
export 'catalog/catalog.dart';
// Base comum.
export 'core/address.dart';
export 'core/api_error.dart';
export 'core/api_time.dart';
export 'core/page.dart';
export 'core/scaled_amount.dart';
export 'core/wire_enums.dart';
// Instalação.
export 'installation/installation.dart';
export 'installation/installation_api.dart';
// Operação.
export 'invoice/invoice.dart';
export 'party/party.dart';
export 'receivable/receivable.dart';
// Relatórios.
export 'report/report.dart';
export 'service_order/service_order.dart';
export 'stock/stock.dart';
export 'store/store.dart';
