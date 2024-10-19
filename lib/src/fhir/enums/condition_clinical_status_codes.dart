// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Preferred value set for Condition Clinical Status.
@collection
class ConditionClinicalStatusCodes {
  /// Constructor for internal use (like enum)
  ConditionClinicalStatusCodes({this.fhirCode, this.element})
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

  /// ConditionClinicalStatusCodes values
  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionClinicalStatusCodes active =
      ConditionClinicalStatusCodes(
    fhirCode: 'active',
  );

  /// recurrence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionClinicalStatusCodes recurrence =
      ConditionClinicalStatusCodes(
    fhirCode: 'recurrence',
  );

  /// relapse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionClinicalStatusCodes relapse =
      ConditionClinicalStatusCodes(
    fhirCode: 'relapse',
  );

  /// inactive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionClinicalStatusCodes inactive =
      ConditionClinicalStatusCodes(
    fhirCode: 'inactive',
  );

  /// remission
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionClinicalStatusCodes remission =
      ConditionClinicalStatusCodes(
    fhirCode: 'remission',
  );

  /// resolved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionClinicalStatusCodes resolved =
      ConditionClinicalStatusCodes(
    fhirCode: 'resolved',
  );

  /// For instances where an Element is present but not value

  static final ConditionClinicalStatusCodes elementOnly =
      ConditionClinicalStatusCodes();

  /// List of all enum-like values
  static final List<ConditionClinicalStatusCodes> values = [
    active,
    recurrence,
    relapse,
    inactive,
    remission,
    resolved,
  ];

  /// Returns the enum value with an element attached
  ConditionClinicalStatusCodes withElement(Element? newElement) {
    return ConditionClinicalStatusCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ConditionClinicalStatusCodes] from JSON.
  static ConditionClinicalStatusCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionClinicalStatusCodes.elementOnly.withElement(element);
    }
    return ConditionClinicalStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConditionClinicalStatusCodes.$fhirCode';
}
