import 'package:fhir_r4/fhir_r4.dart';

/// The way in which a person authenticated a composition.
enum CompositionAttestationMode {
  /// Display: Personal
  /// Definition: The person authenticated the content in their personal capacity.
  personal('personal'),

  /// Display: Professional
  /// Definition: The person authenticated the content in their professional capacity.
  professional('professional'),

  /// Display: Legal
  /// Definition: The person authenticated the content and accepted legal responsibility for its content.
  legal('legal'),

  /// Display: Official
  /// Definition: The organization authenticated the content as consistent with their policies and procedures.
  official('official'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CompositionAttestationMode(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CompositionAttestationMode fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositionAttestationMode.elementOnly.withElement(element);
    }
    return CompositionAttestationMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CompositionAttestationMode withElement(Element? newElement) {
    return CompositionAttestationMode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
