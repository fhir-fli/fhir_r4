import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class FhirList extends Resource {
  FhirList({
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
    required this.mode,
    this.title,
    this.code,
    this.subject,
    this.encounter,
    this.date,
    this.source,
    this.orderedBy,
    this.note,
    this.entry,
    this.emptyReason,
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
  String mode;
  String? title;
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  ToOne<Reference>? subject = ToOne<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  String? date;
  ToOne<Reference>? source = ToOne<Reference>();
  ToOne<CodeableConcept>? orderedBy = ToOne<CodeableConcept>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToMany<ListEntry>? entry = ToMany<ListEntry>();
  ToOne<CodeableConcept>? emptyReason = ToOne<CodeableConcept>();
}

@Entity()
class ListEntry {
  ListEntry({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.flag,
    this.deleted,
    this.date,
    required this.item,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? flag = ToOne<CodeableConcept>();
  bool? deleted;
  String? date;
  ToOne<Reference> item = ToOne<Reference>();
}
