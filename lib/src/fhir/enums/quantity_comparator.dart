// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How the Quantity should be understood and represented.
enum QuantityComparator {
  /// Display: Less than
  /// Definition: The actual value is less than the given value.
  lt('<'),

  /// Display: Less or Equal to
  /// Definition: The actual value is less than or equal to the given value.
  le('<='),

  /// Display: Greater or Equal to
  /// Definition: The actual value is greater than or equal to the given value.
  ge('>='),

  /// Display: Greater than
  /// Definition: The actual value is greater than the given value.
  gt('>'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const QuantityComparator(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [QuantityComparator] instances.
  static QuantityComparator fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuantityComparator.elementOnly.withElement(
        element,
      );
    }
    return QuantityComparator.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  QuantityComparator withElement(Element? newElement) {
    return QuantityComparator.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
