// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The current state of the list.
@collection
class ListStatus {
  /// Constructor for internal use (like enum)
  ListStatus({this.fhirCode, this.element})
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

  /// ListStatus values
  /// current
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListStatus current = ListStatus(
    fhirCode: 'current',
  );

  /// retired
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListStatus retired = ListStatus(
    fhirCode: 'retired',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListStatus entered_in_error = ListStatus(
    fhirCode: 'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final ListStatus elementOnly = ListStatus();

  /// List of all enum-like values
  static final List<ListStatus> values = [
    current,
    retired,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  ListStatus withElement(Element? newElement) {
    return ListStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ListStatus] from JSON.
  static ListStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ListStatus.elementOnly.withElement(element);
    }
    return ListStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ListStatus.$fhirCode';
}
