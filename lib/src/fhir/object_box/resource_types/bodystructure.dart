import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class BodyStructure extends Resource {
  BodyStructure({
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
    this.morphology,
    this.location,
    this.locationQualifier,
    this.description,
    this.image,
    required this.patient,
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
  ToOne<CodeableConcept>? morphology = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? location = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? locationQualifier = ToMany<CodeableConcept>();
  String? description;
  ToMany<Attachment>? image = ToMany<Attachment>();
  ToOne<Reference> patient = ToOne<Reference>();
}
