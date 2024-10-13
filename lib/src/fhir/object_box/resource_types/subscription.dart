// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxSubscription {
  ObjectBoxSubscription({
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
    required this.status,
    ObjectBoxElement? statusElement,
    List<ObjectBoxContactPoint>? contact,
    this.end,
    ObjectBoxElement? endElement,
    required this.reason,
    ObjectBoxElement? reasonElement,
    required this.criteria,
    ObjectBoxElement? criteriaElement,
    this.error,
    ObjectBoxElement? errorElement,
    ObjectBoxSubscriptionChannel? channel,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.statusElement.target = statusElement;
    this.contact.addAll(contact ?? []);
    this.endElement.target = endElement;
    this.reasonElement.target = reasonElement;
    this.criteriaElement.target = criteriaElement;
    this.errorElement.target = errorElement;
    this.channel.target = channel;
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
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactPoint> contact = ToMany<ObjectBoxContactPoint>();
  String? end;
  ToOne<ObjectBoxElement> endElement = ToOne<ObjectBoxElement>();
  String reason;
  ToOne<ObjectBoxElement> reasonElement = ToOne<ObjectBoxElement>();
  String criteria;
  ToOne<ObjectBoxElement> criteriaElement = ToOne<ObjectBoxElement>();
  String? error;
  ToOne<ObjectBoxElement> errorElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxSubscriptionChannel> channel =
      ToOne<ObjectBoxSubscriptionChannel>();
}

@Entity()
class ObjectBoxSubscriptionChannel {
  ObjectBoxSubscriptionChannel({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.type,
    ObjectBoxElement? typeElement,
    this.endpoint,
    ObjectBoxElement? endpointElement,
    this.payload,
    ObjectBoxElement? payloadElement,
    this.header,
    List<ObjectBoxElement>? headerElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.typeElement.target = typeElement;
    this.endpointElement.target = endpointElement;
    this.payloadElement.target = payloadElement;
    this.headerElement.addAll(headerElement ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String? endpoint;
  ToOne<ObjectBoxElement> endpointElement = ToOne<ObjectBoxElement>();
  String? payload;
  ToOne<ObjectBoxElement> payloadElement = ToOne<ObjectBoxElement>();
  List<String>? header;
  ToMany<ObjectBoxElement> headerElement = ToMany<ObjectBoxElement>();
}
