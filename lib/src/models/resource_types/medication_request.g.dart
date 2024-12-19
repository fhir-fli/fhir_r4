part of 'medication_request.dart';

/// Indicates if this record was captured as a secondary 'reported' record
/// rather than as an original primary source-of-truth record. It may also
/// indicate the source of the report.
sealed class ReportedXMedicationRequestMedicationRequest {}

/// Indicates if this record was captured as a secondary 'reported' record
/// rather than as an original primary source-of-truth record. It may also
/// indicate the source of the report.
class BooleanReportedMedicationRequestMedicationRequest extends FhirBoolean
    implements ReportedXMedicationRequestMedicationRequest {
  /// Constructor for [BooleanReportedMedicationRequestMedicationRequest]
  BooleanReportedMedicationRequestMedicationRequest(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanReportedMedicationRequestMedicationRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json)
          as BooleanReportedMedicationRequestMedicationRequest;
}

/// Indicates if this record was captured as a secondary 'reported' record
/// rather than as an original primary source-of-truth record. It may also
/// indicate the source of the report.
class ReferenceReportedMedicationRequestMedicationRequest extends Reference
    implements ReportedXMedicationRequestMedicationRequest {
  /// Factory constructor for super class
  factory ReferenceReportedMedicationRequestMedicationRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceReportedMedicationRequestMedicationRequest;
}

/// Identifies the medication being requested. This is a link to a resource
/// that represents the medication which may be the details of the
/// medication or simply an attribute carrying a code that identifies the
/// medication from a known list of medications.
sealed class MedicationXMedicationRequestMedicationRequest {}

/// Identifies the medication being requested. This is a link to a resource
/// that represents the medication which may be the details of the
/// medication or simply an attribute carrying a code that identifies the
/// medication from a known list of medications.
class CodeableConceptMedicationMedicationRequestMedicationRequest
    extends CodeableConcept
    implements MedicationXMedicationRequestMedicationRequest {
  /// Factory constructor for super class
  factory CodeableConceptMedicationMedicationRequestMedicationRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptMedicationMedicationRequestMedicationRequest;
}

/// Identifies the medication being requested. This is a link to a resource
/// that represents the medication which may be the details of the
/// medication or simply an attribute carrying a code that identifies the
/// medication from a known list of medications.
class ReferenceMedicationMedicationRequestMedicationRequest extends Reference
    implements MedicationXMedicationRequestMedicationRequest {
  /// Factory constructor for super class
  factory ReferenceMedicationMedicationRequestMedicationRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceMedicationMedicationRequestMedicationRequest;
}

/// True if the prescriber allows a different drug to be dispensed from
/// what was prescribed.
sealed class AllowedXMedicationRequestSubstitution {}

/// True if the prescriber allows a different drug to be dispensed from
/// what was prescribed.
class BooleanAllowedMedicationRequestSubstitution extends FhirBoolean
    implements AllowedXMedicationRequestSubstitution {
  /// Constructor for [BooleanAllowedMedicationRequestSubstitution]
  BooleanAllowedMedicationRequestSubstitution(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanAllowedMedicationRequestSubstitution.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanAllowedMedicationRequestSubstitution;
}

/// True if the prescriber allows a different drug to be dispensed from
/// what was prescribed.
class CodeableConceptAllowedMedicationRequestSubstitution
    extends CodeableConcept implements AllowedXMedicationRequestSubstitution {
  /// Factory constructor for super class
  factory CodeableConceptAllowedMedicationRequestSubstitution.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptAllowedMedicationRequestSubstitution;
}
