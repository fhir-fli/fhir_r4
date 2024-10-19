// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// MedicationDispense Category Codes
@Entity()
class MedicationDispenseCategoryCodes extends FhirCode {
  /// Factory constructor to create [MedicationDispenseCategoryCodes] from JSON.
  factory MedicationDispenseCategoryCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationDispenseCategoryCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return MedicationDispenseCategoryCodes._(value, element);
    }
    throw ArgumentError(
      'MedicationDispenseCategoryCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// inpatient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseCategoryCodes.inpatient([this.element])
      : dbValue = 'inpatient',
        super('inpatient', element);

  /// outpatient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseCategoryCodes.outpatient([this.element])
      : dbValue = 'outpatient',
        super('outpatient', element);

  /// community
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseCategoryCodes.community([this.element])
      : dbValue = 'community',
        super('community', element);

  /// discharge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationDispenseCategoryCodes.discharge([this.element])
      : dbValue = 'discharge',
        super('discharge', element);

  /// For instances where an Element is present but not value

  MedicationDispenseCategoryCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MedicationDispenseCategoryCodes._(super.input, [super.element])
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
    'inpatient',
    'outpatient',
    'community',
    'discharge',
  ];

  /// Returns the enum value with an element attached
  MedicationDispenseCategoryCodes withElement(Element? newElement) {
    return MedicationDispenseCategoryCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationDispenseCategoryCodes.$value';
}
