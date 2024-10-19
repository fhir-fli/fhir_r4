// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// SHALL applications comply with this constraint?
@collection
class ConstraintSeverity {
  /// Constructor for internal use (like enum)
  ConstraintSeverity({this.fhirCode, this.element})
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

  /// ConstraintSeverity values
  /// error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConstraintSeverity error = ConstraintSeverity(
    fhirCode: 'error',
  );

  /// warning
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConstraintSeverity warning = ConstraintSeverity(
    fhirCode: 'warning',
  );

  /// For instances where an Element is present but not value

  static final ConstraintSeverity elementOnly = ConstraintSeverity();

  /// List of all enum-like values
  static final List<ConstraintSeverity> values = [
    error,
    warning,
  ];

  /// Returns the enum value with an element attached
  ConstraintSeverity withElement(Element? newElement) {
    return ConstraintSeverity(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ConstraintSeverity] from JSON.
  static ConstraintSeverity fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConstraintSeverity.elementOnly.withElement(element);
    }
    return ConstraintSeverity.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConstraintSeverity.$fhirCode';
}
