/// Texto de placeholder quando o código ou número será gerado na gravação.
///
/// {@category utilitarios}
const String kStringGenerate = 'Será gerado automaticamente';

/// Expressões regulares e constantes compartilhadas de validação e formatação.
///
/// A maioria dos [RegExp] casa o que deve ser **removido** (classe negada) e
/// entra em [String.replaceAll]. Os demais validam formato com `hasMatch`.
///
/// {@category utilitarios}
abstract final class AppRegularExp {
  new _();

  /// Limiar padrão de estoque baixo, em unidades, quando o item não tem mínimo.
  static const int kLowStockThreshold = 5;

  /// Caracteres que não são dígitos de `0` a `9`.
  ///
  /// Usado com [String.replaceAll] para deixar só números (CPF, CEP, telefone).
  static final RegExp nonNumericRegExp = RegExp('[^0-9]');

  /// Caracteres inválidos em valor decimal digitado (fora de `0-9`, `,` e `.`).
  ///
  /// Usado com [String.replaceAll] para descartar o restante.
  static final RegExp invalidDecimalCharRegExp = RegExp('[^0-9,.]');

  /// Caracteres proibidos em nome de arquivo no Windows (`<>:"/\\|?*` e controles).
  static final RegExp invalidFileNameCharsRegExp = RegExp(r'[<>:"/\\|?*\x00-\x1F]');
  static final RegExp nonDigitCommaDotRegExp = RegExp(r'[^0-9,\.\-]');

  /// Sequência de um ou mais espaços em branco.
  static final RegExp oneOrMoreWhitespaceRegExp = RegExp(r'\s+');

  /// Sequência de um ou mais underscores.
  static final RegExp oneOrMoreUnderscoreRegExp = RegExp('_+');

  /// Letras `a` acentuadas, para normalização ASCII de nome de arquivo.
  static final RegExp accentARegExp = RegExp('[àáâãäåÀÁÂÃÄÅ]');

  /// Letras `e` acentuadas, para normalização ASCII de nome de arquivo.
  static final RegExp accentERegExp = RegExp('[èéêëÈÉÊË]');

  /// Letras `i` acentuadas, para normalização ASCII de nome de arquivo.
  static final RegExp accentIRegExp = RegExp('[ìíîïÌÍÎÏ]');

  /// Letras `o` acentuadas, para normalização ASCII de nome de arquivo.
  static final RegExp accentORegExp = RegExp('[òóôõöÒÓÔÕÖ]');

  /// Letras `u` acentuadas, para normalização ASCII de nome de arquivo.
  static final RegExp accentURegExp = RegExp('[ùúûüÙÚÛÜ]');

  /// Cedilha (`ç`/`Ç`), para normalização ASCII de nome de arquivo.
  static final RegExp cedillaRegExp = RegExp('[çÇ]');

  /// Letras `n` com til, para normalização ASCII de nome de arquivo.
  static final RegExp tildeNRegExp = RegExp('[ñÑ]');

  /// Letras `y` acentuadas, para normalização ASCII de nome de arquivo.
  static final RegExp yVariantsRegExp = RegExp('[ýÿÝŸ]');

  /// Sequência em que todos os dígitos são iguais (`000...`, `111...`).
  ///
  /// Usado na validação de CPF; o comprimento de 11 dígitos é checado à parte.
  static final RegExp cpfSameDigitRegExp = RegExp(r'^(\d)\1*$');

  /// Formato básico de e-mail ASCII (`local@dominio.tld`).
  ///
  /// Não aceita acentuação; o campo combina com [accentedCharsRegExp].
  static final RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  /// Letras acentuadas comuns em português, bloqueadas na digitação de e-mail.
  static final RegExp accentedCharsRegExp = RegExp(
    '[àáâãäåèéêëìíîïòóôõöùúûüçñÀÁÂÃÄÅÈÉÊËÌÍÎÏÒÓÔÕÖÙÚÛÜÇÑ]',
  );

  /// Formato básico de telefone brasileiro, com DDD opcional entre parênteses.
  static final RegExp phoneRegExp = RegExp(r'^\(?\d{2}\)?[\s-]?[\d\s-]{4,5}[\s-]?\d{4}$');

  /// Letra maiúscula ASCII `A-Z`, exigida na senha.
  static final RegExp uppercaseLetterRegExp = RegExp('[A-Z]');

  /// Letra minúscula ASCII `a-z`, exigida na senha.
  static final RegExp lowercaseLetterRegExp = RegExp('[a-z]');

  /// Dígito `0-9`, exigido na senha.
  static final RegExp digitRegExp = RegExp('[0-9]');

  /// Código de produto válido: só letras, dígitos e hífen, do início ao fim.
  static final RegExp productCodeValidRegExp = RegExp(r'^[a-zA-Z0-9\-]+$');

  /// Caracteres que não são letra, dígito nem hífen.
  ///
  /// Usado com [String.replaceAll] ao formatar código de produto.
  static final RegExp invalidProductCodeCharRegExp = RegExp(r'[^a-zA-Z0-9\-]');

  /// CNPJ compacto composto só de zeros.
  static final RegExp cnpjAllZerosRegExp = RegExp(r'^0+$');

  /// CNPJ compacto de 14 caracteres: 12 alfanuméricos e 2 dígitos verificadores.
  static final RegExp cnpjCleanRegExp = RegExp(r'^[A-Z\d]{12}\d{2}$');

  /// Pontuação de CNPJ (`.`, `/` e `-`).
  static final RegExp cnpjFormattingCharsRegExp = RegExp('[./-]');

  /// CNPJ formatado `AA.AAA.AAA/AAAA-DV`, com letras permitidas no corpo.
  static final RegExp cnpjRegExp = RegExp(r'^[A-Z\d]{2}\.[A-Z\d]{3}\.[A-Z\d]{3}/[A-Z\d]{4}-\d{2}$');

  /// Caracteres fora de dígito e ponto.
  ///
  /// Usado no parse de dinheiro para descartar o restante, inclusive vírgula.
  static final RegExp nonDigitOrDotRegExp = RegExp('[^0-9.]');

  /// Número só com milhar pontuado, sem casa decimal (`1.234.567`).
  ///
  /// Distingue milhar de decimal quando o valor limpo tem apenas pontos.
  static final RegExp dotThousandsGroupingRegExp = RegExp(r'^\d{1,3}(\.\d{3})+$');

  /// Qualquer caractere que não é dígito (`\D`).
  ///
  /// Usado com [String.replaceAll] para manter somente números.
  static final RegExp nonDigitRegExp = RegExp(r'\D');

  /// CPF formatado `000.000.000-00`.
  static final RegExp cpfRegExp = RegExp(r'^\d{3}\.\d{3}\.\d{3}-\d{2}$');

  /// CPF compacto com exatamente 11 dígitos.
  static final RegExp cpfCleanRegExp = RegExp(r'^\d{11}$');

  /// Identificador de versão bcrypt (`2a`, `2b` ou `2y`).
  static final RegExp bcryptVersionRegExp = RegExp(r'^2[aby]$');

  /// 53 caracteres do alfabeto bcrypt no hash, após o cost.
  static final RegExp bcryptAlphabetRegExp = RegExp(r'^[./A-Za-z0-9]{53}$');

  /// Cláusula `CHECK (...)` no fim de um `CREATE TABLE` SQLite.
  ///
  /// Usado nos testes de migração para comparar o DDL sem essa restrição.
  static final RegExp trailingCheckConstraintRegExp = RegExp(
    r',\s*CHECK \(.*\)\s*\)$',
    dotAll: true,
  );

  /// Data no calendário ISO 8601, formato `YYYY-MM-DD`.
  static final RegExp calendarDateRegExp = RegExp(r'^(\d{4})-(\d{2})-(\d{2})$');
}
