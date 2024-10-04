import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SubscriptionStatusNotificationEvent {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String eventNumber;
  final PrimitiveElement EventNumber;
  final FhirInstant timestamp;
  final PrimitiveElement Timestamp;
  final Reference focus;
  final List<Reference> additionalContext;
  const SubscriptionStatusNotificationEvent({
    this.id,
    this.extension,
    this.modifierExtension,
    this.eventNumber,
    this.EventNumber,
    this.timestamp,
    this.Timestamp,
    this.focus,
    this.additionalContext,
  });
}
