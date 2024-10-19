// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// MedicationAdministration Category Codes
@Entity()
class MedicationAdministrationCategoryCodes extends FhirCode {
  /// Factory constructor to create [MedicationAdministrationCategoryCodes] from JSON.
  factory MedicationAdministrationCategoryCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationAdministrationCategoryCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return MedicationAdministrationCategoryCodes._(value, element);
    }
    throw ArgumentError(
      'MedicationAdministrationCategoryCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// inpatient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationAdministrationCategoryCodes.inpatient([this.element])
      : dbValue = 'inpatient',
        super('inpatient', element);

  /// outpatient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationAdministrationCategoryCodes.outpatient([this.element])
      : dbValue = 'outpatient',
        super('outpatient', element);

  /// community
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationAdministrationCategoryCodes.community([this.element])
      : dbValue = 'community',
        super('community', element);

  /// For instances where an Element is present but not value

  MedicationAdministrationCategoryCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MedicationAdministrationCategoryCodes._(super.input, [super.element])
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
    'inpatient',
    'outpatient',
    'community',
  ];

  /// Returns the enum value with an element attached
  MedicationAdministrationCategoryCodes withElement(Element? newElement) {
    return MedicationAdministrationCategoryCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationAdministrationCategoryCodes.$value';
}
