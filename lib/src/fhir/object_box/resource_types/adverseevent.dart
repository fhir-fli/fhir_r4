import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class AdverseEvent extends Resource {
  AdverseEvent({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.actuality,
    this.category,
    this.event,
    required this.subject,
    this.encounter,
    this.date,
    this.detected,
    this.recordedDate,
    this.resultingCondition,
    this.location,
    this.seriousness,
    this.severity,
    this.outcome,
    this.recorder,
    this.contributor,
    this.suspectEntity,
    this.subjectMedicalHistory,
    this.referenceDocument,
    this.study,
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
  ToOne<Identifier>? identifier = ToOne<Identifier>();
  String actuality;
  ToMany<CodeableConcept>? category = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? event = ToOne<CodeableConcept>();
  ToOne<Reference> subject = ToOne<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  String? date;
  String? detected;
  String? recordedDate;
  ToMany<Reference>? resultingCondition = ToMany<Reference>();
  ToOne<Reference>? location = ToOne<Reference>();
  ToOne<CodeableConcept>? seriousness = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? severity = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? outcome = ToOne<CodeableConcept>();
  ToOne<Reference>? recorder = ToOne<Reference>();
  ToMany<Reference>? contributor = ToMany<Reference>();
  ToMany<AdverseEventSuspectEntity>? suspectEntity =
      ToMany<AdverseEventSuspectEntity>();
  ToMany<Reference>? subjectMedicalHistory = ToMany<Reference>();
  ToMany<Reference>? referenceDocument = ToMany<Reference>();
  ToMany<Reference>? study = ToMany<Reference>();
}

@Entity()
class AdverseEventSuspectEntity {
  AdverseEventSuspectEntity({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.instance,
    this.causality,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference> instance = ToOne<Reference>();
  ToMany<AdverseEventCausality>? causality = ToMany<AdverseEventCausality>();
}

@Entity()
class AdverseEventCausality {
  AdverseEventCausality({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.assessment,
    this.productRelatedness,
    this.author,
    this.method,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? assessment = ToOne<CodeableConcept>();
  String? productRelatedness;
  ToOne<Reference>? author = ToOne<Reference>();
  ToOne<CodeableConcept>? method = ToOne<CodeableConcept>();
}
