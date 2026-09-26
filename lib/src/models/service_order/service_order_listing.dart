import 'package:base_objects/src/models/person/customer.dart';
import 'package:base_objects/src/models/service_order/device.dart';
import 'package:base_objects/src/models/service_order/service_order.dart';

/// Ordem de serviço com cliente e aparelho resolvidos para listagem.
///
/// {@category modelos}
/// {@subCategory OrdemServico}
///
/// A fila da bancada e a busca precisam mostrar nome do cliente e do aparelho
/// sem a tela ter que juntar três consultas.
class ServiceOrderListing {
  /// Agrupa a ordem com o dono e o aparelho.
  const new({required this.order, required this.customer, required this.device});

  /// Dono do aparelho.
  final Customer customer;

  /// Aparelho em conserto.
  final Device device;

  /// Ordem de serviço.
  final ServiceOrder order;
}
