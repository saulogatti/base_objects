# Objetos da API

Este documento resume os tipos JSON compartilhados pelo app `admin_loja` e
pela API `backend_admin_loja`. As classes Dart exportadas por
`package:base_objects/base_objects.dart` são a referência para nomes de campos,
tipos e conversão JSON. Este documento não substitui a especificação das rotas,
permissões ou regras de negócio da API.

## 1. Convenções do formato

### 1.1. Campos e serialização

Os objetos de request e response são DTOs imutáveis. Seus métodos `fromJson` e
`toJson` são gerados com `json_serializable` e verificam os tipos recebidos.
Campos obrigatórios, opcionais e anuláveis são definidos individualmente em
cada tipo: `null` só tem o significado documentado para aquele campo.

### 1.2. Datas e valores decimais

- Instantes com fuso são representados por `ApiInstant` e serializados em UTC.
- Datas de calendário, sem horário ou fuso, são representadas por
  `CalendarDate` no formato `YYYY-MM-DD`. Datas inexistentes são recusadas.
- `MoneyAmount` representa dinheiro com duas casas decimais.
- `QuantityAmount` representa quantidades com três casas decimais.
- `PercentAmount` representa percentuais com três casas decimais.
- `HoursAmount` representa horas com duas casas decimais.

Os quatro tipos decimais são serializados como strings. Seus parsers recusam
valores que não sejam literais decimais válidos para a escala do tipo; não há
conversão intermediária para `double`. Consulte `scaled_amount.dart` e
`api_time.dart` para as regras completas de parsing e normalização.

### 1.3. Endereço

`Address` reúne `street`, `zipCode`, `neighborhood`, `city` e `state`. Todos os
campos são anuláveis.

### 1.7. Paginação

`ApiPage<T>` representa o envelope de listagem `{ items, total, limit, offset }`.
`items` contém a página corrente; `total` é a quantidade que corresponde ao
filtro, independentemente do limite aplicado.

### 1.8. Erros

`ApiErrorResponse` representa o envelope `{ error }`, cujo conteúdo é um
`ApiError` com `code`, `message`, `requestId` e `details` opcional. `details`
aceita um objeto JSON ou `null`.

## 2. Autenticação e sessão

Os tipos de autenticação ficam em `api/auth/`:

- `LoginRequest`, `AuthSession` e `SessionResponse` representam o login e os
  dados de sessão.
- `RefreshTokenRequest` contém o token usado em refresh e logout.
- `PasswordRecoveryRequest`, `PasswordRecoveryAccepted`,
  `ValidateRecoveryCodeRequest` e `ResetPasswordRequest` representam as etapas
  de recuperação de senha. A resposta do pedido não inclui o código.
- `User`, `UserSession`, `SessionRole` e `StoreMembership` descrevem o usuário,
  as lojas disponíveis e o vínculo com a loja ativa.
- `SwitchStoreRequest` contém a loja que será ativada.

O DTO público `User` não contém hash nem senha.

## 3. Instalação

`InstallationRequest` contém os dados do sistema e a senha inicial do
administrador. `InstallationStatus` informa se a instalação já foi concluída.
`InstallationApi` declara as operações usadas pelo handler de instalação e por
stubs de teste; não implementa transporte HTTP.

## 5. Lojas

`Store` representa uma loja, incluindo dados cadastrais, endereço, estado de
atividade e instantes de criação e alteração. O identificador e os instantes
podem ser nulos em corpos de escrita; a resposta os preenche.

## 6. Usuários, papéis e permissões

Os tipos em `api/access/` descrevem usuários e controles de acesso:

- `Role` representa um papel do catálogo, com permissões e instante de criação.
- `Permission` descreve uma permissão por código, recurso e ação.
- `UserUpsertRequest`, `ActiveFlagRequest`, `ChangePasswordRequest` e
  `AssignRoleRequest` representam operações sobre usuários e seus vínculos.
- `PermissionOverrideRequest` altera uma exceção de permissão.

`SessionRole` é o papel incluído na sessão e não contém `createdAt`.
`StoreMembership.permissions` contém as permissões efetivas; em `SessionRole`,
`permissions` contém as permissões do papel.

## 7. Clientes, aparelhos e fornecedores

Os tipos em `api/party/` são:

- `Customer`: cadastro de cliente, com CPF, contatos, endereço e observações.
- `Device`: aparelho associado a um cliente, com marca, modelo e dados
  opcionais de identificação.
- `Supplier`: fornecedor. O mesmo cadastro é chamado de empresa no app.

`DeviceDisplay` fornece o nome curto do aparelho para exibição.

## 8. Catálogo

Os tipos em `api/catalog/` separam o catálogo compartilhado das configurações
por loja:

- `ProductCategory` e `LaborService` representam categorias e serviços.
- `ProductData` representa um produto da rede; não inclui saldo de estoque.
- `StoreProduct` e `StoreService` representam as visões específicas de uma
  loja, incluindo preço efetivo e estado de atividade.
- `StoreProductSettingsRequest` e `StoreServiceSettingsRequest` alteram as
  configurações da loja. Preço `null` significa herdar o preço do catálogo, não
  preço zero.
- `ProductCodeAvailability`, `ProductCodeIssued` e `CategoryUsage` representam
  respostas auxiliares do catálogo.

Campos de custo podem ser `null` quando o usuário não tem a permissão
correspondente.

## 9. Estoque

Os tipos em `api/stock/` descrevem:

- `StockBalance`: saldo e mínimo de um produto na loja.
- `StockMovement`: movimento de estoque com quantidade, motivo e referência
  opcionais.
- `StockAdjustmentRequest` e `StockAdjustmentItem`: ajuste de saldo. Cada item
  informa `countedQuantity` ou `delta`, nunca ambos.
- `StockTransfer` e seus tipos de request/item: transferência entre lojas e
  seus estados de criação, recebimento e cancelamento.

Quantidades de estoque são inteiros; quantidades decimais de itens em notas e
ordens de serviço usam `QuantityAmount`.

## 10. Notas e recebimentos

Os tipos em `api/invoice/` descrevem notas de entrada e saída:

- `Invoice` é a nota persistida; `InvoiceDraft` é o corpo editável.
- `InvoiceItem` inclui totais calculados; `InvoiceItemDraft` contém os dados
  enviados para o cálculo.
- `CheckoutRequest`, `CheckoutPaymentRequest` e
  `CheckoutInstallmentRequest` descrevem o recebimento e seu cronograma.
- `ConfirmInvoiceRequest` e `ConfirmInvoiceResult` descrevem a confirmação.
- `CancelInvoiceRequest`, `RefundPreview` e `RefundMethodAmount` descrevem o
  cancelamento e a prévia de estorno.

Totais calculados no servidor não devem ser tratados como entrada editável. Os
campos de custo podem ser `null` quando o acesso a custos não está autorizado.

## 11. Ordens de serviço

Os tipos em `api/service_order/` representam ordens, itens, checklist de entrada,
histórico de status e linhas da fila. Os requests cobrem abertura, diagnóstico,
aprovação, recusa, alteração de status, atribuição de técnico, entrega e
cancelamento. `DeliverServiceOrderResult` reúne a ordem entregue, a nota gerada
e as parcelas resultantes.

`isOverdue` e `isUnderWarranty` são valores calculados no servidor. Senhas ou
padrões de desbloqueio podem ser omitidos da listagem e das respostas conforme
as permissões da API.

## 12. Caixa

Os tipos em `api/cash/` representam terminais, turnos, movimentos, formas de
pagamento e resumos. `OpenCashSessionRequest`,
`CloseCashSessionRequest` e `RecordCashMovementRequest` representam operações
de abertura, fechamento e lançamento. Valores monetários e taxas usam os tipos
decimais descritos na seção 1.2.

## 13. Contas a receber

`Receivable` representa uma parcela a receber e seu estado de pagamento,
cancelamento e vencimento. `SettleReceivableRequest` contém os dados para baixar
uma parcela. `isOverdue` é calculado no servidor.

## 14. Relatórios e auditoria

Os tipos em `api/report/` são respostas de relatórios:

- `AnalyticsPoint` e `ReportOverview` representam pontos e totais consolidados.
- `ProductMovementsReport`, `ProductMovementSummary`,
  `ProductInvoiceMovement` e os tipos `ReportInvoice*` detalham movimentos de
  produtos e suas notas.
- `ServiceOrdersReport` resume ordens de serviço.
- `FinancialReport` e `FinancialByMethod` detalham valores por forma de
  pagamento.
- `AuditEntry` representa uma entrada de auditoria, incluindo os estados JSON
  anterior e posterior quando disponíveis.

Campos financeiros podem ser nulos ou omitidos conforme as permissões de
relatório.

## Biblioteca de domínio

Os tipos de `lib/src/models/` que são exportados pela biblioteca principal,
como `Cpf` e `Cnpj`, pertencem ao modelo de domínio legado. Eles não são DTOs da
API nem definem o formato do fio. `package:base_objects/base_apis.dart` também
exporta modelos anteriores à biblioteca principal.
