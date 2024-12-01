// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Supplemental data in a population for measuring purposes.
class MeasureSupplementalDataExample {
  // Private constructor for internal use (like enum)
  MeasureSupplementalDataExample._(this.fhirCode, {this.element});

  /// Factory constructor to create [MeasureSupplementalDataExample] from JSON.
  factory MeasureSupplementalDataExample.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureSupplementalDataExample.elementOnly.withElement(element);
    }
    return MeasureSupplementalDataExample._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MeasureSupplementalDataExample values
  /// age
  static final MeasureSupplementalDataExample age =
      MeasureSupplementalDataExample._(
    'age',
  );

  /// gender
  static final MeasureSupplementalDataExample gender =
      MeasureSupplementalDataExample._(
    'gender',
  );

  /// ethnicity
  static final MeasureSupplementalDataExample ethnicity =
      MeasureSupplementalDataExample._(
    'ethnicity',
  );

  /// payer
  static final MeasureSupplementalDataExample payer =
      MeasureSupplementalDataExample._(
    'payer',
  );

  /// For instances where an Element is present but not value

  static final MeasureSupplementalDataExample elementOnly =
      MeasureSupplementalDataExample._('');

  /// List of all enum-like values
  static final List<MeasureSupplementalDataExample> values = [
    age,
    gender,
    ethnicity,
    payer,
  ];

  /// Returns the enum value with an element attached
  MeasureSupplementalDataExample withElement(Element? newElement) {
    return MeasureSupplementalDataExample._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
