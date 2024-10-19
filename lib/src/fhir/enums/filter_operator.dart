// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The kind of operation to perform as a part of a property based filter.
@collection
class FilterOperator {
  /// Constructor for internal use (like enum)
  FilterOperator({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// FilterOperator values
  /// eq
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FilterOperator eq = FilterOperator(
    fhirCode: '=',
  );

  /// is_a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FilterOperator is_a = FilterOperator(
    fhirCode: 'is-a',
  );

  /// descendent_of
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FilterOperator descendent_of = FilterOperator(
    fhirCode: 'descendent-of',
  );

  /// is_not_a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FilterOperator is_not_a = FilterOperator(
    fhirCode: 'is-not-a',
  );

  /// regex
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FilterOperator regex = FilterOperator(
    fhirCode: 'regex',
  );

  /// in_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FilterOperator in_ = FilterOperator(
    fhirCode: 'in',
  );

  /// not_in
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FilterOperator not_in = FilterOperator(
    fhirCode: 'not-in',
  );

  /// generalizes
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FilterOperator generalizes = FilterOperator(
    fhirCode: 'generalizes',
  );

  /// exists
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FilterOperator exists = FilterOperator(
    fhirCode: 'exists',
  );

  /// For instances where an Element is present but not value

  static final FilterOperator elementOnly = FilterOperator();

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
    return FilterOperator(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FilterOperator.$fhirCode';
}
