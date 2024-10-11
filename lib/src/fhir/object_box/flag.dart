import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Flag extends Resource {
  Flag({
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
    this.category,
    required this.code,
    required this.subject,
    this.period,
    this.encounter,
    this.author,
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
  ToMany<CodeableConcept>? category = ToMany<CodeableConcept>();
  ToOne<CodeableConcept> code = ToOne<CodeableConcept>();
  ToOne<Reference> subject = ToOne<Reference>();
  ToOne<Period>? period = ToOne<Period>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  ToOne<Reference>? author = ToOne<Reference>();
}
