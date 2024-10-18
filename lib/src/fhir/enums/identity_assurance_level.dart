// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const IdentityAssuranceLevel(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [IdentityAssuranceLevel] instances.
  static IdentityAssuranceLevel fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentityAssuranceLevel.elementOnly.withElement(
        element,
      );
    }
    return IdentityAssuranceLevel.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  IdentityAssuranceLevel withElement(Element? newElement) {
    return IdentityAssuranceLevel.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
