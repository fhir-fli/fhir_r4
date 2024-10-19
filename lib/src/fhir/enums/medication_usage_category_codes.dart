// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Medication Status Codes
@Entity()
class MedicationUsageCategoryCodes extends FhirCode {
  /// Factory constructor to create [MedicationUsageCategoryCodes] from JSON.
  factory MedicationUsageCategoryCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationUsageCategoryCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return MedicationUsageCategoryCodes._(value, element);
    }
    throw ArgumentError(
      'MedicationUsageCategoryCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// inpatient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationUsageCategoryCodes.inpatient([this.element])
      : dbValue = 'inpatient',
        super('inpatient', element);

  /// outpatient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationUsageCategoryCodes.outpatient([this.element])
      : dbValue = 'outpatient',
        super('outpatient', element);

  /// community
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationUsageCategoryCodes.community([this.element])
      : dbValue = 'community',
        super('community', element);

  /// patientspecified
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationUsageCategoryCodes.patientspecified([this.element])
      : dbValue = 'patientspecified',
        super('patientspecified', element);

  /// For instances where an Element is present but not value

  MedicationUsageCategoryCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MedicationUsageCategoryCodes._(super.input, [super.element])
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
    'patientspecified',
  ];

  /// Returns the enum value with an element attached
  MedicationUsageCategoryCodes withElement(Element? newElement) {
    return MedicationUsageCategoryCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationUsageCategoryCodes.$value';
}
