// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of measure (includes codes from 2.16.840.1.113883.1.11.20368).
@Entity()
class MeasureType extends FhirCode {
  /// Factory constructor to create [MeasureType] from JSON.
  factory MeasureType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureType.elementOnly(element);
    }
    if (values.contains(value)) {
      return MeasureType._(value, element);
    }
    throw ArgumentError(
      'MeasureType.fromJson: JSON value is not a valid value',
    );
  }

  /// process
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureType.process([this.element])
      : dbValue = 'process',
        super('process', element);

  /// outcome
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureType.outcome([this.element])
      : dbValue = 'outcome',
        super('outcome', element);

  /// structure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureType.structure([this.element])
      : dbValue = 'structure',
        super('structure', element);

  /// patient_reported_outcome
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureType.patient_reported_outcome([this.element])
      : dbValue = 'patient-reported-outcome',
        super('patient-reported-outcome', element);

  /// composite
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureType.composite([this.element])
      : dbValue = 'composite',
        super('composite', element);

  /// For instances where an Element is present but not value

  MeasureType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MeasureType._(super.input, [super.element])
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
    'process',
    'outcome',
    'structure',
    'patient-reported-outcome',
    'composite',
  ];

  /// Returns the enum value with an element attached
  MeasureType withElement(Element? newElement) {
    return MeasureType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MeasureType.$value';
}
