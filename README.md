Objetos compartilhados entre o app `admin_loja` e a API `backend_admin_loja`.

O pacote é Dart puro: sem Flutter, Shelf nem Postgres. O que entra aqui é o
que viaja no JSON — campos, `fromJson`/`toJson` (`json_serializable`) e o
formato decimal do fio. Dinheiro, quantidade e percentual são string, nunca
`double`. Lógica que não muda o JSON fica em `extension` no app ou no backend.

## API HTTP

`package:base_objects/base_objects.dart` exporta os objetos de request e
response descritos no contrato `/api/v1` (endereço, sessão, cadastros,
catálogo, estoque, notas, ordens de serviço, caixa, parcelas, relatórios e
auditoria).

```dart
final session = AuthSession.fromJson(body);
final total = MoneyAmount.parse('1299.90');
```

Os modelos de domínio que já estavam em `lib/src/models/` continuam no pacote.
Eles não são o formato do fio.

## Desenvolvimento

```bash
dart pub get
dart run build_runner build
dart analyze
dart test
```
