// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxSubscriptionStatus {
  ObjectBoxSubscriptionStatus({
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
    this.status,
    ObjectBoxElement? statusElement,
    required this.type,
    ObjectBoxElement? typeElement,
    this.eventsSinceSubscriptionStart,
    ObjectBoxElement? eventsSinceSubscriptionStartElement,
    List<ObjectBoxSubscriptionStatusNotificationEvent>? notificationEvent,
    ObjectBoxReference? subscription,
    this.topic,
    ObjectBoxElement? topicElement,
    List<ObjectBoxCodeableConcept>? error,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.statusElement.target = statusElement;
    this.typeElement.target = typeElement;
    this.eventsSinceSubscriptionStartElement.target =
        eventsSinceSubscriptionStartElement;
    this.notificationEvent.addAll(notificationEvent ?? []);
    this.subscription.target = subscription;
    this.topicElement.target = topicElement;
    this.error.addAll(error ?? []);
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
  String? status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String? eventsSinceSubscriptionStart;
  ToOne<ObjectBoxElement> eventsSinceSubscriptionStartElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxSubscriptionStatusNotificationEvent> notificationEvent =
      ToMany<ObjectBoxSubscriptionStatusNotificationEvent>();
  ToOne<ObjectBoxReference> subscription = ToOne<ObjectBoxReference>();
  String? topic;
  ToOne<ObjectBoxElement> topicElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> error = ToMany<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxSubscriptionStatusNotificationEvent {
  ObjectBoxSubscriptionStatusNotificationEvent({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.eventNumber,
    ObjectBoxElement? eventNumberElement,
    this.timestamp,
    ObjectBoxElement? timestampElement,
    ObjectBoxReference? focus,
    List<ObjectBoxReference>? additionalContext,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.eventNumberElement.target = eventNumberElement;
    this.timestampElement.target = timestampElement;
    this.focus.target = focus;
    this.additionalContext.addAll(additionalContext ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String eventNumber;
  ToOne<ObjectBoxElement> eventNumberElement = ToOne<ObjectBoxElement>();
  String? timestamp;
  ToOne<ObjectBoxElement> timestampElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> focus = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> additionalContext = ToMany<ObjectBoxReference>();
}
