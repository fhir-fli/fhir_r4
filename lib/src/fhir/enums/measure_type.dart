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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MeasureType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MeasureType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureType.elementOnly.withElement(element);
    }
    return MeasureType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MeasureType withElement(Element? newElement) {
    return MeasureType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
