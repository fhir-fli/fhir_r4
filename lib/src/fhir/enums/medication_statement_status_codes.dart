// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// MedicationStatement Status Codes
@Entity()
class MedicationStatementStatusCodes extends FhirCode {
  /// Factory constructor to create [MedicationStatementStatusCodes] from JSON.
  factory MedicationStatementStatusCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationStatementStatusCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return MedicationStatementStatusCodes._(value, element);
    }
    throw ArgumentError(
      'MedicationStatementStatusCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationStatementStatusCodes.active([this.element])
      : dbValue = 'active',
        super('active', element);

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationStatementStatusCodes.completed([this.element])
      : dbValue = 'completed',
        super('completed', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationStatementStatusCodes.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// intended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationStatementStatusCodes.intended([this.element])
      : dbValue = 'intended',
        super('intended', element);

  /// stopped
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationStatementStatusCodes.stopped([this.element])
      : dbValue = 'stopped',
        super('stopped', element);

  /// on_hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationStatementStatusCodes.on_hold([this.element])
      : dbValue = 'on-hold',
        super('on-hold', element);

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationStatementStatusCodes.unknown([this.element])
      : dbValue = 'unknown',
        super('unknown', element);

  /// not_taken
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationStatementStatusCodes.not_taken([this.element])
      : dbValue = 'not-taken',
        super('not-taken', element);

  /// For instances where an Element is present but not value

  MedicationStatementStatusCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MedicationStatementStatusCodes._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'active',
    'completed',
    'entered-in-error',
    'intended',
    'stopped',
    'on-hold',
    'unknown',
    'not-taken',
  ];

  /// Returns the enum value with an element attached
  MedicationStatementStatusCodes withElement(Element? newElement) {
    return MedicationStatementStatusCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationStatementStatusCodes.$value';
}
