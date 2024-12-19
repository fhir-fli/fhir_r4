part of 'measure.dart';

/// The intended subjects for the measure. If this element is not provided,
/// a Patient subject is assumed, but the subject of the measure can be
/// anything.
sealed class SubjectXMeasureMeasure {}

/// The intended subjects for the measure. If this element is not provided,
/// a Patient subject is assumed, but the subject of the measure can be
/// anything.
class CodeableConceptSubjectMeasureMeasure extends CodeableConcept
    implements SubjectXMeasureMeasure {
  /// Factory constructor for super class
  factory CodeableConceptSubjectMeasureMeasure.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json) as CodeableConceptSubjectMeasureMeasure;
}

/// The intended subjects for the measure. If this element is not provided,
/// a Patient subject is assumed, but the subject of the measure can be
/// anything.
class ReferenceSubjectMeasureMeasure extends Reference
    implements SubjectXMeasureMeasure {
  /// Factory constructor for super class
  factory ReferenceSubjectMeasureMeasure.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceSubjectMeasureMeasure;
}
