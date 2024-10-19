// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Supplemental data in a population for measuring purposes.
@Entity()
class MeasureSupplementalDataExample extends FhirCode {
  /// Factory constructor to create [MeasureSupplementalDataExample] from JSON.
  factory MeasureSupplementalDataExample.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureSupplementalDataExample.elementOnly(element);
    }
    if (values.contains(value)) {
      return MeasureSupplementalDataExample._(value, element);
    }
    throw ArgumentError(
      'MeasureSupplementalDataExample.fromJson: JSON value is not a valid value',
    );
  }

  /// age
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureSupplementalDataExample.age([this.element])
      : dbValue = 'age',
        super('age', element);

  /// gender
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureSupplementalDataExample.gender([this.element])
      : dbValue = 'gender',
        super('gender', element);

  /// ethnicity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureSupplementalDataExample.ethnicity([this.element])
      : dbValue = 'ethnicity',
        super('ethnicity', element);

  /// payer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MeasureSupplementalDataExample.payer([this.element])
      : dbValue = 'payer',
        super('payer', element);

  /// For instances where an Element is present but not value

  MeasureSupplementalDataExample.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MeasureSupplementalDataExample._(super.input, [super.element])
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
    'age',
    'gender',
    'ethnicity',
    'payer',
  ];

  /// Returns the enum value with an element attached
  MeasureSupplementalDataExample withElement(Element? newElement) {
    return MeasureSupplementalDataExample._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MeasureSupplementalDataExample.$value';
}
