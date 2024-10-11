import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class SubscriptionStatus extends Resource {
  SubscriptionStatus({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.status,
    required this.type,
    this.eventsSinceSubscriptionStart,
    this.notificationEvent,
    required this.subscription,
    this.topic,
    this.error,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? status;
  String type;
  String? eventsSinceSubscriptionStart;
  ToMany<SubscriptionStatusNotificationEvent>? notificationEvent =
      ToMany<SubscriptionStatusNotificationEvent>();
  ToOne<Reference> subscription = ToOne<Reference>();
  String? topic;
  ToMany<CodeableConcept>? error = ToMany<CodeableConcept>();
}

@Entity()
class SubscriptionStatusNotificationEvent {
  SubscriptionStatusNotificationEvent({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.eventNumber,
    this.timestamp,
    this.focus,
    this.additionalContext,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String eventNumber;
  String? timestamp;
  ToOne<Reference>? focus = ToOne<Reference>();
  ToMany<Reference>? additionalContext = ToMany<Reference>();
}
