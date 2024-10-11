import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ClinicalImpression extends Resource {
  ClinicalImpression({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.status,
    this.statusReason,
    this.code,
    this.description,
    required this.subject,
    this.encounter,
    this.effectiveDateTime,
    this.effectivePeriod,
    this.date,
    this.assessor,
    this.previous,
    this.problem,
    this.investigation,
    this.protocol,
    this.summary,
    this.finding,
    this.prognosisCodeableConcept,
    this.prognosisReference,
    this.supportingInfo,
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
  String status;
  ToOne<CodeableConcept>? statusReason = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  String? description;
  ToOne<Reference> subject = ToOne<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  String? effectiveDateTime;
  ToOne<Period>? effectivePeriod = ToOne<Period>();
  String? date;
  ToOne<Reference>? assessor = ToOne<Reference>();
  ToOne<Reference>? previous = ToOne<Reference>();
  ToMany<Reference>? problem = ToMany<Reference>();
  ToMany<ClinicalImpressionInvestigation>? investigation =
      ToMany<ClinicalImpressionInvestigation>();
  List<String>? protocol;
  String? summary;
  ToMany<ClinicalImpressionFinding>? finding =
      ToMany<ClinicalImpressionFinding>();
  ToMany<CodeableConcept>? prognosisCodeableConcept = ToMany<CodeableConcept>();
  ToMany<Reference>? prognosisReference = ToMany<Reference>();
  ToMany<Reference>? supportingInfo = ToMany<Reference>();
  ToMany<Annotation>? note = ToMany<Annotation>();
}

@Entity()
class ClinicalImpressionInvestigation {
  ClinicalImpressionInvestigation({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.item,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> code = ToOne<CodeableConcept>();
  ToMany<Reference>? item = ToMany<Reference>();
}

@Entity()
class ClinicalImpressionFinding {
  ClinicalImpressionFinding({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.basis,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? itemCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? itemReference = ToOne<Reference>();
  String? basis;
}
