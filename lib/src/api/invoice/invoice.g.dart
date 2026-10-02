// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'invoice.dart';

ConfirmInvoiceResult _$ConfirmInvoiceResultToJson(
  ConfirmInvoiceResult instance,
) => <String, dynamic>{
  'invoice': instance.invoice.toJson(),
  'receivables': instance.receivables.map((e) => e.toJson()).toList(),
  'cashSummary': instance.cashSummary?.toJson(),
};
