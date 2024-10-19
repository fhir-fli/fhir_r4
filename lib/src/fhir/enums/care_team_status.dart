// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Indicates the status of the care team.
@collection
class CareTeamStatus {
  /// Constructor for internal use (like enum)
  CareTeamStatus({this.fhirCode, this.element})
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

  /// CareTeamStatus values
  /// proposed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CareTeamStatus proposed = CareTeamStatus(
    fhirCode: 'proposed',
  );

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CareTeamStatus active = CareTeamStatus(
    fhirCode: 'active',
  );

  /// suspended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CareTeamStatus suspended = CareTeamStatus(
    fhirCode: 'suspended',
  );

  /// inactive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CareTeamStatus inactive = CareTeamStatus(
    fhirCode: 'inactive',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CareTeamStatus entered_in_error = CareTeamStatus(
    fhirCode: 'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final CareTeamStatus elementOnly = CareTeamStatus();

  /// List of all enum-like values
  static final List<CareTeamStatus> values = [
    proposed,
    active,
    suspended,
    inactive,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  CareTeamStatus withElement(Element? newElement) {
    return CareTeamStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CareTeamStatus] from JSON.
  static CareTeamStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CareTeamStatus.elementOnly.withElement(element);
    }
    return CareTeamStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CareTeamStatus.$fhirCode';
}
