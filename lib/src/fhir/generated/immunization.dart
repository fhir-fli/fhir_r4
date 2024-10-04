import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Immunization {
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
  final CodeableConcept statusReason;
  final CodeableConcept vaccineCode;
  final Reference patient;
  final Reference encounter;
  final String occurrenceDateTime;
  final PrimitiveElement OccurrenceDateTime;
  final String occurrenceString;
  final PrimitiveElement OccurrenceString;
  final FhirDateTime recorded;
  final PrimitiveElement Recorded;
  final FhirBoolean primarySource;
  final PrimitiveElement PrimarySource;
  final CodeableConcept reportOrigin;
  final Reference location;
  final Reference manufacturer;
  final String lotNumber;
  final PrimitiveElement LotNumber;
  final FhirDate expirationDate;
  final PrimitiveElement ExpirationDate;
  final CodeableConcept site;
  final CodeableConcept route;
  final Quantity doseQuantity;
  final List<ImmunizationPerformer> performer;
  final List<Annotation> note;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final FhirBoolean isSubpotent;
  final PrimitiveElement IsSubpotent;
  final List<CodeableConcept> subpotentReason;
  final List<ImmunizationEducation> education;
  final List<CodeableConcept> programEligibility;
  final CodeableConcept fundingSource;
  final List<ImmunizationReaction> reaction;
  final List<ImmunizationProtocolApplied> protocolApplied;
  const Immunization({
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
    this.statusReason,
    required this.vaccineCode,
    required this.patient,
    this.encounter,
    this.occurrenceDateTime,
    this.OccurrenceDateTime,
    this.occurrenceString,
    this.OccurrenceString,
    this.recorded,
    this.Recorded,
    this.primarySource,
    this.PrimarySource,
    this.reportOrigin,
    this.location,
    this.manufacturer,
    this.lotNumber,
    this.LotNumber,
    this.expirationDate,
    this.ExpirationDate,
    this.site,
    this.route,
    this.doseQuantity,
    this.performer,
    this.note,
    this.reasonCode,
    this.reasonReference,
    this.isSubpotent,
    this.IsSubpotent,
    this.subpotentReason,
    this.education,
    this.programEligibility,
    this.fundingSource,
    this.reaction,
    this.protocolApplied,
  });
}
