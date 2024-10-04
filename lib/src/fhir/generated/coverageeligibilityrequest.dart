import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CoverageEligibilityRequest {
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
  final CodeableConcept priority;
  final List<FhirCode> purpose;
  final List<PrimitiveElement> Purpose;
  final Reference patient;
  final String servicedDate;
  final PrimitiveElement ServicedDate;
  final Period servicedPeriod;
  final FhirDateTime created;
  final PrimitiveElement Created;
  final Reference enterer;
  final Reference provider;
  final Reference insurer;
  final Reference facility;
  final List<CoverageEligibilityRequestSupportingInfo> supportingInfo;
  final List<CoverageEligibilityRequestInsurance> insurance;
  final List<CoverageEligibilityRequestItem> item;
  const CoverageEligibilityRequest({
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
    this.priority,
    this.purpose,
    this.Purpose,
    required this.patient,
    this.servicedDate,
    this.ServicedDate,
    this.servicedPeriod,
    this.created,
    this.Created,
    this.enterer,
    this.provider,
    required this.insurer,
    this.facility,
    this.supportingInfo,
    this.insurance,
    this.item,
  });
}
