import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SubscriptionTopicEventTrigger {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final CodeableConcept event;
  final FhirUri resource;
  final PrimitiveElement Resource;
  const SubscriptionTopicEventTrigger({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.Description,
    required this.event,
    this.resource,
    this.Resource,
  });
}
