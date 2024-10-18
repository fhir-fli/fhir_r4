// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Type for orientation.
enum OrientationType {
  /// Display: Sense orientation of referenceSeq
  /// Definition: Sense orientation of reference sequence.
  sense('sense'),

  /// Display: Antisense orientation of referenceSeq
  /// Definition: Antisense orientation of reference sequence.
  antisense('antisense'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const OrientationType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [OrientationType] instances.
  static OrientationType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OrientationType.elementOnly.withElement(
        element,
      );
    }
    return OrientationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  OrientationType withElement(Element? newElement) {
    return OrientationType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
