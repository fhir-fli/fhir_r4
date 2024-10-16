import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the administrative routes used during vaccination. This value set is provided as a suggestive example.
enum ImmunizationRouteCodes {
  /// Display: Injection, intradermal
  /// Definition:
  IDINJ('IDINJ'),

  /// Display: Injection, intramuscular
  /// Definition:
  IM('IM'),

  /// Display: Inhalation, nasal
  /// Definition:
  NASINHLC('NASINHLC'),

  /// Display: Injection, intravenous
  /// Definition:
  IVINJ('IVINJ'),

  /// Display: Swallow, oral
  /// Definition:
  PO('PO'),

  /// Display: Injection, subcutaneous
  /// Definition:
  SQ('SQ'),

  /// Display: Transdermal
  /// Definition:
  TRNSDERM('TRNSDERM'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ImmunizationRouteCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ImmunizationRouteCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRouteCodes.elementOnly.withElement(element);
    }
    return ImmunizationRouteCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ImmunizationRouteCodes withElement(Element? newElement) {
    return ImmunizationRouteCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
