import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class SubscriptionStatus extends DomainResource {
  final FhirCode? status;
  final Element? statusElement;
  final FhirCode? type;
  final Element? typeElement;
  final FhirString? eventsSinceSubscriptionStart;
  final Element? eventsSinceSubscriptionStartElement;
  final List<SubscriptionStatusNotificationEvent>? notificationEvent;
  final Reference subscription;
  final FhirCanonical? topic;
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
    this.type,
    this.typeElement,
    this.eventsSinceSubscriptionStart,
    this.eventsSinceSubscriptionStartElement,
    this.notificationEvent,
    required this.subscription,
    this.topic,
    this.error,
  }): super(resourceType: R4ResourceType.SubscriptionStatus);

@override
SubscriptionStatus clone() => this;

}


@Data()
@JsonCodable()
class SubscriptionStatusNotificationEvent {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? eventNumber;
  final Element? eventNumberElement;
  final FhirInstant? timestamp;
  final Element? timestampElement;
  final Reference? focus;
  final List<Reference>? additionalContext;

  SubscriptionStatusNotificationEvent({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.eventNumber,
    this.eventNumberElement,
    this.timestamp,
    this.timestampElement,
    this.focus,
    this.additionalContext,
  });

}



