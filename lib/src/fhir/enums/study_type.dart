// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of study the evidence was derived from.
@Entity()
class StudyType extends FhirCode {
  /// Factory constructor to create [StudyType] from JSON.
  factory StudyType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StudyType.elementOnly(element);
    }
    if (values.contains(value)) {
      return StudyType._(value, element);
    }
    throw ArgumentError(
      'StudyType.fromJson: JSON value is not a valid value',
    );
  }

  /// RCT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StudyType.RCT([this.element])
      : dbValue = 'RCT',
        super('RCT', element);

  /// CCT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StudyType.CCT([this.element])
      : dbValue = 'CCT',
        super('CCT', element);

  /// cohort
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StudyType.cohort([this.element])
      : dbValue = 'cohort',
        super('cohort', element);

  /// case_control
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StudyType.case_control([this.element])
      : dbValue = 'case-control',
        super('case-control', element);

  /// series
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StudyType.series([this.element])
      : dbValue = 'series',
        super('series', element);

  /// case_report
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StudyType.case_report([this.element])
      : dbValue = 'case-report',
        super('case-report', element);

  /// mixed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StudyType.mixed([this.element])
      : dbValue = 'mixed',
        super('mixed', element);

  /// For instances where an Element is present but not value

  StudyType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  StudyType._(super.input, [super.element])
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
    'RCT',
    'CCT',
    'cohort',
    'case-control',
    'series',
    'case-report',
    'mixed',
  ];

  /// Returns the enum value with an element attached
  StudyType withElement(Element? newElement) {
    return StudyType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StudyType.$value';
}
