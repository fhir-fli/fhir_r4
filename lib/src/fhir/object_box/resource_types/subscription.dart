// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxSubscription {
  ObjectBoxSubscription({
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
    required this.status,
    this.statusElement,
    this.contact,
    this.end,
    this.endElement,
    required this.reason,
    this.reasonElement,
    required this.criteria,
    this.criteriaElement,
    this.error,
    this.errorElement,
    required this.channel,
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
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactPoint>? contact = ToMany<ObjectBoxContactPoint>();
  String? end;
  ToOne<ObjectBoxElement>? endElement = ToOne<ObjectBoxElement>();
  String reason;
  ToOne<ObjectBoxElement>? reasonElement = ToOne<ObjectBoxElement>();
  String criteria;
  ToOne<ObjectBoxElement>? criteriaElement = ToOne<ObjectBoxElement>();
  String? error;
  ToOne<ObjectBoxElement>? errorElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxSubscriptionChannel> channel =
      ToOne<ObjectBoxSubscriptionChannel>();
}

@Entity()
class ObjectBoxSubscriptionChannel {
  ObjectBoxSubscriptionChannel({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.typeElement,
    this.endpoint,
    this.endpointElement,
    this.payload,
    this.payloadElement,
    this.header,
    this.headerElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String? endpoint;
  ToOne<ObjectBoxElement>? endpointElement = ToOne<ObjectBoxElement>();
  String? payload;
  ToOne<ObjectBoxElement>? payloadElement = ToOne<ObjectBoxElement>();
  List<String>? header;
  ToMany<ObjectBoxElement>? headerElement = ToMany<ObjectBoxElement>();
}
