import 'package:fhir_r4/fhir_r4.dart';

/// The optical rotation type of a substance.
enum Stereochemistry {
  /// Display: constitutional isomer
  /// Definition:
  ConstitutionalIsomer('ConstitutionalIsomer'),

  /// Display: stereoisomer
  /// Definition:
  Stereoisomer('Stereoisomer'),

  /// Display: enantiomer
  /// Definition:
  Enantiomer('Enantiomer'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const Stereochemistry(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static Stereochemistry fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Stereochemistry.elementOnly.withElement(element);
    }
    return Stereochemistry.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  Stereochemistry withElement(Element? newElement) {
    return Stereochemistry.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
