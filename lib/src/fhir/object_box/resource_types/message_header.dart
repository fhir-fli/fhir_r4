// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMessageHeader {
  ObjectBoxMessageHeader({
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
    this.eventCoding,
    this.eventUri,
    this.eventUriElement,
    this.destination,
    this.sender,
    this.enterer,
    this.author,
    required this.source,
    this.responsible,
    this.reason,
    this.response,
    this.focus,
    this.definition,
    this.definitionElement,
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
  ToOne<ObjectBoxCoding>? eventCoding = ToOne<ObjectBoxCoding>();
  String? eventUri;
  ToOne<ObjectBoxElement>? eventUriElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxMessageHeaderDestination>? destination =
      ToMany<ObjectBoxMessageHeaderDestination>();
  ToOne<ObjectBoxReference>? sender = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? enterer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? author = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxMessageHeaderSource> source =
      ToOne<ObjectBoxMessageHeaderSource>();
  ToOne<ObjectBoxReference>? responsible = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? reason = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxMessageHeaderResponse>? response =
      ToOne<ObjectBoxMessageHeaderResponse>();
  ToMany<ObjectBoxReference>? focus = ToMany<ObjectBoxReference>();
  String? definition;
  ToOne<ObjectBoxElement>? definitionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMessageHeaderDestination {
  ObjectBoxMessageHeaderDestination({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.nameElement,
    this.target,
    required this.endpoint,
    this.endpointElement,
    this.receiver,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? target = ToOne<ObjectBoxReference>();
  String endpoint;
  ToOne<ObjectBoxElement>? endpointElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? receiver = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxMessageHeaderSource {
  ObjectBoxMessageHeaderSource({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.nameElement,
    this.software,
    this.softwareElement,
    this.version,
    this.versionElement,
    this.contact,
    required this.endpoint,
    this.endpointElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? software;
  ToOne<ObjectBoxElement>? softwareElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxContactPoint>? contact = ToOne<ObjectBoxContactPoint>();
  String endpoint;
  ToOne<ObjectBoxElement>? endpointElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMessageHeaderResponse {
  ObjectBoxMessageHeaderResponse({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.identifier,
    this.identifierElement,
    required this.code,
    this.codeElement,
    this.details,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String identifier;
  ToOne<ObjectBoxElement>? identifierElement = ToOne<ObjectBoxElement>();
  String code;
  ToOne<ObjectBoxElement>? codeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? details = ToOne<ObjectBoxReference>();
}
