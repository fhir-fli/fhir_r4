import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SubscriptionTopicNotificationShape {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirUri resource;
  final PrimitiveElement Resource;
  final List<String> include;
  final List<PrimitiveElement> Include;
  final List<String> revInclude;
  final List<PrimitiveElement> RevInclude;
  const SubscriptionTopicNotificationShape({
    this.id,
    this.extension,
    this.modifierExtension,
    this.resource,
    this.Resource,
    this.include,
    this.Include,
    this.revInclude,
    this.RevInclude,
  });
}
