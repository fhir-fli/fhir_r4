import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Schedule extends Resource {
  Schedule({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.active,
    this.serviceCategory,
    this.serviceType,
    this.specialty,
    required this.actor,
    this.planningHorizon,
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
  bool? active;
  ToMany<CodeableConcept>? serviceCategory = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? serviceType = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? specialty = ToMany<CodeableConcept>();
  ToMany<Reference> actor = ToMany<Reference>();
  ToOne<Period>? planningHorizon = ToOne<Period>();
  String? comment;
}
