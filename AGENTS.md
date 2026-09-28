# AGENTS.md

Pacote Dart compartilhado entre o app `admin_loja` e a API `backend_admin_loja`.
Não é publicado (`publish_to: none`). O que entra aqui é o que viaja no JSON.

## Escopo

- Campos, `fromJson`/`toJson` gerados pelo `json_serializable` que fazem checagem do tipo e a data sempre com UTC (`build.yaml` §1.3).
- Dinheiro, quantidade e percentual são `String`, nunca `double`.
- Modelos em `lib/src/models/` não são o formato do fio.
- Lógica que não altera o JSON fica no app ou no backend.
- Neste pacote só lógica simples: validação, formatação ou extensão pequena. Sem regra de negócio.

## Idioma

- Identificadores, nomes de arquivo e código em inglês.
- Comentários `///` e documentação de API em português.
- Siga o Effective Dart na documentação: `///` (nunca `/** */`), primeira frase curta e terminada em ponto, parágrafo seguinte separado por `///` em branco.
- Não use tags `@param`, `@return` ou `@throws`. Descreva parâmetros, retorno e erros no texto.
- Propriedades começam com frase nominal. Booleanos começam com "Se". Métodos começam com verbo na terceira pessoa.

## Reuso

Procure em `lib/` antes de criar tipo, extensão ou helper. Não duplique serialização, parsing ou validação que já exista.

## Testes

Toda lógica nova ou corrigida ganha teste em `test/` com `package:test`.

- Espelhe a pasta de `lib/` e use o sufixo `_test.dart`.
- Agrupe com `group()`, afirme com `expect()` e rode `dart test`.
- DTO que só declara campos e `fromJson`/`toJson` gerados não exige teste extra, salvo comportamento próprio.

## Sem interface

Pacote Dart puro. Proibido `flutter`, widgets, `BuildContext` e qualquer dependência de interface. Também não entram Shelf nem Postgres.

## Bug fora da tarefa

Se aparecer um bug que não faz parte do trabalho atual, não corrija no meio da tarefa. Abra uma issue no GitHub com `gh issue create`, incluindo reprodução e contexto, e continue o que foi pedido.

## Práticas Dart

- Respeite `analysis_options.yaml`: `package:lints/recommended`, casts e inferência estritos, imports `package:`, tipos de retorno explícitos, trailing commas e `prefer_const_*`.
- Não edite `*.g.dart`. Mudança de modelo passa por `dart run build_runner build`.
- DTOs imutáveis: `final class`, construtor `const`, campos `final`.
- Imports sempre `package:base_objects/...`.
- Antes de encerrar: `dart analyze` e `dart test`.
- Construtor dos objetos não precisam ter nome da classe no construtor, apenas os campos. (Deve ser chamado de `new`)
