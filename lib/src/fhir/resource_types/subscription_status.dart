import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class SubscriptionStatus extends DomainResource {
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

  @override
  SubscriptionStatus clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SubscriptionStatusNotificationEvent extends BackboneElement {
  final FhirString eventNumber;
  final Element? eventNumberElement;
  final FhirInstant? timestamp;
  final Element? timestampElement;
  final Reference? focus;
  final List<Reference>? additionalContext;

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

  @override
  SubscriptionStatusNotificationEvent clone() => throw UnimplementedError();
}
