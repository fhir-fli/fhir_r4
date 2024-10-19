// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// How the issue affects the success of the action.
@collection
class IssueSeverity {
  /// Constructor for internal use (like enum)
  IssueSeverity({this.fhirCode, this.element})
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

  /// IssueSeverity values
  /// fatal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueSeverity fatal = IssueSeverity(
    fhirCode: 'fatal',
  );

  /// error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueSeverity error = IssueSeverity(
    fhirCode: 'error',
  );

  /// warning
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueSeverity warning = IssueSeverity(
    fhirCode: 'warning',
  );

  /// information
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IssueSeverity information = IssueSeverity(
    fhirCode: 'information',
  );

  /// For instances where an Element is present but not value

  static final IssueSeverity elementOnly = IssueSeverity();

  /// List of all enum-like values
  static final List<IssueSeverity> values = [
    fatal,
    error,
    warning,
    information,
  ];

  /// Returns the enum value with an element attached
  IssueSeverity withElement(Element? newElement) {
    return IssueSeverity(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [IssueSeverity] from JSON.
  static IssueSeverity fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IssueSeverity.elementOnly.withElement(element);
    }
    return IssueSeverity.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'IssueSeverity.$fhirCode';
}
