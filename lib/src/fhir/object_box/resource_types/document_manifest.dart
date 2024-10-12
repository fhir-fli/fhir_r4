// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxDocumentManifest {
  ObjectBoxDocumentManifest({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.masterIdentifier,
    this.identifier,
    required this.status,
    this.statusElement,
    this.type,
    this.subject,
    this.created,
    this.createdElement,
    this.author,
    this.recipient,
    this.source,
    this.sourceElement,
    this.description,
    this.descriptionElement,
    required this.content,
    this.related,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxIdentifier>? masterIdentifier = ToOne<ObjectBoxIdentifier>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? subject = ToOne<ObjectBoxReference>();
  String? created;
  ToOne<ObjectBoxElement>? createdElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? author = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? recipient = ToMany<ObjectBoxReference>();
  String? source;
  ToOne<ObjectBoxElement>? sourceElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> content = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxDocumentManifestRelated>? related =
      ToMany<ObjectBoxDocumentManifestRelated>();
}

@Entity()
class ObjectBoxDocumentManifestRelated {
  ObjectBoxDocumentManifestRelated({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.ref,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxIdentifier>? identifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxReference>? ref = ToOne<ObjectBoxReference>();
}
