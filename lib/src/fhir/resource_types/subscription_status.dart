import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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
@Entity()
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
  final FhirString eventNumber;
  final Element? eventNumberElement;
  final FhirInstant? timestamp;
  final Element? timestampElement;
  final Reference? focus;
  final List<Reference>? additionalContext;
  @override
  SubscriptionStatusNotificationEvent clone() => throw UnimplementedError();
}
