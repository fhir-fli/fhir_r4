// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Codes providing the status/availability of a specimen.
@collection
class SpecimenStatus {
  /// Constructor for internal use (like enum)
  SpecimenStatus({this.fhirCode, this.element})
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

  /// SpecimenStatus values
  /// available
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecimenStatus available = SpecimenStatus(
    fhirCode: 'available',
  );

  /// unavailable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecimenStatus unavailable = SpecimenStatus(
    fhirCode: 'unavailable',
  );

  /// unsatisfactory
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecimenStatus unsatisfactory = SpecimenStatus(
    fhirCode: 'unsatisfactory',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecimenStatus entered_in_error = SpecimenStatus(
    fhirCode: 'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final SpecimenStatus elementOnly = SpecimenStatus();

  /// List of all enum-like values
  static final List<SpecimenStatus> values = [
    available,
    unavailable,
    unsatisfactory,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  SpecimenStatus withElement(Element? newElement) {
    return SpecimenStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SpecimenStatus] from JSON.
  static SpecimenStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecimenStatus.elementOnly.withElement(element);
    }
    return SpecimenStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SpecimenStatus.$fhirCode';
}
