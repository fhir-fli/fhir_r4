import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Condition extends Resource {
  Condition({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.clinicalStatus,
    this.verificationStatus,
    this.category,
    this.severity,
    this.code,
    this.bodySite,
    required this.subject,
    this.encounter,
    this.onsetDateTime,
    this.onsetAge,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    this.abatementDateTime,
    this.abatementAge,
    this.abatementPeriod,
    this.abatementRange,
    this.abatementString,
    this.recordedDate,
    this.recorder,
    this.asserter,
    this.stage,
    this.evidence,
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
  ToOne<CodeableConcept>? clinicalStatus = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? verificationStatus = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? category = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? severity = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? bodySite = ToMany<CodeableConcept>();
  ToOne<Reference> subject = ToOne<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  String? onsetDateTime;
  ToOne<Age>? onsetAge = ToOne<Age>();
  ToOne<Period>? onsetPeriod = ToOne<Period>();
  ToOne<Range>? onsetRange = ToOne<Range>();
  String? onsetString;
  String? abatementDateTime;
  ToOne<Age>? abatementAge = ToOne<Age>();
  ToOne<Period>? abatementPeriod = ToOne<Period>();
  ToOne<Range>? abatementRange = ToOne<Range>();
  String? abatementString;
  String? recordedDate;
  ToOne<Reference>? recorder = ToOne<Reference>();
  ToOne<Reference>? asserter = ToOne<Reference>();
  ToMany<ConditionStage>? stage = ToMany<ConditionStage>();
  ToMany<ConditionEvidence>? evidence = ToMany<ConditionEvidence>();
  ToMany<Annotation>? note = ToMany<Annotation>();
}

@Entity()
class ConditionStage {
  ConditionStage({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.summary,
    this.assessment,
    this.type,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? summary = ToOne<CodeableConcept>();
  ToMany<Reference>? assessment = ToMany<Reference>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
}

@Entity()
class ConditionEvidence {
  ConditionEvidence({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.detail,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<CodeableConcept>? code = ToMany<CodeableConcept>();
  ToMany<Reference>? detail = ToMany<Reference>();
}
