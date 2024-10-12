// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxSubscriptionStatus {
  ObjectBoxSubscriptionStatus({
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
    this.status,
    this.statusElement,
    required this.type,
    this.typeElement,
    this.eventsSinceSubscriptionStart,
    this.eventsSinceSubscriptionStartElement,
    this.notificationEvent,
    required this.subscription,
    this.topic,
    this.topicElement,
    this.error,
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
  String? status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String? eventsSinceSubscriptionStart;
  ToOne<ObjectBoxElement>? eventsSinceSubscriptionStartElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxSubscriptionStatusNotificationEvent>? notificationEvent =
      ToMany<ObjectBoxSubscriptionStatusNotificationEvent>();
  ToOne<ObjectBoxReference> subscription = ToOne<ObjectBoxReference>();
  String? topic;
  ToOne<ObjectBoxElement>? topicElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? error = ToMany<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxSubscriptionStatusNotificationEvent {
  ObjectBoxSubscriptionStatusNotificationEvent({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.eventNumber,
    this.eventNumberElement,
    this.timestamp,
    this.timestampElement,
    this.focus,
    this.additionalContext,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String eventNumber;
  ToOne<ObjectBoxElement>? eventNumberElement = ToOne<ObjectBoxElement>();
  String? timestamp;
  ToOne<ObjectBoxElement>? timestampElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? focus = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? additionalContext = ToMany<ObjectBoxReference>();
}
