import 'package:fhir_r4/fhir_r4.dart';

/// The level of confidence that this link represents the same actual person, based on NIST Authentication Levels.
enum IdentityAssuranceLevel {
  /// Display: Level 1
  /// Definition: Little or no confidence in the asserted identity's accuracy.
  level1('level1'),

  /// Display: Level 2
  /// Definition: Some confidence in the asserted identity's accuracy.
  level2('level2'),

  /// Display: Level 3
  /// Definition: High confidence in the asserted identity's accuracy.
  level3('level3'),

  /// Display: Level 4
  /// Definition: Very high confidence in the asserted identity's accuracy.
  level4('level4'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const IdentityAssuranceLevel(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static IdentityAssuranceLevel fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentityAssuranceLevel.elementOnly.withElement(element);
    }
    return IdentityAssuranceLevel.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  IdentityAssuranceLevel withElement(Element? newElement) {
    return IdentityAssuranceLevel.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
