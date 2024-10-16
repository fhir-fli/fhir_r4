import 'package:fhir_r4/fhir_r4.dart';

/// Whether a reference needs to be version specific or version independent, or whether either can be used.
enum ReferenceVersionRules {
  /// Display: Either Specific or independent
  /// Definition: The reference may be either version independent or version specific.
  either('either'),

  /// Display: Version independent
  /// Definition: The reference must be version independent.
  independent('independent'),

  /// Display: Version Specific
  /// Definition: The reference must be version specific.
  specific('specific'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ReferenceVersionRules(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ReferenceVersionRules fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReferenceVersionRules.elementOnly.withElement(element);
    }
    return ReferenceVersionRules.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ReferenceVersionRules withElement(Element? newElement) {
    return ReferenceVersionRules.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
