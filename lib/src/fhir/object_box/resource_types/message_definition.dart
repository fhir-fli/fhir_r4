// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMessageDefinition {
  ObjectBoxMessageDefinition({
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
    this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    this.replaces,
    this.replacesElement,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    required this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.purposeElement,
    this.copyright,
    this.copyrightElement,
    this.base,
    this.baseElement,
    this.parent,
    this.parentElement,
    this.eventCoding,
    this.eventUri,
    this.eventUriElement,
    this.category,
    this.categoryElement,
    this.focus,
    this.responseRequired,
    this.responseRequiredElement,
    this.allowedResponse,
    this.graph,
    this.graphElement,
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
  String? url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  List<String>? replaces;
  ToMany<ObjectBoxElement>? replacesElement = ToMany<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement>? experimentalElement = ToOne<ObjectBoxElement>();
  String date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement>? publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail>? contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext>? useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept>? jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement>? purposeElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement>? copyrightElement = ToOne<ObjectBoxElement>();
  String? base;
  ToOne<ObjectBoxElement>? baseElement = ToOne<ObjectBoxElement>();
  List<String>? parent;
  ToMany<ObjectBoxElement>? parentElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxCoding>? eventCoding = ToOne<ObjectBoxCoding>();
  String? eventUri;
  ToOne<ObjectBoxElement>? eventUriElement = ToOne<ObjectBoxElement>();
  String? category;
  ToOne<ObjectBoxElement>? categoryElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxMessageDefinitionFocus>? focus =
      ToMany<ObjectBoxMessageDefinitionFocus>();
  String? responseRequired;
  ToOne<ObjectBoxElement>? responseRequiredElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxMessageDefinitionAllowedResponse>? allowedResponse =
      ToMany<ObjectBoxMessageDefinitionAllowedResponse>();
  List<String>? graph;
  ToMany<ObjectBoxElement>? graphElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMessageDefinitionFocus {
  ObjectBoxMessageDefinitionFocus({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.codeElement,
    this.profile,
    this.profileElement,
    required this.min,
    this.minElement,
    this.max,
    this.maxElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement>? codeElement = ToOne<ObjectBoxElement>();
  String? profile;
  ToOne<ObjectBoxElement>? profileElement = ToOne<ObjectBoxElement>();
  int min;
  ToOne<ObjectBoxElement>? minElement = ToOne<ObjectBoxElement>();
  String? max;
  ToOne<ObjectBoxElement>? maxElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMessageDefinitionAllowedResponse {
  ObjectBoxMessageDefinitionAllowedResponse({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.message,
    this.messageElement,
    this.situation,
    this.situationElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String message;
  ToOne<ObjectBoxElement>? messageElement = ToOne<ObjectBoxElement>();
  String? situation;
  ToOne<ObjectBoxElement>? situationElement = ToOne<ObjectBoxElement>();
}
