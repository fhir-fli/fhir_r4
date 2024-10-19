// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Preferred value set for Condition Clinical Status.
@Entity()
class ConditionClinicalStatusCodes extends FhirCode {
  /// Factory constructor to create [ConditionClinicalStatusCodes] from JSON.
  factory ConditionClinicalStatusCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionClinicalStatusCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ConditionClinicalStatusCodes._(value, element);
    }
    throw ArgumentError(
      'ConditionClinicalStatusCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionClinicalStatusCodes.active([this.element])
      : dbValue = 'active',
        super('active', element);

  /// recurrence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionClinicalStatusCodes.recurrence([this.element])
      : dbValue = 'recurrence',
        super('recurrence', element);

  /// relapse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionClinicalStatusCodes.relapse([this.element])
      : dbValue = 'relapse',
        super('relapse', element);

  /// inactive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionClinicalStatusCodes.inactive([this.element])
      : dbValue = 'inactive',
        super('inactive', element);

  /// remission
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionClinicalStatusCodes.remission([this.element])
      : dbValue = 'remission',
        super('remission', element);

  /// resolved
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionClinicalStatusCodes.resolved([this.element])
      : dbValue = 'resolved',
        super('resolved', element);

  /// For instances where an Element is present but not value

  ConditionClinicalStatusCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ConditionClinicalStatusCodes._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'active',
    'recurrence',
    'relapse',
    'inactive',
    'remission',
    'resolved',
  ];

  /// Returns the enum value with an element attached
  ConditionClinicalStatusCodes withElement(Element? newElement) {
    return ConditionClinicalStatusCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConditionClinicalStatusCodes.$value';
}
