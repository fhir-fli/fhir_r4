import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Composition extends Resource {
  Composition({
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
    required this.type,
    this.category,
    this.subject,
    this.encounter,
    required this.date,
    required this.author,
    required this.title,
    this.confidentiality,
    this.attester,
    this.custodian,
    this.relatesTo,
    this.event,
    this.section,
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
  String status;
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? category = ToMany<CodeableConcept>();
  ToOne<Reference>? subject = ToOne<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  String date;
  ToMany<Reference> author = ToMany<Reference>();
  String title;
  String? confidentiality;
  ToMany<CompositionAttester>? attester = ToMany<CompositionAttester>();
  ToOne<Reference>? custodian = ToOne<Reference>();
  ToMany<CompositionRelatesTo>? relatesTo = ToMany<CompositionRelatesTo>();
  ToMany<CompositionEvent>? event = ToMany<CompositionEvent>();
  ToMany<CompositionSection>? section = ToMany<CompositionSection>();
}

@Entity()
class CompositionAttester {
  CompositionAttester({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.mode,
    this.time,
    this.party,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String mode;
  String? time;
  ToOne<Reference>? party = ToOne<Reference>();
}

@Entity()
class CompositionRelatesTo {
  CompositionRelatesTo({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.targetIdentifier,
    this.targetReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  ToOne<Identifier>? targetIdentifier = ToOne<Identifier>();
  ToOne<Reference>? targetReference = ToOne<Reference>();
}

@Entity()
class CompositionEvent {
  CompositionEvent({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.period,
    this.detail,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<CodeableConcept>? code = ToMany<CodeableConcept>();
  ToOne<Period>? period = ToOne<Period>();
  ToMany<Reference>? detail = ToMany<Reference>();
}

@Entity()
class CompositionSection {
  CompositionSection({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.title,
    this.code,
    this.author,
    this.focus,
    this.text,
    this.mode,
    this.orderedBy,
    this.entry,
    this.emptyReason,
    this.section,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? title;
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  ToMany<Reference>? author = ToMany<Reference>();
  ToOne<Reference>? focus = ToOne<Reference>();
  ToOne<Narrative>? text = ToOne<Narrative>();
  String? mode;
  ToOne<CodeableConcept>? orderedBy = ToOne<CodeableConcept>();
  ToMany<Reference>? entry = ToMany<Reference>();
  ToOne<CodeableConcept>? emptyReason = ToOne<CodeableConcept>();
  ToMany<CompositionSection>? section = ToMany<CompositionSection>();
}
