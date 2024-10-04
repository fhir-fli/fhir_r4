import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SubscriptionStatus {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirCode type;
  final PrimitiveElement Type;
  final String eventsSinceSubscriptionStart;
  final PrimitiveElement EventsSinceSubscriptionStart;
  final List<SubscriptionStatusNotificationEvent> notificationEvent;
  final Reference subscription;
  final FhirCanonical topic;
  final List<CodeableConcept> error;
  const SubscriptionStatus({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.status,
    this.Status,
    this.type,
    this.Type,
    this.eventsSinceSubscriptionStart,
    this.EventsSinceSubscriptionStart,
    this.notificationEvent,
    required this.subscription,
    this.topic,
    this.error,
  });
}
