// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The possible sort directions, ascending or descending.
class SortDirection {
  // Private constructor for internal use (like enum)
  SortDirection._(this.fhirCode, {this.element});

  /// Factory constructor to create [SortDirection] from JSON.
  factory SortDirection.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SortDirection.elementOnly.withElement(element);
    }
    return SortDirection._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SortDirection values
  /// ascending
  static final SortDirection ascending = SortDirection._(
    'ascending',
  );

  /// descending
  static final SortDirection descending = SortDirection._(
    'descending',
  );

  /// For instances where an Element is present but not value

  static final SortDirection elementOnly = SortDirection._('');

  /// List of all enum-like values
  static final List<SortDirection> values = [
    ascending,
    descending,
  ];

  /// Returns the enum value with an element attached
  SortDirection withElement(Element? newElement) {
    return SortDirection._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
