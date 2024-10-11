import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Basic extends Resource {
  Basic({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.code,
    this.subject,
    this.created,
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
  ToOne<CodeableConcept> code = ToOne<CodeableConcept>();
  ToOne<Reference>? subject = ToOne<Reference>();
  String? created;
  ToOne<Reference>? author = ToOne<Reference>();
}
