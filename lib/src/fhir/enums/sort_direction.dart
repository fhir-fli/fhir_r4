// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The possible sort directions, ascending or descending.
@collection
class SortDirection {
  /// Constructor for internal use (like enum)
  SortDirection({this.fhirCode, this.element})
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

  /// SortDirection values
  /// ascending
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SortDirection ascending = SortDirection(
    fhirCode: 'ascending',
  );

  /// descending
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SortDirection descending = SortDirection(
    fhirCode: 'descending',
  );

  /// For instances where an Element is present but not value

  static final SortDirection elementOnly = SortDirection();

  /// List of all enum-like values
  static final List<SortDirection> values = [
    ascending,
    descending,
  ];

  /// Returns the enum value with an element attached
  SortDirection withElement(Element? newElement) {
    return SortDirection(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SortDirection] from JSON.
  static SortDirection fromJson(Map<String, dynamic> json) {
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SortDirection.$fhirCode';
}
