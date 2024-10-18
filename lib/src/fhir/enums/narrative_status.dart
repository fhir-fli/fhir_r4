// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of a resource narrative.
enum NarrativeStatus {
  /// Display: Generated
  /// Definition: The contents of the narrative are entirely generated from the core elements in the content.
  generated('generated'),

  /// Display: Extensions
  /// Definition: The contents of the narrative are entirely generated from the core elements in the content and some of the content is generated from extensions. The narrative SHALL reflect the impact of all modifier extensions.
  extensions('extensions'),

  /// Display: Additional
  /// Definition: The contents of the narrative may contain additional information not found in the structured data. Note that there is no computable way to determine what the extra information is, other than by human inspection.
  additional('additional'),

  /// Display: Empty
  /// Definition: The contents of the narrative are some equivalent of "No human-readable text provided in this case".
  empty('empty'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const NarrativeStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [NarrativeStatus] instances.
  static NarrativeStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NarrativeStatus.elementOnly.withElement(
        element,
      );
    }
    return NarrativeStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  NarrativeStatus withElement(Element? newElement) {
    return NarrativeStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
