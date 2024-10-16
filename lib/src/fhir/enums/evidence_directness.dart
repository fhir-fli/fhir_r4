import 'package:fhir_r4/fhir_r4.dart';

/// The quality of how direct the match is.
enum EvidenceDirectness {
  /// Display: Low quality match between observed and intended variable
  /// Definition: Low matching quality between observed and intended variable, so very serious concern for indirectness in evidence interpretation.
  low('low'),

  /// Display: Moderate quality match between observed and intended variable
  /// Definition: Moderate matching quality between observed and intended variable, so serious concern for indirectness in evidence interpretation.
  moderate('moderate'),

  /// Display: High quality match between observed and intended variable
  /// Definition: High matching quality between observed and intended variable, so little concern for indirectness in evidence interpretation.
  high('high'),

  /// Display: Exact match between observed and intended variable
  /// Definition: Exact matching quality between observed and intended variable, so no concern for indirectness in evidence interpretation.
  exact('exact'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const EvidenceDirectness(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static EvidenceDirectness fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceDirectness.elementOnly.withElement(element);
    }
    return EvidenceDirectness.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  EvidenceDirectness withElement(Element? newElement) {
    return EvidenceDirectness.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
