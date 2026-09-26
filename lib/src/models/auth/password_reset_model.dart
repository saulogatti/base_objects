import 'dart:async';

class RefreshTokenModel {
  /// Monta o registro com login do usuário e expiração UTC.
  new({required this.jti, required this.userLogin, required this.expiresAt});

  final String jti;
  final String userLogin;
  final DateTime expiresAt;
}

class ResetCodeModel {
  new({required this.code, required this.expiresAt, required this.timer});

  final String code;
  final DateTime expiresAt;
  final Timer? timer;
}

class ResetSessionModel {
  new({required this.resetToken, required this.expiresAt, required this.timer});

  final String resetToken;
  final DateTime expiresAt;
  final Timer? timer;
}
