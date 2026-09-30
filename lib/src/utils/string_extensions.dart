import 'package:base_objects/src/constants/app_regular_exp.dart';
import 'package:path/path.dart' as p;

/// Extensões para manipulação segura de strings em nomes de arquivos.
///
/// {@category utilitarios}
///
/// Fornece métodos para sanitizar, normalizar e validar strings
/// que serão usadas como nomes de arquivos, garantindo compatibilidade
/// entre diferentes sistemas operacionais.
extension FileNameStringExtensions on String {
  /// Nomes de arquivo reservados no Windows.
  static const Set<String> _reservedWindowsNames = {
    'CON',
    'PRN',
    'AUX',
    'NUL',
    'COM1',
    'COM2',
    'COM3',
    'COM4',
    'COM5',
    'COM6',
    'COM7',
    'COM8',
    'COM9',
    'LPT1',
    'LPT2',
    'LPT3',
    'LPT4',
    'LPT5',
    'LPT6',
    'LPT7',
    'LPT8',
    'LPT9',
  };

  /// Verifica se o nome do arquivo é reservado no Windows.
  ///
  /// Retorna `true` se o nome (sem extensão) for um dos nomes
  /// reservados do Windows (CON, PRN, AUX, NUL, COM1-9, LPT1-9).
  ///
  /// Exemplo:
  /// ```dart
  /// 'CON.txt'.isReservedFileName(); // true
  /// 'con.txt'.isReservedFileName(); // true
  /// 'arquivo.txt'.isReservedFileName(); // false
  /// ```
  bool isReservedFileName() {
    final nameUpper = p.basenameWithoutExtension(this).toUpperCase();
    return _reservedWindowsNames.contains(nameUpper);
  }

  /// Valida se a string é um nome de arquivo válido.
  ///
  /// Verifica:
  /// - String não vazia
  /// - Não contém caracteres proibidos
  /// - Não é nome reservado do Windows
  /// - Não excede comprimento máximo
  ///
  /// [maxLength] define o comprimento máximo permitido (padrão: 255).
  ///
  /// Retorna `true` se o nome for válido, `false` caso contrário.
  ///
  /// Exemplo:
  /// ```dart
  /// 'arquivo.txt'.isValidFileName(); // true
  /// 'arquivo<teste>.txt'.isValidFileName(); // false
  /// 'CON.txt'.isValidFileName(); // false
  /// ```
  bool isValidFileName({int maxLength = 255}) {
    if (isEmpty || length > maxLength) return false;
    if (isReservedFileName()) return false;
    if (contains(AppRegularExp.invalidFileNameCharsRegExp)) return false;

    return true;
  }

  /// Acrescenta o instante atual em milissegundos ao nome do arquivo.
  ///
  /// O sufixo é inserido antes da extensão. Chamadas feitas no mesmo
  /// milissegundo podem produzir o mesmo nome.
  ///
  /// Exemplo:
  /// ```dart
  /// 'relatorio.pdf'.makeUniqueFileName(); // 'relatorio_1701979200000.pdf'
  /// ```
  String makeUniqueFileName() {
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final extension = p.extension(this);
    final name = p.basenameWithoutExtension(this);

    return '${name}_$timestamp$extension';
  }

  /// Normaliza o nome do arquivo convertendo para lowercase.
  ///
  /// Útil para garantir consistência entre sistemas case-sensitive
  /// (Linux/macOS) e case-insensitive (Windows).
  ///
  /// Exemplo:
  /// ```dart
  /// 'MinhaFoto.JPG'.normalizeFileName(); // 'minhafoto.jpg'
  /// ```
  String normalizeFileName() => toLowerCase();

  /// Normaliza a string para uso como nome de arquivo.
  ///
  /// Converte o texto para minúsculas, substitui caracteres proibidos e
  /// espaços em branco por underscores e reduz underscores consecutivos a um.
  ///
  /// Exemplo:
  /// ```dart
  /// 'Arquivo<teste>.txt'.sanitizeFileName(); // 'arquivo_teste_.txt'
  /// 'Nome  com   espaços'.sanitizeFileName(); // 'nome_com_espaços'
  /// ```
  String sanitizeFileName() => toLowerCase()
      .replaceAll(AppRegularExp.invalidFileNameCharsRegExp, '_')
      .replaceAll(AppRegularExp.oneOrMoreWhitespaceRegExp, '_')
      .replaceAll(AppRegularExp.oneOrMoreUnderscoreRegExp, '_')
      .trim();

  /// Converte caracteres acentuados para ASCII.
  ///
  /// Converte as letras acentuadas comuns em português para equivalentes ASCII.
  ///
  /// Exemplo:
  /// ```dart
  /// 'relatório_ção.txt'.toAsciiFileName(); // 'relatorio_cao.txt'
  /// 'José_García.pdf'.toAsciiFileName(); // 'Jose_Garcia.pdf'
  /// ```
  String toAsciiFileName() => replaceAll(AppRegularExp.accentARegExp, 'a')
      .replaceAll(AppRegularExp.accentERegExp, 'e')
      .replaceAll(AppRegularExp.accentIRegExp, 'i')
      .replaceAll(AppRegularExp.accentORegExp, 'o')
      .replaceAll(AppRegularExp.accentURegExp, 'u')
      .replaceAll(AppRegularExp.cedillaRegExp, 'c')
      .replaceAll(AppRegularExp.tildeNRegExp, 'n')
      .replaceAll(AppRegularExp.yVariantsRegExp, 'y');

  /// Aplica todas as proteções recomendadas para nomes de arquivo.
  ///
  /// Este método combina:
  /// 1. Substituição de caracteres inválidos.
  /// 2. Conversão de alguns caracteres acentuados para ASCII.
  /// 3. Conversão para minúsculas.
  /// 4. Truncamento antes de tratar nomes reservados.
  /// 5. Inclusão de sufixo para nomes reservados.
  ///
  /// [maxLength] define o limite usado no truncamento (padrão: 200).
  /// [addTimestamp] acrescenta o instante atual se o nome for reservado
  /// (padrão: `false`).
  ///
  /// Exemplo:
  /// ```dart
  /// 'Relatório <Final>.txt'.toSafeFileName(); // 'relatorio_final_.txt'
  /// 'CON.txt'.toSafeFileName(); // 'con_file.txt'
  /// 'CON.txt'.toSafeFileName(addTimestamp: true); // 'con_1701979200000.txt'
  /// ```
  String toSafeFileName({int maxLength = 200, bool addTimestamp = false}) {
    var safeName = sanitizeFileName().toAsciiFileName().normalizeFileName().truncateFileName(
      maxLength: maxLength,
    );

    // Se for nome reservado, adiciona sufixo
    if (safeName.isReservedFileName()) {
      if (addTimestamp) {
        safeName = safeName.makeUniqueFileName();
      } else {
        final extension = p.extension(safeName);
        final name = p.basenameWithoutExtension(safeName);
        safeName = '${name}_file$extension';
      }
    }

    return safeName;
  }

  /// Trunca o nome do arquivo para o comprimento máximo especificado.
  ///
  /// Preserva a extensão do arquivo ao truncar. Se o nome for maior que
  /// [maxLength], o nome base é encurtado mantendo a extensão intacta.
  ///
  /// Se a extensão tiver comprimento igual ou maior que [maxLength], o método
  /// trunca o nome inteiro, inclusive a extensão.
  ///
  /// Exemplo:
  /// ```dart
  /// 'nome_muito_longo_para_arquivo.json'.truncateFileName(maxLength: 20);
  /// // 'nome_muito_long.json'
  /// ```
  String truncateFileName({int maxLength = 255}) {
    if (length <= maxLength) return this;

    final extension = p.extension(this);
    final nameWithoutExt = p.basenameWithoutExtension(this);

    if (extension.length >= maxLength) {
      // Se a extensão é maior que maxLength, apenas trunca tudo
      return substring(0, maxLength);
    }

    final availableLength = maxLength - extension.length;
    final truncated = nameWithoutExt.substring(0, availableLength);

    return '$truncated$extension';
  }
}

/// Extensões de validação de documentos, e-mail, telefone e senha.
///
/// {@category utilitarios}
extension ValidateDataCustomer on String {
  /// Comprimento mínimo da senha aceito por [validatePassword].
  static const int minPasswordLength = 8;

  /// Indica se a string contém um CPF válido.
  ///
  /// Verifica o formato e os dígitos verificadores do CPF e recusa sequências
  /// com todos os dígitos iguais.
  ///
  /// Retorna `true` se o CPF for válido, `false` caso contrário.
  ///
  /// Exemplo:
  /// ```dart
  /// '123.456.789-09'.isValidCpf(); // true ou false
  /// ```
  bool isValidCpf() {
    final cpf = replaceAll(AppRegularExp.nonNumericRegExp, '');

    if (cpf.length != 11 || AppRegularExp.cpfSameDigitRegExp.hasMatch(cpf)) {
      return false;
    }

    final digits = cpf.split('').map(int.parse).toList();

    for (var j = 9; j < 11; j++) {
      var sum = 0;
      for (var i = 0; i < j; i++) {
        sum += digits[i] * ((j + 1) - i);
      }
      var mod = (sum * 10) % 11;
      if (mod == 10) mod = 0;
      if (mod != digits[j]) {
        return false;
      }
    }
    return true;
  }

  /// Indica se a string corresponde ao formato básico de e-mail aceito.
  ///
  /// O formato é verificado por uma expressão regular simples, não por uma
  /// validação de entrega ou existência da caixa postal. Não aceita letras
  /// acentuadas.
  ///
  /// Exemplo:
  /// ```dart
  /// 'example@example.com'.isValidEmail(); // true ou false
  /// ```
  bool isValidEmail() => AppRegularExp.emailRegExp.hasMatch(this);

  /// Indica se a string corresponde ao formato básico de telefone brasileiro.
  ///
  /// A verificação de formato não confirma se o número está ativo.
  ///
  /// O padrão aceita DDD com parênteses opcionais, espaços e hífens.
  ///
  /// Exemplo:
  /// ```dart
  /// '(11) 91234-5678'.isValidPhone(); // true ou false
  /// ```
  bool isValidPhone() => AppRegularExp.phoneRegExp.hasMatch(this);

  /// Valida os requisitos básicos de uma senha.
  ///
  /// Retorna uma mensagem em português quando a senha é inválida ou `null`
  /// quando atende aos requisitos: no mínimo [minPasswordLength] caracteres,
  /// uma letra maiúscula, uma letra minúscula e um dígito.
  String? validatePassword() {
    final password = this;
    if (password.isEmpty) {
      return 'Senha é obrigatória';
    }
    if (password.length < minPasswordLength) {
      return 'Senha deve ter no mínimo $minPasswordLength caracteres';
    }
    if (!password.contains(AppRegularExp.uppercaseLetterRegExp)) {
      return 'Senha deve conter pelo menos uma letra maiúscula';
    }
    if (!password.contains(AppRegularExp.lowercaseLetterRegExp)) {
      return 'Senha deve conter pelo menos uma letra minúscula';
    }
    if (!password.contains(AppRegularExp.digitRegExp)) {
      return 'Senha deve conter pelo menos um número';
    }
    return null;
  }
}
