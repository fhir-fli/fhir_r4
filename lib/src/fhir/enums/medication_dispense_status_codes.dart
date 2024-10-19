// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// MedicationDispense Status Codes
@Entity()
class MedicationDispenseStatusCodes extends FhirCode {
  /// Factory constructor to create [MedicationDispenseStatusCodes] from JSON.
  factory MedicationDispenseStatusCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationDispenseStatusCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return MedicationDispenseStatusCodes._(value, element);
    }
    throw ArgumentError(
      'MedicationDispenseStatusCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// preparation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusCodes.preparation([this.element])
      : dbValue = 'preparation',
        super('preparation', element);

  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusCodes.in_progress([this.element])
      : dbValue = 'in-progress',
        super('in-progress', element);

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusCodes.cancelled([this.element])
      : dbValue = 'cancelled',
        super('cancelled', element);

  /// on_hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusCodes.on_hold([this.element])
      : dbValue = 'on-hold',
        super('on-hold', element);

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusCodes.completed([this.element])
      : dbValue = 'completed',
        super('completed', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusCodes.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// stopped
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusCodes.stopped([this.element])
      : dbValue = 'stopped',
        super('stopped', element);

  /// declined
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusCodes.declined([this.element])
      : dbValue = 'declined',
        super('declined', element);

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseStatusCodes.unknown([this.element])
      : dbValue = 'unknown',
        super('unknown', element);

  /// For instances where an Element is present but not value

  MedicationDispenseStatusCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MedicationDispenseStatusCodes._(super.input, [super.element])
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
    'preparation',
    'in-progress',
    'cancelled',
    'on-hold',
    'completed',
    'entered-in-error',
    'stopped',
    'declined',
    'unknown',
  ];

  /// Returns the enum value with an element attached
  MedicationDispenseStatusCodes withElement(Element? newElement) {
    return MedicationDispenseStatusCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationDispenseStatusCodes.$value';
}
