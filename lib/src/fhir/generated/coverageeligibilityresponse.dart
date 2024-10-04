import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CoverageEligibilityResponse {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final List<FhirCode> purpose;
  final List<PrimitiveElement> Purpose;
  final Reference patient;
  final String servicedDate;
  final PrimitiveElement ServicedDate;
  final Period servicedPeriod;
  final FhirDateTime created;
  final PrimitiveElement Created;
  final Reference requestor;
  final Reference request;
  final FhirCode outcome;
  final PrimitiveElement Outcome;
  final String disposition;
  final PrimitiveElement Disposition;
  final Reference insurer;
  final List<CoverageEligibilityResponseInsurance> insurance;
  final String preAuthRef;
  final PrimitiveElement PreAuthRef;
  final CodeableConcept form;
  final List<CoverageEligibilityResponseError> error;
  const CoverageEligibilityResponse({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.Status,
    this.purpose,
    this.Purpose,
    required this.patient,
    this.servicedDate,
    this.ServicedDate,
    this.servicedPeriod,
    this.created,
    this.Created,
    this.requestor,
    required this.request,
    this.outcome,
    this.Outcome,
    this.disposition,
    this.Disposition,
    required this.insurer,
    this.insurance,
    this.preAuthRef,
    this.PreAuthRef,
    this.form,
    this.error,
  });
}
