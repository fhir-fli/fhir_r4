import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ChargeItem {
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
  final List<FhirUri> definitionUri;
  final List<PrimitiveElement> DefinitionUri;
  final List<FhirCanonical> definitionCanonical;
  final FhirCode status;
  final PrimitiveElement Status;
  final List<Reference> partOf;
  final CodeableConcept code;
  final Reference subject;
  final Reference context;
  final String occurrenceDateTime;
  final PrimitiveElement OccurrenceDateTime;
  final Period occurrencePeriod;
  final Timing occurrenceTiming;
  final List<ChargeItemPerformer> performer;
  final Reference performingOrganization;
  final Reference requestingOrganization;
  final Reference costCenter;
  final Quantity quantity;
  final List<CodeableConcept> bodysite;
  final FhirDecimal factorOverride;
  final PrimitiveElement FactorOverride;
  final Money priceOverride;
  final String overrideReason;
  final PrimitiveElement OverrideReason;
  final Reference enterer;
  final FhirDateTime enteredDate;
  final PrimitiveElement EnteredDate;
  final List<CodeableConcept> reason;
  final List<Reference> service;
  final Reference productReference;
  final CodeableConcept productCodeableConcept;
  final List<Reference> account;
  final List<Annotation> note;
  final List<Reference> supportingInformation;
  const ChargeItem({
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
    this.definitionUri,
    this.DefinitionUri,
    this.definitionCanonical,
    this.status,
    this.Status,
    this.partOf,
    required this.code,
    required this.subject,
    this.context,
    this.occurrenceDateTime,
    this.OccurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.performer,
    this.performingOrganization,
    this.requestingOrganization,
    this.costCenter,
    this.quantity,
    this.bodysite,
    this.factorOverride,
    this.FactorOverride,
    this.priceOverride,
    this.overrideReason,
    this.OverrideReason,
    this.enterer,
    this.enteredDate,
    this.EnteredDate,
    this.reason,
    this.service,
    this.productReference,
    this.productCodeableConcept,
    this.account,
    this.note,
    this.supportingInformation,
  });
}
