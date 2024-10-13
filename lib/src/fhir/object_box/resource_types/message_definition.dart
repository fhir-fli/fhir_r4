// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxMessageDefinition {
  ObjectBoxMessageDefinition({
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
    this.url,
    ObjectBoxElement? urlElement,
    List<ObjectBoxIdentifier>? identifier,
    this.version,
    ObjectBoxElement? versionElement,
    this.name,
    ObjectBoxElement? nameElement,
    this.title,
    ObjectBoxElement? titleElement,
    this.replaces,
    List<ObjectBoxElement>? replacesElement,
    required this.status,
    ObjectBoxElement? statusElement,
    this.experimental,
    ObjectBoxElement? experimentalElement,
    required this.date,
    ObjectBoxElement? dateElement,
    this.publisher,
    ObjectBoxElement? publisherElement,
    List<ObjectBoxContactDetail>? contact,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxUsageContext>? useContext,
    List<ObjectBoxCodeableConcept>? jurisdiction,
    this.purpose,
    ObjectBoxElement? purposeElement,
    this.copyright,
    ObjectBoxElement? copyrightElement,
    this.base,
    ObjectBoxElement? baseElement,
    this.parent,
    List<ObjectBoxElement>? parentElement,
    ObjectBoxCoding? eventCoding,
    this.eventUri,
    ObjectBoxElement? eventUriElement,
    this.category,
    ObjectBoxElement? categoryElement,
    List<ObjectBoxMessageDefinitionFocus>? focus,
    this.responseRequired,
    ObjectBoxElement? responseRequiredElement,
    List<ObjectBoxMessageDefinitionAllowedResponse>? allowedResponse,
    this.graph,
    List<ObjectBoxElement>? graphElement,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.urlElement.target = urlElement;
    this.identifier.addAll(identifier ?? []);
    this.versionElement.target = versionElement;
    this.nameElement.target = nameElement;
    this.titleElement.target = titleElement;
    this.replacesElement.addAll(replacesElement ?? []);
    this.statusElement.target = statusElement;
    this.experimentalElement.target = experimentalElement;
    this.dateElement.target = dateElement;
    this.publisherElement.target = publisherElement;
    this.contact.addAll(contact ?? []);
    this.descriptionElement.target = descriptionElement;
    this.useContext.addAll(useContext ?? []);
    this.jurisdiction.addAll(jurisdiction ?? []);
    this.purposeElement.target = purposeElement;
    this.copyrightElement.target = copyrightElement;
    this.baseElement.target = baseElement;
    this.parentElement.addAll(parentElement ?? []);
    this.eventCoding.target = eventCoding;
    this.eventUriElement.target = eventUriElement;
    this.categoryElement.target = categoryElement;
    this.focus.addAll(focus ?? []);
    this.responseRequiredElement.target = responseRequiredElement;
    this.allowedResponse.addAll(allowedResponse ?? []);
    this.graphElement.addAll(graphElement ?? []);
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
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  List<String>? replaces;
  ToMany<ObjectBoxElement> replacesElement = ToMany<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement> experimentalElement = ToOne<ObjectBoxElement>();
  String date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement> publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail> contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext> useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept> jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement> purposeElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement> copyrightElement = ToOne<ObjectBoxElement>();
  String? base;
  ToOne<ObjectBoxElement> baseElement = ToOne<ObjectBoxElement>();
  List<String>? parent;
  ToMany<ObjectBoxElement> parentElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxCoding> eventCoding = ToOne<ObjectBoxCoding>();
  String? eventUri;
  ToOne<ObjectBoxElement> eventUriElement = ToOne<ObjectBoxElement>();
  String? category;
  ToOne<ObjectBoxElement> categoryElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxMessageDefinitionFocus> focus =
      ToMany<ObjectBoxMessageDefinitionFocus>();
  String? responseRequired;
  ToOne<ObjectBoxElement> responseRequiredElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxMessageDefinitionAllowedResponse> allowedResponse =
      ToMany<ObjectBoxMessageDefinitionAllowedResponse>();
  List<String>? graph;
  ToMany<ObjectBoxElement> graphElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMessageDefinitionFocus {
  ObjectBoxMessageDefinitionFocus({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.code,
    ObjectBoxElement? codeElement,
    this.profile,
    ObjectBoxElement? profileElement,
    required this.min,
    ObjectBoxElement? minElement,
    this.max,
    ObjectBoxElement? maxElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.codeElement.target = codeElement;
    this.profileElement.target = profileElement;
    this.minElement.target = minElement;
    this.maxElement.target = maxElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  String? profile;
  ToOne<ObjectBoxElement> profileElement = ToOne<ObjectBoxElement>();
  int min;
  ToOne<ObjectBoxElement> minElement = ToOne<ObjectBoxElement>();
  String? max;
  ToOne<ObjectBoxElement> maxElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxMessageDefinitionAllowedResponse {
  ObjectBoxMessageDefinitionAllowedResponse({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.message,
    ObjectBoxElement? messageElement,
    this.situation,
    ObjectBoxElement? situationElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.messageElement.target = messageElement;
    this.situationElement.target = situationElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String message;
  ToOne<ObjectBoxElement> messageElement = ToOne<ObjectBoxElement>();
  String? situation;
  ToOne<ObjectBoxElement> situationElement = ToOne<ObjectBoxElement>();
}
