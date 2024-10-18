// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ReferenceVersionRules(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ReferenceVersionRules] instances.
  static ReferenceVersionRules fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReferenceVersionRules.elementOnly.withElement(
        element,
      );
    }
    return ReferenceVersionRules.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ReferenceVersionRules withElement(Element? newElement) {
    return ReferenceVersionRules.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
