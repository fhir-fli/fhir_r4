// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes example Diagnosis Type codes.
@Entity()
class ExampleDiagnosisTypeCodes extends FhirCode {
  /// Factory constructor to create [ExampleDiagnosisTypeCodes] from JSON.
  factory ExampleDiagnosisTypeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleDiagnosisTypeCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ExampleDiagnosisTypeCodes._(value, element);
    }
    throw ArgumentError(
      'ExampleDiagnosisTypeCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// admitting
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleDiagnosisTypeCodes.admitting([this.element])
      : dbValue = 'admitting',
        super('admitting', element);

  /// clinical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleDiagnosisTypeCodes.clinical([this.element])
      : dbValue = 'clinical',
        super('clinical', element);

  /// differential
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleDiagnosisTypeCodes.differential([this.element])
      : dbValue = 'differential',
        super('differential', element);

  /// discharge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleDiagnosisTypeCodes.discharge([this.element])
      : dbValue = 'discharge',
        super('discharge', element);

  /// laboratory
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleDiagnosisTypeCodes.laboratory([this.element])
      : dbValue = 'laboratory',
        super('laboratory', element);

  /// nursing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleDiagnosisTypeCodes.nursing([this.element])
      : dbValue = 'nursing',
        super('nursing', element);

  /// prenatal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleDiagnosisTypeCodes.prenatal([this.element])
      : dbValue = 'prenatal',
        super('prenatal', element);

  /// principal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleDiagnosisTypeCodes.principal([this.element])
      : dbValue = 'principal',
        super('principal', element);

  /// radiology
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleDiagnosisTypeCodes.radiology([this.element])
      : dbValue = 'radiology',
        super('radiology', element);

  /// remote
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleDiagnosisTypeCodes.remote([this.element])
      : dbValue = 'remote',
        super('remote', element);

  /// retrospective
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleDiagnosisTypeCodes.retrospective([this.element])
      : dbValue = 'retrospective',
        super('retrospective', element);

  /// self
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleDiagnosisTypeCodes.self([this.element])
      : dbValue = 'self',
        super('self', element);

  /// For instances where an Element is present but not value

  ExampleDiagnosisTypeCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ExampleDiagnosisTypeCodes._(super.input, [super.element])
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
    'admitting',
    'clinical',
    'differential',
    'discharge',
    'laboratory',
    'nursing',
    'prenatal',
    'principal',
    'radiology',
    'remote',
    'retrospective',
    'self',
  ];

  /// Returns the enum value with an element attached
  ExampleDiagnosisTypeCodes withElement(Element? newElement) {
    return ExampleDiagnosisTypeCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleDiagnosisTypeCodes.$value';
}
