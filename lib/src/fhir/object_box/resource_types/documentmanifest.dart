import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class DocumentManifest extends Resource {
  DocumentManifest({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.masterIdentifier,
    this.identifier,
    required this.status,
    this.type,
    this.subject,
    this.created,
    this.author,
    this.recipient,
    this.source,
    this.description,
    required this.content,
    this.related,
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
  ToOne<Identifier>? masterIdentifier = ToOne<Identifier>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String status;
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<Reference>? subject = ToOne<Reference>();
  String? created;
  ToMany<Reference>? author = ToMany<Reference>();
  ToMany<Reference>? recipient = ToMany<Reference>();
  String? source;
  String? description;
  ToMany<Reference> content = ToMany<Reference>();
  ToMany<DocumentManifestRelated>? related = ToMany<DocumentManifestRelated>();
}

@Entity()
class DocumentManifestRelated {
  DocumentManifestRelated({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.ref,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Identifier>? identifier = ToOne<Identifier>();
  ToOne<Reference>? ref = ToOne<Reference>();
}
