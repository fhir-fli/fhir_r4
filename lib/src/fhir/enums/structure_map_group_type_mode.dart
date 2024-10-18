// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// If this is the default rule set to apply for the source type, or this combination of types.
enum StructureMapGroupTypeMode {
  /// Display: Not a Default
  /// Definition: This group is not a default group for the types.
  none('none'),

  /// Display: Default for Type Combination
  /// Definition: This group is a default mapping group for the specified types and for the primary source type.
  types('types'),

  /// Display: Default for type + combination
  /// Definition: This group is a default mapping group for the specified types.
  type_and_types('type-and-types'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const StructureMapGroupTypeMode(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [StructureMapGroupTypeMode] instances.
  static StructureMapGroupTypeMode fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapGroupTypeMode.elementOnly.withElement(element);
    }
    return StructureMapGroupTypeMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  StructureMapGroupTypeMode withElement(Element? newElement) {
    return StructureMapGroupTypeMode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
