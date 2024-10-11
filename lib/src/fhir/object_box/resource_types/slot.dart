import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Slot extends Resource {
  Slot({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.serviceCategory,
    this.serviceType,
    this.specialty,
    this.appointmentType,
    required this.schedule,
    required this.status,
    required this.start,
    required this.end,
    this.overbooked,
    this.comment,
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
  ToMany<CodeableConcept>? serviceCategory = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? serviceType = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? specialty = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? appointmentType = ToOne<CodeableConcept>();
  ToOne<Reference> schedule = ToOne<Reference>();
  String status;
  String start;
  String end;
  bool? overbooked;
  String? comment;
}
