import 'package:fhir_r4/fhir_r4.dart';

/// Example set of codes that can be used for billing purposes.
enum ChargeItemCode {
  /// Display: Unvorhergesehene Inanspruchnahme
  /// Definition: From German EBM billing system: Unvorhergesehene Inanspruchnahme des Vertragsarztes durch einen Patienten;zwischen 19:00 und 22:00 Uhr;an Samstagen, Sonntagen und gesetzlichen Feiertagen, am 24.12. und 31.12. zwischen 07:00 und 19:00 Uhr.
  value1100('1100'),

  /// Display: Notfallpauschale
  /// Definition: From German EBM billing system: Notfallpauschale im organisierten Not(-fall)dienst und für nicht an der vertragsärztlichen Versorgung teilnehmende Ärzte, Institute und Krankenhäuser bei Inanspruchnahme;zwischen 07:00 und 19:00 Uhr.
  value1210('1210'),

  /// Display: Grundpauschale
  /// Definition: From German EBM billing system: Grundpauschale für Ärzte, Institute und Krankenhäuser, die zur Erbringung von Leistungen innerhalb mindestens eines der Fachgebiete Anästhesiologie, Frauenheilkunde und Geburtshilfe, Haut- und Geschlechtskrankheiten, Mund-, Kiefer- und Gesichtschirurgie und Humangenetik ermächtigt sind.
  value1320('1320'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ChargeItemCode(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ChargeItemCode fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ChargeItemCode.elementOnly.withElement(element);
    }
    return ChargeItemCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ChargeItemCode withElement(Element? newElement) {
    return ChargeItemCode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
