import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [SubscriptionStatus] /// The SubscriptionStatus resource describes the state of a Subscription
/// during notifications.
class SubscriptionStatus extends DomainResource {
  SubscriptionStatus({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
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
  }) : super(resourceType: R4ResourceType.SubscriptionStatus);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [status] /// The status of the subscription, which marks the server state for managing
  /// the subscription.
  final FhirCode? status;
  final Element? statusElement;

  /// [type] /// The type of event being conveyed with this notificaiton.
  final FhirCode type;
  final Element? typeElement;

  /// [eventsSinceSubscriptionStart] /// The total number of actual events which have been generated since the
  /// Subscription was created (inclusive of this notification) - regardless of
  /// how many have been successfully communicated. This number is NOT
  /// incremented for handshake and heartbeat notifications.
  final FhirString? eventsSinceSubscriptionStart;
  final Element? eventsSinceSubscriptionStartElement;

  /// [notificationEvent] /// Detailed information about events relevant to this subscription
  /// notification.
  final List<SubscriptionStatusNotificationEvent>? notificationEvent;

  /// [subscription] /// The reference to the Subscription which generated this notification.
  final Reference subscription;

  /// [topic] /// The reference to the SubscriptionTopic for the Subscription which generated
  /// this notification.
  final FhirCanonical? topic;
  final Element? topicElement;

  /// [error] /// A record of errors that occurred when the server processed a notification.
  final List<CodeableConcept>? error;
  @override
  SubscriptionStatus clone() => throw UnimplementedError();
  SubscriptionStatus copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? status,
    Element? statusElement,
    FhirCode? type,
    Element? typeElement,
    FhirString? eventsSinceSubscriptionStart,
    Element? eventsSinceSubscriptionStartElement,
    List<SubscriptionStatusNotificationEvent>? notificationEvent,
    Reference? subscription,
    FhirCanonical? topic,
    Element? topicElement,
    List<CodeableConcept>? error,
  }) {
    return SubscriptionStatus(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      eventsSinceSubscriptionStart:
          eventsSinceSubscriptionStart ?? this.eventsSinceSubscriptionStart,
      eventsSinceSubscriptionStartElement:
          eventsSinceSubscriptionStartElement ??
              this.eventsSinceSubscriptionStartElement,
      notificationEvent: notificationEvent ?? this.notificationEvent,
      subscription: subscription ?? this.subscription,
      topic: topic ?? this.topic,
      topicElement: topicElement ?? this.topicElement,
      error: error ?? this.error,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SubscriptionStatusNotificationEvent] /// Detailed information about events relevant to this subscription
/// notification.
class SubscriptionStatusNotificationEvent extends BackboneElement {
  SubscriptionStatusNotificationEvent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.eventNumber,
    this.eventNumberElement,
    this.timestamp,
    this.timestampElement,
    this.focus,
    this.additionalContext,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [eventNumber] /// The sequential number of this event in this subscription context. Note that
  /// this value is a 64-bit integer value, encoded as a string.
  final FhirString eventNumber;
  final Element? eventNumberElement;

  /// [timestamp] /// The actual time this event occured on the server.
  final FhirInstant? timestamp;
  final Element? timestampElement;

  /// [focus] /// The focus of this event. While this will usually be a reference to the
  /// focus resource of the event, it MAY contain a reference to a non-FHIR
  /// object.
  final Reference? focus;

  /// [additionalContext] /// Additional context information for this event. Generally, this will contain
  /// references to additional resources included with the event (e.g., the
  /// Patient relevant to an Encounter), however it MAY refer to non-FHIR
  /// objects.
  final List<Reference>? additionalContext;
  @override
  SubscriptionStatusNotificationEvent clone() => throw UnimplementedError();
  SubscriptionStatusNotificationEvent copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? eventNumber,
    Element? eventNumberElement,
    FhirInstant? timestamp,
    Element? timestampElement,
    Reference? focus,
    List<Reference>? additionalContext,
  }) {
    return SubscriptionStatusNotificationEvent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      eventNumber: eventNumber ?? this.eventNumber,
      eventNumberElement: eventNumberElement ?? this.eventNumberElement,
      timestamp: timestamp ?? this.timestamp,
      timestampElement: timestampElement ?? this.timestampElement,
      focus: focus ?? this.focus,
      additionalContext: additionalContext ?? this.additionalContext,
    );
  }
}
