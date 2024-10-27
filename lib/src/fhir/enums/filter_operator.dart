// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The kind of operation to perform as a part of a property based filter.
class FilterOperator {
  // Private constructor for internal use (like enum)
  FilterOperator._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// FilterOperator values
  /// eq
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FilterOperator eq = FilterOperator._(
    '=',
  );

  /// is_a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FilterOperator is_a = FilterOperator._(
    'is-a',
  );

  /// descendent_of
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FilterOperator descendent_of = FilterOperator._(
    'descendent-of',
  );

  /// is_not_a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FilterOperator is_not_a = FilterOperator._(
    'is-not-a',
  );

  /// regex
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FilterOperator regex = FilterOperator._(
    'regex',
  );

  /// in_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FilterOperator in_ = FilterOperator._(
    'in',
  );

  /// not_in
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FilterOperator not_in = FilterOperator._(
    'not-in',
  );

  /// generalizes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FilterOperator generalizes = FilterOperator._(
    'generalizes',
  );

  /// exists
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FilterOperator exists = FilterOperator._(
    'exists',
  );

  /// For instances where an Element is present but not value

  static final FilterOperator elementOnly = FilterOperator._('');

  /// List of all enum-like values
  static final List<FilterOperator> values = [
    eq,
    is_a,
    descendent_of,
    is_not_a,
    regex,
    in_,
    not_in,
    generalizes,
    exists,
  ];

  /// Returns the enum value with an element attached
  FilterOperator withElement(Element? newElement) {
    return FilterOperator._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [FilterOperator] from JSON.
  static FilterOperator fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FilterOperator.elementOnly.withElement(element);
    }
    return FilterOperator.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
