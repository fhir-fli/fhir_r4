// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxDocumentManifest {
  ObjectBoxDocumentManifest({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxIdentifier? masterIdentifier,
    List<ObjectBoxIdentifier>? identifier,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? type,
    ObjectBoxReference? subject,
    this.created,
    ObjectBoxElement? createdElement,
    List<ObjectBoxReference>? author,
    List<ObjectBoxReference>? recipient,
    this.source,
    ObjectBoxElement? sourceElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxReference>? content,
    List<ObjectBoxDocumentManifestRelated>? related,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.masterIdentifier.target = masterIdentifier;
    this.identifier.addAll(identifier ?? []);
    this.statusElement.target = statusElement;
    this.type.target = type;
    this.subject.target = subject;
    this.createdElement.target = createdElement;
    this.author.addAll(author ?? []);
    this.recipient.addAll(recipient ?? []);
    this.sourceElement.target = sourceElement;
    this.descriptionElement.target = descriptionElement;
    this.content.addAll(content ?? []);
    this.related.addAll(related ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxIdentifier> masterIdentifier = ToOne<ObjectBoxIdentifier>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  String? created;
  ToOne<ObjectBoxElement> createdElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> author = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> recipient = ToMany<ObjectBoxReference>();
  String? source;
  ToOne<ObjectBoxElement> sourceElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> content = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxDocumentManifestRelated> related =
      ToMany<ObjectBoxDocumentManifestRelated>();
}

@Entity()
class ObjectBoxDocumentManifestRelated {
  ObjectBoxDocumentManifestRelated({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxIdentifier? identifier,
    ObjectBoxReference? ref,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.target = identifier;
    this.ref.target = ref;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxIdentifier> identifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxReference> ref = ToOne<ObjectBoxReference>();
}
