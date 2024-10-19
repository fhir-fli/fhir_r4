// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// MedicationAdministration Status Codes
@Entity()
class MedicationAdministrationStatusCodes extends FhirCode {
  /// Factory constructor to create [MedicationAdministrationStatusCodes] from JSON.
  factory MedicationAdministrationStatusCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationAdministrationStatusCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return MedicationAdministrationStatusCodes._(value, element);
    }
    throw ArgumentError(
      'MedicationAdministrationStatusCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationAdministrationStatusCodes.in_progress([this.element])
      : dbValue = 'in-progress',
        super('in-progress', element);

  /// not_done
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationAdministrationStatusCodes.not_done([this.element])
      : dbValue = 'not-done',
        super('not-done', element);

  /// on_hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationAdministrationStatusCodes.on_hold([this.element])
      : dbValue = 'on-hold',
        super('on-hold', element);

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationAdministrationStatusCodes.completed([this.element])
      : dbValue = 'completed',
        super('completed', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationAdministrationStatusCodes.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// stopped
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationAdministrationStatusCodes.stopped([this.element])
      : dbValue = 'stopped',
        super('stopped', element);

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationAdministrationStatusCodes.unknown([this.element])
      : dbValue = 'unknown',
        super('unknown', element);

  /// For instances where an Element is present but not value

  MedicationAdministrationStatusCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MedicationAdministrationStatusCodes._(super.input, [super.element])
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
    'in-progress',
    'not-done',
    'on-hold',
    'completed',
    'entered-in-error',
    'stopped',
    'unknown',
  ];

  /// Returns the enum value with an element attached
  MedicationAdministrationStatusCodes withElement(Element? newElement) {
    return MedicationAdministrationStatusCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationAdministrationStatusCodes.$value';
}
