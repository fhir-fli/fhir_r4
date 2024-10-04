import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClinicalImpression {
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
  final CodeableConcept code;
  final String description;
  final PrimitiveElement Description;
  final Reference subject;
  final Reference encounter;
  final String effectiveDateTime;
  final PrimitiveElement EffectiveDateTime;
  final Period effectivePeriod;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final Reference assessor;
  final Reference previous;
  final List<Reference> problem;
  final List<ClinicalImpressionInvestigation> investigation;
  final List<FhirUri> protocol;
  final List<PrimitiveElement> Protocol;
  final String summary;
  final PrimitiveElement Summary;
  final List<ClinicalImpressionFinding> finding;
  final List<CodeableConcept> prognosisCodeableConcept;
  final List<Reference> prognosisReference;
  final List<Reference> supportingInfo;
  final List<Annotation> note;
  const ClinicalImpression({
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
    this.code,
    this.description,
    this.Description,
    required this.subject,
    this.encounter,
    this.effectiveDateTime,
    this.EffectiveDateTime,
    this.effectivePeriod,
    this.date,
    this.Date,
    this.assessor,
    this.previous,
    this.problem,
    this.investigation,
    this.protocol,
    this.Protocol,
    this.summary,
    this.Summary,
    this.finding,
    this.prognosisCodeableConcept,
    this.prognosisReference,
    this.supportingInfo,
    this.note,
  });
}
