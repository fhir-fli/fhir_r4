// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Mode for this instance of data.
enum StructureMapInputMode {
  /// Display: Source Instance
  /// Definition: Names an input instance used a source for mapping.
  source('source'),

  /// Display: Target Instance
  /// Definition: Names an instance that is being populated.
  target('target'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const StructureMapInputMode(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [StructureMapInputMode] instances.
  static StructureMapInputMode fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapInputMode.elementOnly.withElement(
        element,
      );
    }
    return StructureMapInputMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  StructureMapInputMode withElement(Element? newElement) {
    return StructureMapInputMode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
