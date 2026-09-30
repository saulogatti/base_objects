# base_objects

Pacote Dart puro de objetos compartilhados entre o app `admin_loja` e a API
`backend_admin_loja`. Não é publicado (`publish_to: none`).

O pacote define os objetos que atravessam a API em JSON e mantém alguns modelos
de domínio legados. Não contém interface, acesso à rede nem persistência. Os
modelos de domínio em `lib/src/models/` não representam o formato do fio.

## Importação

Importe a biblioteca pública `package:base_objects/base_objects.dart` para usar
os DTOs da API, tipos de valor e modelos de domínio públicos:

```dart
import 'package:base_objects/base_objects.dart';

final session = AuthSession.fromJson(body);
final total = MoneyAmount.parse('1299.90');
```

`package:base_objects/base_apis.dart` oferece os modelos de instalação e alguns
modelos legados. Prefira a biblioteca principal quando precisar da API pública
completa.

## Formato JSON

- Campos, nomes e conversores `fromJson`/`toJson` são definidos pelos DTOs.
- A serialização é gerada com validação de tipos e conversão de datas para UTC.
- Valores monetários, quantidades, percentuais e horas trafegam como strings
  decimais, nunca como `double`. Use `MoneyAmount`, `QuantityAmount`,
  `PercentAmount` e `HoursAmount` para representar esses valores.
- `ApiInstant` representa um instante com fuso e guarda o valor em UTC;
  `CalendarDate` representa uma data sem horário no formato `YYYY-MM-DD`.
- `null` e os campos opcionais têm o significado definido por cada DTO e pelo
  contrato da API. Consulte [o contrato dos objetos da API](API.md).

Não edite arquivos `*.g.dart`: altere os tipos de origem e regenere o código
com `build_runner`.
Lógica que não altera o formato JSON pertence ao app ou ao backend; este pacote
fica restrito a validações, formatações e extensões pequenas.

## Desenvolvimento

```bash
dart pub get
dart run build_runner build
dart analyze
dart test
```

O pacote segue `analysis_options.yaml` e usa `package:test` para os testes.
