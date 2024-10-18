// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of measure (includes codes from 2.16.840.1.113883.1.11.20368).
enum MeasureType {
  /// Display: Process
  /// Definition: A measure which focuses on a process which leads to a certain outcome, meaning that a scientific basis exists for believing that the process, when executed well, will increase the probability of achieving a desired outcome.
  process('process'),

  /// Display: Outcome
  /// Definition: A measure that indicates the result of the performance (or non-performance) of a function or process.
  outcome('outcome'),

  /// Display: Structure
  /// Definition: A measure that focuses on a health care provider's capacity, systems, and processes to provide high-quality care.
  structure('structure'),

  /// Display: Patient Reported Outcome
  /// Definition: A measure that focuses on patient-reported information such as patient engagement or patient experience measures.
  patient_reported_outcome('patient-reported-outcome'),

  /// Display: Composite
  /// Definition: A measure that combines multiple component measures in to a single quality measure.
  composite('composite'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const MeasureType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [MeasureType] instances.
  static MeasureType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureType.elementOnly.withElement(element);
    }
    return MeasureType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  MeasureType withElement(Element? newElement) {
    return MeasureType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
