import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
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

  final FhirCode? status;
  final Element? statusElement;
  final FhirCode type;
  final Element? typeElement;
  final FhirString? eventsSinceSubscriptionStart;
  final Element? eventsSinceSubscriptionStartElement;
  final List<SubscriptionStatusNotificationEvent>? notificationEvent;
  final Reference subscription;
  final FhirCanonical? topic;
  final Element? topicElement;
  final List<CodeableConcept>? error;
  @override
  SubscriptionStatus clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
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

  final FhirString eventNumber;
  final Element? eventNumberElement;
  final FhirInstant? timestamp;
  final Element? timestampElement;
  final Reference? focus;
  final List<Reference>? additionalContext;
  @override
  SubscriptionStatusNotificationEvent clone() => throw UnimplementedError();
}
