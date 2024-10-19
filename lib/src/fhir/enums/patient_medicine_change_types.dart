// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Example Item Flags for the List Resource. In this case, these are the kind of flags that would be used on a medication list at the end of a consultation.
@Entity()
class PatientMedicineChangeTypes extends FhirCode {
  /// Factory constructor to create [PatientMedicineChangeTypes] from JSON.
  factory PatientMedicineChangeTypes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PatientMedicineChangeTypes.elementOnly(element);
    }
    if (values.contains(value)) {
      return PatientMedicineChangeTypes._(value, element);
    }
    throw ArgumentError(
      'PatientMedicineChangeTypes.fromJson: JSON value is not a valid value',
    );
  }

  /// value01
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PatientMedicineChangeTypes.value01([this.element])
      : dbValue = '01',
        super('01', element);

  /// value02
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PatientMedicineChangeTypes.value02([this.element])
      : dbValue = '02',
        super('02', element);

  /// value03
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PatientMedicineChangeTypes.value03([this.element])
      : dbValue = '03',
        super('03', element);

  /// value04
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PatientMedicineChangeTypes.value04([this.element])
      : dbValue = '04',
        super('04', element);

  /// value05
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PatientMedicineChangeTypes.value05([this.element])
      : dbValue = '05',
        super('05', element);

  /// value06
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PatientMedicineChangeTypes.value06([this.element])
      : dbValue = '06',
        super('06', element);

  /// For instances where an Element is present but not value

  PatientMedicineChangeTypes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  PatientMedicineChangeTypes._(super.input, [super.element])
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
    '01',
    '02',
    '03',
    '04',
    '05',
    '06',
  ];

  /// Returns the enum value with an element attached
  PatientMedicineChangeTypes withElement(Element? newElement) {
    return PatientMedicineChangeTypes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PatientMedicineChangeTypes.$value';
}
