// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Preferred value set for Condition Clinical Status.
class ConditionClinicalStatusCodes {
  // Private constructor for internal use (like enum)
  ConditionClinicalStatusCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ConditionClinicalStatusCodes values
  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionClinicalStatusCodes active =
      ConditionClinicalStatusCodes._(
    'active',
  );

  /// recurrence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionClinicalStatusCodes recurrence =
      ConditionClinicalStatusCodes._(
    'recurrence',
  );

  /// relapse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionClinicalStatusCodes relapse =
      ConditionClinicalStatusCodes._(
    'relapse',
  );

  /// inactive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionClinicalStatusCodes inactive =
      ConditionClinicalStatusCodes._(
    'inactive',
  );

  /// remission
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionClinicalStatusCodes remission =
      ConditionClinicalStatusCodes._(
    'remission',
  );

  /// resolved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConditionClinicalStatusCodes resolved =
      ConditionClinicalStatusCodes._(
    'resolved',
  );

  /// For instances where an Element is present but not value

  static final ConditionClinicalStatusCodes elementOnly =
      ConditionClinicalStatusCodes._('');

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
    return ConditionClinicalStatusCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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
    return ConditionClinicalStatusCodes._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
