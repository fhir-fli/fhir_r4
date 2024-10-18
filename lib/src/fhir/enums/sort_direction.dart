// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The possible sort directions, ascending or descending.
enum SortDirection {
  /// Display: Ascending
  /// Definition: Sort by the value ascending, so that lower values appear first.
  ascending('ascending'),

  /// Display: Descending
  /// Definition: Sort by the value descending, so that lower values appear last.
  descending('descending'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const SortDirection(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [SortDirection] instances.
  static SortDirection fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SortDirection.elementOnly.withElement(element);
    }
    return SortDirection.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  SortDirection withElement(Element? newElement) {
    return SortDirection.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
