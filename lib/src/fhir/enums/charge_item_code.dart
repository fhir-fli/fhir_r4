/// Example set of codes that can be used for billing purposes.
enum ChargeItemCode {
  /// Display: Unvorhergesehene Inanspruchnahme
  /// Definition: From German EBM billing system: Unvorhergesehene Inanspruchnahme des Vertragsarztes durch einen Patienten;zwischen 19:00 und 22:00 Uhr;an Samstagen, Sonntagen und gesetzlichen Feiertagen, am 24.12. und 31.12. zwischen 07:00 und 19:00 Uhr.
  value1100,

  /// Display: Notfallpauschale
  /// Definition: From German EBM billing system: Notfallpauschale im organisierten Not(-fall)dienst und für nicht an der vertragsärztlichen Versorgung teilnehmende Ärzte, Institute und Krankenhäuser bei Inanspruchnahme;zwischen 07:00 und 19:00 Uhr.
  value1210,

  /// Display: Grundpauschale
  /// Definition: From German EBM billing system: Grundpauschale für Ärzte, Institute und Krankenhäuser, die zur Erbringung von Leistungen innerhalb mindestens eines der Fachgebiete Anästhesiologie, Frauenheilkunde und Geburtshilfe, Haut- und Geschlechtskrankheiten, Mund-, Kiefer- und Gesichtschirurgie und Humangenetik ermächtigt sind.
  value1320,
  ;

  @override
  String toString() {
    switch (this) {
      case value1100:
        return '1100';
      case value1210:
        return '1210';
      case value1320:
        return '1320';
    }
  }

  /// Returns a [String] from a [ChargeItemCode] enum.
  String toJson() => toString();

  /// Returns a [ChargeItemCode] from a [String] enum.
  static ChargeItemCode fromString(String str) {
    switch (str) {
      case '1100':
        return ChargeItemCode.value1100;
      case '1210':
        return ChargeItemCode.value1210;
      case '1320':
        return ChargeItemCode.value1320;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ChargeItemCode] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ChargeItemCode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
