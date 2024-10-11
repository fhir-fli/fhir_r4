import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class RiskAssessment extends Resource {
  RiskAssessment({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.basedOn,
    this.parent,
    required this.status,
    this.method,
    this.code,
    required this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this.occurrencePeriod,
    this.condition,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.basis,
    this.prediction,
    this.mitigation,
    this.note,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  ToOne<Reference>? basedOn = ToOne<Reference>();
  ToOne<Reference>? parent = ToOne<Reference>();
  String status;
  ToOne<CodeableConcept>? method = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  ToOne<Reference> subject = ToOne<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  String? occurrenceDateTime;
  ToOne<Period>? occurrencePeriod = ToOne<Period>();
  ToOne<Reference>? condition = ToOne<Reference>();
  ToOne<Reference>? performer = ToOne<Reference>();
  ToMany<CodeableConcept>? reasonCode = ToMany<CodeableConcept>();
  ToMany<Reference>? reasonReference = ToMany<Reference>();
  ToMany<Reference>? basis = ToMany<Reference>();
  ToMany<RiskAssessmentPrediction>? prediction =
      ToMany<RiskAssessmentPrediction>();
  String? mitigation;
  ToMany<Annotation>? note = ToMany<Annotation>();
}

@Entity()
class RiskAssessmentPrediction {
  RiskAssessmentPrediction({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.outcome,
    this.probabilityDecimal,
    this.probabilityRange,
    this.qualitativeRisk,
    this.relativeRisk,
    this.whenPeriod,
    this.whenRange,
    this.rationale,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? outcome = ToOne<CodeableConcept>();
  double? probabilityDecimal;
  ToOne<Range>? probabilityRange = ToOne<Range>();
  ToOne<CodeableConcept>? qualitativeRisk = ToOne<CodeableConcept>();
  double? relativeRisk;
  ToOne<Period>? whenPeriod = ToOne<Period>();
  ToOne<Range>? whenRange = ToOne<Range>();
  String? rationale;
}
