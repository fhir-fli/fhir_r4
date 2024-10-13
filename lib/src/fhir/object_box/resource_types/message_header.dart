// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMessageHeader {
  ObjectBoxMessageHeader({
    this.id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCoding? eventCoding,
    this.eventUri,
    ObjectBoxElement? eventUriElement,
    List<ObjectBoxMessageHeaderDestination>? destination,
    ObjectBoxReference? sender,
    ObjectBoxReference? enterer,
    ObjectBoxReference? author,
    ObjectBoxMessageHeaderSource? source,
    ObjectBoxReference? responsible,
    ObjectBoxCodeableConcept? reason,
    ObjectBoxMessageHeaderResponse? response,
    List<ObjectBoxReference>? focus,
    this.definition,
    ObjectBoxElement? definitionElement,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.eventCoding.target = eventCoding;
    this.eventUriElement.target = eventUriElement;
    this.destination.addAll(destination ?? []);
    this.sender.target = sender;
    this.enterer.target = enterer;
    this.author.target = author;
    this.source.target = source;
    this.responsible.target = responsible;
    this.reason.target = reason;
    this.response.target = response;
    this.focus.addAll(focus ?? []);
    this.definitionElement.target = definitionElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
  ToOne<ObjectBoxCoding> eventCoding = ToOne<ObjectBoxCoding>();
  String? eventUri;
  ToOne<ObjectBoxElement> eventUriElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxMessageHeaderDestination> destination =
      ToMany<ObjectBoxMessageHeaderDestination>();
  ToOne<ObjectBoxReference> sender = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> enterer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> author = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxMessageHeaderSource> source =
      ToOne<ObjectBoxMessageHeaderSource>();
  ToOne<ObjectBoxReference> responsible = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> reason = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxMessageHeaderResponse> response =
      ToOne<ObjectBoxMessageHeaderResponse>();
  ToMany<ObjectBoxReference> focus = ToMany<ObjectBoxReference>();
  String? definition;
  ToOne<ObjectBoxElement> definitionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMessageHeaderDestination {
  ObjectBoxMessageHeaderDestination({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.name,
    ObjectBoxElement? nameElement,
    ObjectBoxReference? target,
    required this.endpoint,
    ObjectBoxElement? endpointElement,
    ObjectBoxReference? receiver,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.target.target = target;
    this.endpointElement.target = endpointElement;
    this.receiver.target = receiver;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> target = ToOne<ObjectBoxReference>();
  String endpoint;
  ToOne<ObjectBoxElement> endpointElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> receiver = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMessageHeaderSource {
  ObjectBoxMessageHeaderSource({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.name,
    ObjectBoxElement? nameElement,
    this.software,
    ObjectBoxElement? softwareElement,
    this.version,
    ObjectBoxElement? versionElement,
    ObjectBoxContactPoint? contact,
    required this.endpoint,
    ObjectBoxElement? endpointElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.softwareElement.target = softwareElement;
    this.versionElement.target = versionElement;
    this.contact.target = contact;
    this.endpointElement.target = endpointElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? software;
  ToOne<ObjectBoxElement> softwareElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxContactPoint> contact = ToOne<ObjectBoxContactPoint>();
  String endpoint;
  ToOne<ObjectBoxElement> endpointElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMessageHeaderResponse {
  ObjectBoxMessageHeaderResponse({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.identifier,
    ObjectBoxElement? identifierElement,
    required this.code,
    ObjectBoxElement? codeElement,
    ObjectBoxReference? details,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifierElement.target = identifierElement;
    this.codeElement.target = codeElement;
    this.details.target = details;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String identifier;
  ToOne<ObjectBoxElement> identifierElement = ToOne<ObjectBoxElement>();
  String code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> details = ToOne<ObjectBoxReference>();
}
