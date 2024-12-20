part of 'coverage_eligibility_request.dart';

/// The date or dates when the enclosed suite of services were performed or
/// completed.
sealed class ServicedXCoverageEligibilityRequestCoverageEligibilityRequest
    extends DataType {}

/// The date or dates when the enclosed suite of services were performed or
/// completed.
class DateServicedCoverageEligibilityRequestCoverageEligibilityRequest
    extends FhirDate
    implements ServicedXCoverageEligibilityRequestCoverageEligibilityRequest {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateServicedCoverageEligibilityRequestCoverageEligibilityRequest.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) =>
      FhirDate.fromString(
        input,
        element: element,
        id: id,
        extension_: extension_,
      ) as DateServicedCoverageEligibilityRequestCoverageEligibilityRequest;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateServicedCoverageEligibilityRequestCoverageEligibilityRequest.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateServicedCoverageEligibilityRequestCoverageEligibilityRequest;

  /// Factory constructor for super class
  factory DateServicedCoverageEligibilityRequestCoverageEligibilityRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json)
          as DateServicedCoverageEligibilityRequestCoverageEligibilityRequest;
}

/// The date or dates when the enclosed suite of services were performed or
/// completed.
class PeriodServicedCoverageEligibilityRequestCoverageEligibilityRequest
    extends Period
    implements ServicedXCoverageEligibilityRequestCoverageEligibilityRequest {
  /// Factory constructor for super class
  factory PeriodServicedCoverageEligibilityRequestCoverageEligibilityRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      Period.fromJson(json)
          as PeriodServicedCoverageEligibilityRequestCoverageEligibilityRequest;
}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
sealed class DiagnosisXCoverageEligibilityRequestDiagnosis extends DataType {}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
class CodeableConceptDiagnosisCoverageEligibilityRequestDiagnosis
    extends CodeableConcept
    implements DiagnosisXCoverageEligibilityRequestDiagnosis {
  /// Factory constructor for super class
  factory CodeableConceptDiagnosisCoverageEligibilityRequestDiagnosis.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptDiagnosisCoverageEligibilityRequestDiagnosis;
}

/// The nature of illness or problem in a coded form or as a reference to
/// an external defined Condition.
class ReferenceDiagnosisCoverageEligibilityRequestDiagnosis extends Reference
    implements DiagnosisXCoverageEligibilityRequestDiagnosis {
  /// Factory constructor for super class
  factory ReferenceDiagnosisCoverageEligibilityRequestDiagnosis.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceDiagnosisCoverageEligibilityRequestDiagnosis;
}
