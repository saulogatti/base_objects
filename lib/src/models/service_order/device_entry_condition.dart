import 'package:meta/meta.dart';

/// Checklist do estado do aparelho na entrada da ordem de serviço.
///
/// {@category modelos}
/// {@subCategory OrdemServico}
///
/// É o que protege a loja quando o cliente alega depois que a tela já estava
/// trincada. Serializado em JSON no campo `deviceCondition` da ordem.
@immutable
class DeviceEntryCondition {
  /// Cria o checklist de entrada.
  const new({
    this.screenCracked = false,
    this.touchWorking = true,
    this.housingDamaged = false,
    this.waterDamage = false,
    this.batterySwollen = false,
    this.buttonsWorking = true,
    this.cameraWorking = true,
    this.chargingWorking = true,
    this.notes,
  });

  /// Bateria inchada.
  final bool batterySwollen;

  /// Botões físicos respondendo.
  final bool buttonsWorking;

  /// Câmera funcionando.
  final bool cameraWorking;

  /// Carregamento funcionando.
  final bool chargingWorking;

  /// Carcaça amassada, riscada ou quebrada.
  final bool housingDamaged;

  /// Observação livre complementar ao checklist.
  final String? notes;

  /// Tela trincada ou quebrada na entrada.
  final bool screenCracked;

  /// Toque da tela respondendo.
  final bool touchWorking;

  /// Sinal de oxidação ou contato com líquido.
  final bool waterDamage;

  /// Indica algum dano registrado no checklist.
  bool get hasRecordedDamage => screenCracked || housingDamaged || waterDamage || batterySwollen;

  /// Cria uma cópia com os campos informados alterados.
  DeviceEntryCondition copyWith({
    bool? screenCracked,
    bool? touchWorking,
    bool? housingDamaged,
    bool? waterDamage,
    bool? batterySwollen,
    bool? buttonsWorking,
    bool? cameraWorking,
    bool? chargingWorking,
    String? notes,
  }) => DeviceEntryCondition(
    screenCracked: screenCracked ?? this.screenCracked,
    touchWorking: touchWorking ?? this.touchWorking,
    housingDamaged: housingDamaged ?? this.housingDamaged,
    waterDamage: waterDamage ?? this.waterDamage,
    batterySwollen: batterySwollen ?? this.batterySwollen,
    buttonsWorking: buttonsWorking ?? this.buttonsWorking,
    cameraWorking: cameraWorking ?? this.cameraWorking,
    chargingWorking: chargingWorking ?? this.chargingWorking,
    notes: notes ?? this.notes,
  );
}
