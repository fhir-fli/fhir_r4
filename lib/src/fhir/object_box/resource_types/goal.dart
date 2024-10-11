import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Goal extends Resource {
  Goal({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.lifecycleStatus,
    this.achievementStatus,
    this.category,
    this.priority,
    required this.description,
    required this.subject,
    this.startDate,
    this.startCodeableConcept,
    this.target,
    this.statusDate,
    this.statusReason,
    this.expressedBy,
    this.addresses,
    this.note,
    this.outcomeCode,
    this.outcomeReference,
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
  String lifecycleStatus;
  ToOne<CodeableConcept>? achievementStatus = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? category = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? priority = ToOne<CodeableConcept>();
  ToOne<CodeableConcept> description = ToOne<CodeableConcept>();
  ToOne<Reference> subject = ToOne<Reference>();
  String? startDate;
  ToOne<CodeableConcept>? startCodeableConcept = ToOne<CodeableConcept>();
  ToMany<GoalTarget>? target = ToMany<GoalTarget>();
  String? statusDate;
  String? statusReason;
  ToOne<Reference>? expressedBy = ToOne<Reference>();
  ToMany<Reference>? addresses = ToMany<Reference>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToMany<CodeableConcept>? outcomeCode = ToMany<CodeableConcept>();
  ToMany<Reference>? outcomeReference = ToMany<Reference>();
}

@Entity()
class GoalTarget {
  GoalTarget({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.measure,
    this.detailQuantity,
    this.detailRange,
    this.detailCodeableConcept,
    this.detailString,
    this.detailBoolean,
    this.detailInteger,
    this.detailRatio,
    this.dueDate,
    this.dueDuration,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? measure = ToOne<CodeableConcept>();
  ToOne<Quantity>? detailQuantity = ToOne<Quantity>();
  ToOne<Range>? detailRange = ToOne<Range>();
  ToOne<CodeableConcept>? detailCodeableConcept = ToOne<CodeableConcept>();
  String? detailString;
  bool? detailBoolean;
  int? detailInteger;
  ToOne<Ratio>? detailRatio = ToOne<Ratio>();
  String? dueDate;
  ToOne<FhirDuration>? dueDuration = ToOne<FhirDuration>();
}
