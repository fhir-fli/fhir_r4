// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// If field is a list, how to manage the source.
enum StructureMapSourceListMode {
  /// Display: First
  /// Definition: Only process this rule for the first in the list.
  first('first'),

  /// Display: All but the first
  /// Definition: Process this rule for all but the first.
  not_first('not_first'),

  /// Display: Last
  /// Definition: Only process this rule for the last in the list.
  last('last'),

  /// Display: All but the last
  /// Definition: Process this rule for all but the last.
  not_last('not_last'),

  /// Display: Enforce only one
  /// Definition: Only process this rule is there is only item.
  only_one('only_one'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const StructureMapSourceListMode(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [StructureMapSourceListMode] instances.
  static StructureMapSourceListMode fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapSourceListMode.elementOnly.withElement(element);
    }
    return StructureMapSourceListMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  StructureMapSourceListMode withElement(Element? newElement) {
    return StructureMapSourceListMode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
