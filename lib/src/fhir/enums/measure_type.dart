import 'package:json_annotation/json_annotation.dart';

/// The type of measure (includes codes from 2.16.840.1.113883.1.11.20368).
enum MeasureType {
  /// Display: Process
  /// Definition: A measure which focuses on a process which leads to a certain outcome, meaning that a scientific basis exists for believing that the process, when executed well, will increase the probability of achieving a desired outcome.
  @JsonValue('process')
  process,

  /// Display: Outcome
  /// Definition: A measure that indicates the result of the performance (or non-performance) of a function or process.
  @JsonValue('outcome')
  outcome,

  /// Display: Structure
  /// Definition: A measure that focuses on a health care provider's capacity, systems, and processes to provide high-quality care.
  @JsonValue('structure')
  structure,

  /// Display: Patient Reported Outcome
  /// Definition: A measure that focuses on patient-reported information such as patient engagement or patient experience measures.
  @JsonValue('patient-reported-outcome')
  patient_reported_outcome,

  /// Display: Composite
  /// Definition: A measure that combines multiple component measures in to a single quality measure.
  @JsonValue('composite')
  composite,
  ;

  @override
  String toString() {
    switch (this) {
      case process:
        return 'process';
      case outcome:
        return 'outcome';
      case structure:
        return 'structure';
      case patient_reported_outcome:
        return 'patient-reported-outcome';
      case composite:
        return 'composite';
    }
  }

  String toJson() => toString();
  static MeasureType fromString(String str) {
    switch (str) {
      case 'process':
        return MeasureType.process;
      case 'outcome':
        return MeasureType.outcome;
      case 'structure':
        return MeasureType.structure;
      case 'patient-reported-outcome':
        return MeasureType.patient_reported_outcome;
      case 'composite':
        return MeasureType.composite;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static MeasureType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
