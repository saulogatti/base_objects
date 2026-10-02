// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'deliver_service_order_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliverServiceOrderResult _$DeliverServiceOrderResultFromJson(Map<String, dynamic> json) =>
    $checkedCreate('DeliverServiceOrderResult', json, ($checkedConvert) {
      final val = DeliverServiceOrderResult(
        serviceOrder: $checkedConvert(
          'serviceOrder',
          (v) => ServiceOrder.fromJson(v as Map<String, dynamic>),
        ),
        invoice: $checkedConvert('invoice', (v) => Invoice.fromJson(v as Map<String, dynamic>)),
        receivables: $checkedConvert(
          'receivables',
          (v) => (v as List<dynamic>)
              .map((e) => Receivable.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$DeliverServiceOrderResultToJson(DeliverServiceOrderResult instance) =>
    <String, dynamic>{
      'serviceOrder': instance.serviceOrder.toJson(),
      'invoice': instance.invoice.toJson(),
      'receivables': instance.receivables.map((e) => e.toJson()).toList(),
    };

const _$DeliverServiceOrderResultJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'serviceOrder': {r'$ref': r'#/$defs/ServiceOrder', 'description': 'Ordem entregue.'},
    'invoice': {r'$ref': r'#/$defs/Invoice', 'description': 'Nota de saída confirmada.'},
    'receivables': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/Receivable'},
      'description': 'Parcelas geradas.',
    },
  },
  'required': ['serviceOrder', 'invoice', 'receivables'],
  r'$defs': {
    'DeviceEntryCondition': {
      'type': 'object',
      'properties': {
        'screenCracked': {'type': 'boolean', 'description': 'Se a tela está trincada.'},
        'touchWorking': {'type': 'boolean', 'description': 'Se o toque funciona.'},
        'housingDamaged': {'type': 'boolean', 'description': 'Se a carcaça está danificada.'},
        'waterDamage': {'type': 'boolean', 'description': 'Se há dano por líquido.'},
        'batterySwollen': {'type': 'boolean', 'description': 'Se a bateria está inchada.'},
        'buttonsWorking': {'type': 'boolean', 'description': 'Se os botões funcionam.'},
        'cameraWorking': {'type': 'boolean', 'description': 'Se a câmera funciona.'},
        'chargingWorking': {'type': 'boolean', 'description': 'Se a carga funciona.'},
        'notes': {'type': 'string', 'description': 'Observação, ou `null`.'},
      },
      'required': [
        'screenCracked',
        'touchWorking',
        'housingDamaged',
        'waterDamage',
        'batterySwollen',
        'buttonsWorking',
        'cameraWorking',
        'chargingWorking',
      ],
    },
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'ApiInstant': {
      'type': 'object',
      'properties': {
        'value': {'type': 'string', 'format': 'date-time', 'description': 'Instante em UTC.'},
      },
      'required': ['value'],
    },
    'CalendarDate': {'type': 'object', 'properties': {}},
    'QuantityAmount': {'type': 'object', 'properties': {}},
    'ServiceOrderItem': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'serviceOrderId': {'type': 'string', 'description': 'Ordem dona do item.'},
        'productId': {'type': 'string', 'description': 'Peça, ou `null`.'},
        'serviceId': {'type': 'string', 'description': 'Mão de obra, ou `null`.'},
        'description': {'type': 'string', 'description': 'Descrição.'},
        'quantity': {r'$ref': r'#/$defs/QuantityAmount', 'description': 'Quantidade, escala 3.'},
        'unitPrice': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Preço unitário.'},
        'unitCost': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Custo unitário, ou `null`.'},
        'totalValue': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Total calculado.'},
        'createdAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Inclusão.'},
      },
      'required': [
        'id',
        'serviceOrderId',
        'description',
        'quantity',
        'unitPrice',
        'totalValue',
        'createdAt',
      ],
    },
    'ServiceOrder': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'storeId': {'type': 'string', 'description': 'Loja.'},
        'number': {'type': 'integer', 'description': 'Sequencial por loja.'},
        'customerId': {'type': 'string', 'description': 'Cliente.'},
        'deviceId': {'type': 'string', 'description': 'Aparelho.'},
        'status': {'type': 'object', 'description': 'Situação.'},
        'technicianId': {'type': 'string', 'description': 'Técnico, ou `null`.'},
        'reportedIssue': {'type': 'string', 'description': 'Defeito relatado.'},
        'accessories': {'type': 'string', 'description': 'Acessórios, ou `null`.'},
        'deviceCondition': {
          r'$ref': r'#/$defs/DeviceEntryCondition',
          'description': 'Checklist de entrada, ou `null`.',
        },
        'unlockCode': {
          'type': 'string',
          'description': 'Senha ou padrão. `null` na listagem e sem a permissão de atualização.',
        },
        'hasBackup': {'type': 'boolean', 'description': 'Se foi feito backup.'},
        'diagnosis': {'type': 'string', 'description': 'Diagnóstico, ou `null`.'},
        'quoteValue': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor orçado, ou `null`.'},
        'quoteSentAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Envio do orçamento, ou `null`.',
        },
        'approvedAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Aprovação, ou `null`.'},
        'approvedByName': {
          'type': 'string',
          'description': 'Quem autorizou pelo cliente, ou `null`.',
        },
        'rejectionReason': {'type': 'string', 'description': 'Motivo da recusa, ou `null`.'},
        'promisedDate': {
          r'$ref': r'#/$defs/CalendarDate',
          'description': 'Prazo prometido, ou `null`.',
        },
        'repairNotes': {'type': 'string', 'description': 'Notas de execução, ou `null`.'},
        'totalValue': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Soma dos itens.'},
        'partsTotal': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Soma das peças.'},
        'laborTotal': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Soma da mão de obra.'},
        'warrantyDays': {'type': 'integer', 'description': 'Garantia em dias.'},
        'deliveredAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Entrega, ou `null`.'},
        'deliveredToName': {'type': 'string', 'description': 'Quem retirou, ou `null`.'},
        'warrantyExpiresAt': {
          r'$ref': r'#/$defs/CalendarDate',
          'description': 'Fim da garantia, ou `null`.',
        },
        'invoiceId': {'type': 'string', 'description': 'Nota gerada na entrega, ou `null`.'},
        'isOverdue': {
          'type': 'boolean',
          'description': 'Se o prazo estourou e a ordem segue aberta.',
        },
        'isUnderWarranty': {'type': 'boolean', 'description': 'Se a garantia ainda vale.'},
        'items': {
          'type': 'array',
          'items': {r'$ref': r'#/$defs/ServiceOrderItem'},
          'description': 'Itens. Lista vazia na fila.',
        },
        'createdBy': {'type': 'string', 'description': 'Autor da abertura, ou `null`.'},
        'createdAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Criação.'},
        'updatedAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Última alteração.'},
      },
      'required': [
        'id',
        'storeId',
        'number',
        'customerId',
        'deviceId',
        'status',
        'reportedIssue',
        'hasBackup',
        'totalValue',
        'partsTotal',
        'laborTotal',
        'warrantyDays',
        'isOverdue',
        'isUnderWarranty',
        'items',
        'createdAt',
        'updatedAt',
      ],
    },
    'InvoiceItem': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID do item.'},
        'productId': {'type': 'string', 'description': 'Peça, ou `null`.'},
        'serviceId': {'type': 'string', 'description': 'Mão de obra, ou `null`.'},
        'description': {'type': 'string', 'description': 'Nome congelado.'},
        'quantity': {r'$ref': r'#/$defs/QuantityAmount', 'description': 'Quantidade, escala 3.'},
        'unitPrice': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Preço unitário.'},
        'unitCost': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Custo unitário. `null` sem `product:view_cost`.',
        },
        'discount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Desconto do item.'},
        'totalValue': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Total calculado no servidor.',
        },
      },
      'required': ['id', 'description', 'quantity', 'unitPrice', 'discount', 'totalValue'],
    },
    'PercentAmount': {'type': 'object', 'properties': {}},
    'InvoicePayment': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'invoiceId': {'type': 'string', 'description': 'Nota.'},
        'paymentMethodId': {'type': 'string', 'description': 'Forma.'},
        'amount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor.'},
        'installments': {'type': 'integer', 'description': 'Número de parcelas.'},
        'cashSessionId': {'type': 'string', 'description': 'Turno, ou `null`.'},
        'checkoutId': {'type': 'string', 'description': 'Recebimento.'},
        'cashMovementId': {
          'type': 'string',
          'description': 'Movimento de caixa, ou `null` no crediário.',
        },
        'methodName': {'type': 'string', 'description': 'Nome da forma no momento do recebimento.'},
        'affectsCashDrawer': {'type': 'boolean', 'description': 'Se afetou a gaveta.'},
        'feePercent': {
          r'$ref': r'#/$defs/PercentAmount',
          'description': 'Taxa percentual, escala 3.',
        },
        'feeAmount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor da taxa.'},
        'netAmount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Líquido.'},
        'expectedSettlementAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Previsão de liquidação, ou `null`.',
        },
      },
      'required': [
        'id',
        'invoiceId',
        'paymentMethodId',
        'amount',
        'installments',
        'checkoutId',
        'methodName',
        'affectsCashDrawer',
        'feePercent',
        'feeAmount',
        'netAmount',
      ],
    },
    'Invoice': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'storeId': {'type': 'string', 'description': 'Loja. Vem do caminho, não do corpo.'},
        'number': {'type': 'integer', 'description': 'Sequencial por loja.'},
        'type': {'type': 'object', 'description': 'Entrada ou saída.'},
        'status': {'type': 'object', 'description': 'Situação. Muda só por comando.'},
        'customerId': {'type': 'string', 'description': 'Cliente, ou `null` na entrada.'},
        'supplierId': {'type': 'string', 'description': 'Fornecedor, ou `null` na saída.'},
        'customerName': {
          'type': 'string',
          'description': 'Nome do cliente na listagem, ou `null`.',
        },
        'supplierName': {
          'type': 'string',
          'description': 'Nome do fornecedor na listagem, ou `null`.',
        },
        'issueDate': {r'$ref': r'#/$defs/CalendarDate', 'description': 'Emissão.'},
        'discount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Desconto no total.'},
        'subtotal': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Soma dos itens, calculada no servidor.',
        },
        'totalValue': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Total (`subtotal` menos [discount]).',
        },
        'notes': {'type': 'string', 'description': 'Observações, ou `null`.'},
        'items': {
          'type': 'array',
          'items': {r'$ref': r'#/$defs/InvoiceItem'},
          'description': 'Itens.',
        },
        'payments': {
          'type': 'array',
          'items': {r'$ref': r'#/$defs/InvoicePayment'},
          'description': 'Pagamentos. Vazio fora da saída confirmada.',
        },
        'createdBy': {'type': 'string', 'description': 'Autor, ou `null`.'},
        'cancelledBy': {'type': 'string', 'description': 'Quem cancelou, ou `null`.'},
        'cancelledAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Cancelamento, ou `null`.'},
        'cancelReason': {'type': 'string', 'description': 'Motivo do cancelamento, ou `null`.'},
        'createdAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Criação.'},
        'updatedAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Última alteração.'},
      },
      'required': [
        'id',
        'storeId',
        'number',
        'type',
        'status',
        'issueDate',
        'discount',
        'subtotal',
        'totalValue',
        'items',
        'payments',
        'createdAt',
        'updatedAt',
      ],
    },
    'Receivable': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'storeId': {'type': 'string', 'description': 'Loja.'},
        'customerId': {'type': 'string', 'description': 'Cliente.'},
        'customerName': {
          'type': 'string',
          'description': 'Nome do cliente no momento da consulta.',
        },
        'invoiceId': {
          'type': 'string',
          'description': 'Nota de origem, ou `null` quando o SQL permite.',
        },
        'invoiceNumber': {'type': 'integer', 'description': 'Número da nota, ou `null`.'},
        'installmentNumber': {
          'type': 'integer',
          'description': 'Número da parcela, a partir de 1.',
        },
        'amount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor da parcela.'},
        'dueDate': {r'$ref': r'#/$defs/CalendarDate', 'description': 'Vencimento.'},
        'paidAmount': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Valor já pago. Na v1, zero ou o total.',
        },
        'paidAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Quitação, ou `null`.'},
        'cashMovementId': {
          'type': 'string',
          'description': 'Movimento de caixa da baixa, ou `null`.',
        },
        'cancelledAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Cancelamento, ou `null`.'},
        'cancelReason': {'type': 'string', 'description': 'Motivo do cancelamento, ou `null`.'},
        'isOverdue': {
          'type': 'boolean',
          'description': 'Se está vencida e em aberto. Calculado no servidor.',
        },
      },
      'required': [
        'id',
        'storeId',
        'customerId',
        'customerName',
        'installmentNumber',
        'amount',
        'dueDate',
        'paidAmount',
        'isOverdue',
      ],
    },
  },
};
