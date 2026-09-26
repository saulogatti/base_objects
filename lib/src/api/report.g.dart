// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks, unused_element, inference_failure_on_collection_literal

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnalyticsPoint _$AnalyticsPointFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AnalyticsPoint', json, ($checkedConvert) {
      final val = AnalyticsPoint(
        label: $checkedConvert('label', (v) => v as String),
        salesValue: $checkedConvert('salesValue', (v) => MoneyAmount.fromJson(v)),
        productsCount: $checkedConvert('productsCount', (v) => (v as num).toInt()),
        purchaseValue: $checkedConvert(
          'purchaseValue',
          (v) => v == null ? null : MoneyAmount.fromJson(v),
        ),
        productId: $checkedConvert('productId', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$AnalyticsPointToJson(AnalyticsPoint instance) => <String, dynamic>{
  'label': instance.label,
  'salesValue': instance.salesValue.toJson(),
  'purchaseValue': instance.purchaseValue?.toJson(),
  'productsCount': instance.productsCount,
  'productId': instance.productId,
};

const _$AnalyticsPointJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'label': {'type': 'string', 'description': 'Data `YYYY-MM-DD` ou nome do produto.'},
    'salesValue': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Soma das notas de saída confirmadas.',
    },
    'purchaseValue': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Soma das notas de entrada confirmadas, ou `null` sem permissão.',
    },
    'productsCount': {'type': 'integer', 'description': 'Quantidade de itens movimentados.'},
    'productId': {'type': 'string', 'description': 'Produto, só em `by-product`.'},
  },
  'required': ['label', 'salesValue', 'productsCount'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
  },
};

ReportOverview _$ReportOverviewFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ReportOverview', json, ($checkedConvert) {
      final val = ReportOverview(
        salesTotal: $checkedConvert('salesTotal', (v) => MoneyAmount.fromJson(v)),
        averageTicket: $checkedConvert('averageTicket', (v) => MoneyAmount.fromJson(v)),
        invoiceCount: $checkedConvert('invoiceCount', (v) => (v as num).toInt()),
        exitInvoiceCount: $checkedConvert('exitInvoiceCount', (v) => (v as num).toInt()),
        entryInvoiceCount: $checkedConvert('entryInvoiceCount', (v) => (v as num).toInt()),
        productsBelowMinimum: $checkedConvert('productsBelowMinimum', (v) => (v as num).toInt()),
        purchasesTotal: $checkedConvert(
          'purchasesTotal',
          (v) => v == null ? null : MoneyAmount.fromJson(v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ReportOverviewToJson(ReportOverview instance) => <String, dynamic>{
  'salesTotal': instance.salesTotal.toJson(),
  'purchasesTotal': instance.purchasesTotal?.toJson(),
  'averageTicket': instance.averageTicket.toJson(),
  'invoiceCount': instance.invoiceCount,
  'exitInvoiceCount': instance.exitInvoiceCount,
  'entryInvoiceCount': instance.entryInvoiceCount,
  'productsBelowMinimum': instance.productsBelowMinimum,
};

const _$ReportOverviewJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'salesTotal': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Soma das notas de saída confirmadas.',
    },
    'purchasesTotal': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Soma das notas de entrada, ou `null` sem `report:financial`.',
    },
    'averageTicket': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Ticket médio das saídas.'},
    'invoiceCount': {'type': 'integer', 'description': 'Notas confirmadas (entrada + saída).'},
    'exitInvoiceCount': {'type': 'integer', 'description': 'Notas de saída confirmadas.'},
    'entryInvoiceCount': {'type': 'integer', 'description': 'Notas de entrada confirmadas.'},
    'productsBelowMinimum': {
      'type': 'integer',
      'description': 'SKUs com saldo no mínimo ou abaixo.',
    },
  },
  'required': [
    'salesTotal',
    'averageTicket',
    'invoiceCount',
    'exitInvoiceCount',
    'entryInvoiceCount',
    'productsBelowMinimum',
  ],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
  },
};

ReportInvoiceRef _$ReportInvoiceRefFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ReportInvoiceRef', json, ($checkedConvert) {
      final val = ReportInvoiceRef(
        id: $checkedConvert('id', (v) => v as String),
        number: $checkedConvert('number', (v) => (v as num).toInt()),
        type: $checkedConvert('type', (v) => $enumDecode(_$InvoiceTypeEnumMap, v)),
        status: $checkedConvert('status', (v) => $enumDecode(_$InvoiceStatusEnumMap, v)),
        issueDate: $checkedConvert('issueDate', (v) => CalendarDate.fromJson(v)),
        totalValue: $checkedConvert('totalValue', (v) => MoneyAmount.fromJson(v)),
        customerId: $checkedConvert('customerId', (v) => v as String?),
        supplierId: $checkedConvert('supplierId', (v) => v as String?),
        customerName: $checkedConvert('customerName', (v) => v as String?),
        supplierName: $checkedConvert('supplierName', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$ReportInvoiceRefToJson(ReportInvoiceRef instance) => <String, dynamic>{
  'id': instance.id,
  'number': instance.number,
  'type': _$InvoiceTypeEnumMap[instance.type]!,
  'status': _$InvoiceStatusEnumMap[instance.status]!,
  'issueDate': instance.issueDate.toJson(),
  'totalValue': instance.totalValue.toJson(),
  'customerId': instance.customerId,
  'supplierId': instance.supplierId,
  'customerName': instance.customerName,
  'supplierName': instance.supplierName,
};

const _$ReportInvoiceRefJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID da nota.'},
    'number': {'type': 'integer', 'description': 'Número sequencial.'},
    'type': {'type': 'object', 'description': 'Entrada ou saída.'},
    'status': {'type': 'object', 'description': 'Situação.'},
    'issueDate': {r'$ref': r'#/$defs/CalendarDate', 'description': 'Emissão.'},
    'totalValue': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Total da nota.'},
    'customerId': {'type': 'string', 'description': 'Cliente, ou `null`.'},
    'supplierId': {'type': 'string', 'description': 'Fornecedor, ou `null`.'},
    'customerName': {'type': 'string', 'description': 'Nome do cliente, ou `null`.'},
    'supplierName': {'type': 'string', 'description': 'Nome do fornecedor, ou `null`.'},
  },
  'required': ['id', 'number', 'type', 'status', 'issueDate', 'totalValue'],
  r'$defs': {
    'CalendarDate': {'type': 'object', 'properties': {}},
    'MoneyAmount': {'type': 'object', 'properties': {}},
  },
};

const _$InvoiceTypeEnumMap = {InvoiceType.entry: 'entry', InvoiceType.exit: 'exit'};

const _$InvoiceStatusEnumMap = {
  InvoiceStatus.draft: 'draft',
  InvoiceStatus.confirmed: 'confirmed',
  InvoiceStatus.cancelled: 'cancelled',
};

ReportInvoiceItemRef _$ReportInvoiceItemRefFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ReportInvoiceItemRef', json, ($checkedConvert) {
      final val = ReportInvoiceItemRef(
        id: $checkedConvert('id', (v) => v as String),
        productId: $checkedConvert('productId', (v) => v as String),
        description: $checkedConvert('description', (v) => v as String),
        quantity: $checkedConvert('quantity', (v) => QuantityAmount.fromJson(v)),
        unitPrice: $checkedConvert('unitPrice', (v) => MoneyAmount.fromJson(v)),
        discount: $checkedConvert('discount', (v) => MoneyAmount.fromJson(v)),
        totalValue: $checkedConvert('totalValue', (v) => MoneyAmount.fromJson(v)),
        unitCost: $checkedConvert('unitCost', (v) => v == null ? null : MoneyAmount.fromJson(v)),
      );
      return val;
    });

Map<String, dynamic> _$ReportInvoiceItemRefToJson(ReportInvoiceItemRef instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'description': instance.description,
      'quantity': instance.quantity.toJson(),
      'unitPrice': instance.unitPrice.toJson(),
      'unitCost': instance.unitCost?.toJson(),
      'discount': instance.discount.toJson(),
      'totalValue': instance.totalValue.toJson(),
    };

const _$ReportInvoiceItemRefJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID do item.'},
    'productId': {'type': 'string', 'description': 'Produto.'},
    'description': {'type': 'string', 'description': 'Descrição congelada.'},
    'quantity': {r'$ref': r'#/$defs/QuantityAmount', 'description': 'Quantidade, escala 3.'},
    'unitPrice': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Preço unitário.'},
    'unitCost': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Custo unitário, ou `null` sem permissão.',
    },
    'discount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Desconto do item.'},
    'totalValue': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Total do item.'},
  },
  'required': ['id', 'productId', 'description', 'quantity', 'unitPrice', 'discount', 'totalValue'],
  r'$defs': {
    'QuantityAmount': {'type': 'object', 'properties': {}},
    'MoneyAmount': {'type': 'object', 'properties': {}},
  },
};

ProductInvoiceMovement _$ProductInvoiceMovementFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ProductInvoiceMovement', json, ($checkedConvert) {
      final val = ProductInvoiceMovement(
        invoice: $checkedConvert(
          'invoice',
          (v) => ReportInvoiceRef.fromJson(v as Map<String, dynamic>),
        ),
        item: $checkedConvert(
          'item',
          (v) => ReportInvoiceItemRef.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ProductInvoiceMovementToJson(ProductInvoiceMovement instance) =>
    <String, dynamic>{'invoice': instance.invoice.toJson(), 'item': instance.item.toJson()};

const _$ProductInvoiceMovementJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'invoice': {r'$ref': r'#/$defs/ReportInvoiceRef', 'description': 'Nota.'},
    'item': {r'$ref': r'#/$defs/ReportInvoiceItemRef', 'description': 'Item.'},
  },
  'required': ['invoice', 'item'],
  r'$defs': {
    'CalendarDate': {'type': 'object', 'properties': {}},
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'ReportInvoiceRef': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID da nota.'},
        'number': {'type': 'integer', 'description': 'Número sequencial.'},
        'type': {'type': 'object', 'description': 'Entrada ou saída.'},
        'status': {'type': 'object', 'description': 'Situação.'},
        'issueDate': {r'$ref': r'#/$defs/CalendarDate', 'description': 'Emissão.'},
        'totalValue': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Total da nota.'},
        'customerId': {'type': 'string', 'description': 'Cliente, ou `null`.'},
        'supplierId': {'type': 'string', 'description': 'Fornecedor, ou `null`.'},
        'customerName': {'type': 'string', 'description': 'Nome do cliente, ou `null`.'},
        'supplierName': {'type': 'string', 'description': 'Nome do fornecedor, ou `null`.'},
      },
      'required': ['id', 'number', 'type', 'status', 'issueDate', 'totalValue'],
    },
    'QuantityAmount': {'type': 'object', 'properties': {}},
    'ReportInvoiceItemRef': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID do item.'},
        'productId': {'type': 'string', 'description': 'Produto.'},
        'description': {'type': 'string', 'description': 'Descrição congelada.'},
        'quantity': {r'$ref': r'#/$defs/QuantityAmount', 'description': 'Quantidade, escala 3.'},
        'unitPrice': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Preço unitário.'},
        'unitCost': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Custo unitário, ou `null` sem permissão.',
        },
        'discount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Desconto do item.'},
        'totalValue': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Total do item.'},
      },
      'required': [
        'id',
        'productId',
        'description',
        'quantity',
        'unitPrice',
        'discount',
        'totalValue',
      ],
    },
  },
};

ProductMovementSummary _$ProductMovementSummaryFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ProductMovementSummary', json, ($checkedConvert) {
      final val = ProductMovementSummary(
        totalEntryQuantity: $checkedConvert('totalEntryQuantity', (v) => (v as num).toInt()),
        totalExitQuantity: $checkedConvert('totalExitQuantity', (v) => (v as num).toInt()),
        totalEntryValue: $checkedConvert('totalEntryValue', (v) => MoneyAmount.fromJson(v)),
        totalExitValue: $checkedConvert('totalExitValue', (v) => MoneyAmount.fromJson(v)),
        balanceQuantity: $checkedConvert('balanceQuantity', (v) => (v as num).toInt()),
        balanceValue: $checkedConvert('balanceValue', (v) => MoneyAmount.fromJson(v)),
      );
      return val;
    });

Map<String, dynamic> _$ProductMovementSummaryToJson(ProductMovementSummary instance) =>
    <String, dynamic>{
      'totalEntryQuantity': instance.totalEntryQuantity,
      'totalExitQuantity': instance.totalExitQuantity,
      'totalEntryValue': instance.totalEntryValue.toJson(),
      'totalExitValue': instance.totalExitValue.toJson(),
      'balanceQuantity': instance.balanceQuantity,
      'balanceValue': instance.balanceValue.toJson(),
    };

const _$ProductMovementSummaryJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'totalEntryQuantity': {'type': 'integer', 'description': 'Quantidade de entrada.'},
    'totalExitQuantity': {'type': 'integer', 'description': 'Quantidade de saída.'},
    'totalEntryValue': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor de entrada.'},
    'totalExitValue': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor de saída.'},
    'balanceQuantity': {'type': 'integer', 'description': 'Saldo de quantidade no período.'},
    'balanceValue': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Saldo de valor no período.'},
  },
  'required': [
    'totalEntryQuantity',
    'totalExitQuantity',
    'totalEntryValue',
    'totalExitValue',
    'balanceQuantity',
    'balanceValue',
  ],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
  },
};

ProductMovementsReport _$ProductMovementsReportFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ProductMovementsReport', json, ($checkedConvert) {
      final val = ProductMovementsReport(
        categoryName: $checkedConvert('categoryName', (v) => v as String),
        entries: $checkedConvert(
          'entries',
          (v) => (v as List<dynamic>)
              .map((e) => ProductInvoiceMovement.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        exits: $checkedConvert(
          'exits',
          (v) => (v as List<dynamic>)
              .map((e) => ProductInvoiceMovement.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        summary: $checkedConvert(
          'summary',
          (v) => ProductMovementSummary.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ProductMovementsReportToJson(ProductMovementsReport instance) =>
    <String, dynamic>{
      'categoryName': instance.categoryName,
      'entries': instance.entries.map((e) => e.toJson()).toList(),
      'exits': instance.exits.map((e) => e.toJson()).toList(),
      'summary': instance.summary.toJson(),
    };

const _$ProductMovementsReportJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'categoryName': {
      'type': 'string',
      'description': 'Nome da categoria, ou texto vazio sem categoria.',
    },
    'entries': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/ProductInvoiceMovement'},
      'description': 'Entradas.',
    },
    'exits': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/ProductInvoiceMovement'},
      'description': 'Saídas.',
    },
    'summary': {r'$ref': r'#/$defs/ProductMovementSummary', 'description': 'Totais.'},
  },
  'required': ['categoryName', 'entries', 'exits', 'summary'],
  r'$defs': {
    'CalendarDate': {'type': 'object', 'properties': {}},
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'ReportInvoiceRef': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID da nota.'},
        'number': {'type': 'integer', 'description': 'Número sequencial.'},
        'type': {'type': 'object', 'description': 'Entrada ou saída.'},
        'status': {'type': 'object', 'description': 'Situação.'},
        'issueDate': {r'$ref': r'#/$defs/CalendarDate', 'description': 'Emissão.'},
        'totalValue': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Total da nota.'},
        'customerId': {'type': 'string', 'description': 'Cliente, ou `null`.'},
        'supplierId': {'type': 'string', 'description': 'Fornecedor, ou `null`.'},
        'customerName': {'type': 'string', 'description': 'Nome do cliente, ou `null`.'},
        'supplierName': {'type': 'string', 'description': 'Nome do fornecedor, ou `null`.'},
      },
      'required': ['id', 'number', 'type', 'status', 'issueDate', 'totalValue'],
    },
    'QuantityAmount': {'type': 'object', 'properties': {}},
    'ReportInvoiceItemRef': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID do item.'},
        'productId': {'type': 'string', 'description': 'Produto.'},
        'description': {'type': 'string', 'description': 'Descrição congelada.'},
        'quantity': {r'$ref': r'#/$defs/QuantityAmount', 'description': 'Quantidade, escala 3.'},
        'unitPrice': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Preço unitário.'},
        'unitCost': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Custo unitário, ou `null` sem permissão.',
        },
        'discount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Desconto do item.'},
        'totalValue': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Total do item.'},
      },
      'required': [
        'id',
        'productId',
        'description',
        'quantity',
        'unitPrice',
        'discount',
        'totalValue',
      ],
    },
    'ProductInvoiceMovement': {
      'type': 'object',
      'properties': {
        'invoice': {r'$ref': r'#/$defs/ReportInvoiceRef', 'description': 'Nota.'},
        'item': {r'$ref': r'#/$defs/ReportInvoiceItemRef', 'description': 'Item.'},
      },
      'required': ['invoice', 'item'],
    },
    'ProductMovementSummary': {
      'type': 'object',
      'properties': {
        'totalEntryQuantity': {'type': 'integer', 'description': 'Quantidade de entrada.'},
        'totalExitQuantity': {'type': 'integer', 'description': 'Quantidade de saída.'},
        'totalEntryValue': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor de entrada.'},
        'totalExitValue': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor de saída.'},
        'balanceQuantity': {'type': 'integer', 'description': 'Saldo de quantidade no período.'},
        'balanceValue': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Saldo de valor no período.',
        },
      },
      'required': [
        'totalEntryQuantity',
        'totalExitQuantity',
        'totalEntryValue',
        'totalExitValue',
        'balanceQuantity',
        'balanceValue',
      ],
    },
  },
};

ServiceOrdersReport _$ServiceOrdersReportFromJson(Map<String, dynamic> json) => $checkedCreate(
  'ServiceOrdersReport',
  json,
  ($checkedConvert) {
    final val = ServiceOrdersReport(
      openedCount: $checkedConvert('openedCount', (v) => (v as num).toInt()),
      deliveredCount: $checkedConvert('deliveredCount', (v) => (v as num).toInt()),
      cancelledCount: $checkedConvert('cancelledCount', (v) => (v as num).toInt()),
      laborTotal: $checkedConvert('laborTotal', (v) => MoneyAmount.fromJson(v)),
      partsTotal: $checkedConvert('partsTotal', (v) => MoneyAmount.fromJson(v)),
      averageDurationHours: $checkedConvert('averageDurationHours', (v) => (v as num?)?.toDouble()),
    );
    return val;
  },
);

Map<String, dynamic> _$ServiceOrdersReportToJson(ServiceOrdersReport instance) => <String, dynamic>{
  'openedCount': instance.openedCount,
  'deliveredCount': instance.deliveredCount,
  'cancelledCount': instance.cancelledCount,
  'averageDurationHours': instance.averageDurationHours,
  'laborTotal': instance.laborTotal.toJson(),
  'partsTotal': instance.partsTotal.toJson(),
};

const _$ServiceOrdersReportJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'openedCount': {'type': 'integer', 'description': 'Ordens abertas no período.'},
    'deliveredCount': {'type': 'integer', 'description': 'Ordens entregues no período.'},
    'cancelledCount': {'type': 'integer', 'description': 'Ordens canceladas no período.'},
    'averageDurationHours': {
      'type': 'number',
      'description': 'Duração média em horas, ou `null` sem amostra.',
    },
    'laborTotal': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Faturamento de mão de obra.'},
    'partsTotal': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Faturamento de peças.'},
  },
  'required': ['openedCount', 'deliveredCount', 'cancelledCount', 'laborTotal', 'partsTotal'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
  },
};

FinancialByMethod _$FinancialByMethodFromJson(Map<String, dynamic> json) =>
    $checkedCreate('FinancialByMethod', json, ($checkedConvert) {
      final val = FinancialByMethod(
        paymentMethodId: $checkedConvert('paymentMethodId', (v) => v as String),
        methodName: $checkedConvert('methodName', (v) => v as String),
        amount: $checkedConvert('amount', (v) => MoneyAmount.fromJson(v)),
        feeAmount: $checkedConvert('feeAmount', (v) => MoneyAmount.fromJson(v)),
        netAmount: $checkedConvert('netAmount', (v) => MoneyAmount.fromJson(v)),
      );
      return val;
    });

Map<String, dynamic> _$FinancialByMethodToJson(FinancialByMethod instance) => <String, dynamic>{
  'paymentMethodId': instance.paymentMethodId,
  'methodName': instance.methodName,
  'amount': instance.amount.toJson(),
  'feeAmount': instance.feeAmount.toJson(),
  'netAmount': instance.netAmount.toJson(),
};

const _$FinancialByMethodJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'paymentMethodId': {'type': 'string', 'description': 'Forma.'},
    'methodName': {'type': 'string', 'description': 'Nome da forma.'},
    'amount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Bruto.'},
    'feeAmount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Taxas.'},
    'netAmount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Líquido.'},
  },
  'required': ['paymentMethodId', 'methodName', 'amount', 'feeAmount', 'netAmount'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
  },
};

FinancialReport _$FinancialReportFromJson(Map<String, dynamic> json) =>
    $checkedCreate('FinancialReport', json, ($checkedConvert) {
      final val = FinancialReport(
        revenue: $checkedConvert('revenue', (v) => MoneyAmount.fromJson(v)),
        fees: $checkedConvert('fees', (v) => MoneyAmount.fromJson(v)),
        net: $checkedConvert('net', (v) => MoneyAmount.fromJson(v)),
        cost: $checkedConvert('cost', (v) => MoneyAmount.fromJson(v)),
        margin: $checkedConvert('margin', (v) => MoneyAmount.fromJson(v)),
        byMethod: $checkedConvert(
          'byMethod',
          (v) => (v as List<dynamic>)
              .map((e) => FinancialByMethod.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$FinancialReportToJson(FinancialReport instance) => <String, dynamic>{
  'revenue': instance.revenue.toJson(),
  'fees': instance.fees.toJson(),
  'net': instance.net.toJson(),
  'cost': instance.cost.toJson(),
  'margin': instance.margin.toJson(),
  'byMethod': instance.byMethod.map((e) => e.toJson()).toList(),
};

const _$FinancialReportJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'revenue': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Receita bruta.'},
    'fees': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Taxas.'},
    'net': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Líquido.'},
    'cost': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Custo da mercadoria.'},
    'margin': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Margem.'},
    'byMethod': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/FinancialByMethod'},
      'description': 'Receita por forma.',
    },
  },
  'required': ['revenue', 'fees', 'net', 'cost', 'margin', 'byMethod'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'FinancialByMethod': {
      'type': 'object',
      'properties': {
        'paymentMethodId': {'type': 'string', 'description': 'Forma.'},
        'methodName': {'type': 'string', 'description': 'Nome da forma.'},
        'amount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Bruto.'},
        'feeAmount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Taxas.'},
        'netAmount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Líquido.'},
      },
      'required': ['paymentMethodId', 'methodName', 'amount', 'feeAmount', 'netAmount'],
    },
  },
};
