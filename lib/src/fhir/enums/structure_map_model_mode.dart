// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How the referenced structure is used in this mapping.
enum StructureMapModelMode {
  /// Display: Source Structure Definition
  /// Definition: This structure describes an instance passed to the mapping engine that is used a source of data.
  source('source'),

  /// Display: Queried Structure Definition
  /// Definition: This structure describes an instance that the mapping engine may ask for that is used a source of data.
  queried('queried'),

  /// Display: Target Structure Definition
  /// Definition: This structure describes an instance passed to the mapping engine that is used a target of data.
  target('target'),

  /// Display: Produced Structure Definition
  /// Definition: This structure describes an instance that the mapping engine may ask to create that is used a target of data.
  produced('produced'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const StructureMapModelMode(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [StructureMapModelMode] instances.
  static StructureMapModelMode fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapModelMode.elementOnly.withElement(
        element,
      );
    }
    return StructureMapModelMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  StructureMapModelMode withElement(Element? newElement) {
    return StructureMapModelMode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
