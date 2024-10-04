import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SubscriptionTopicResourceTrigger {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final FhirUri resource;
  final PrimitiveElement Resource;
  final List<FhirCode> supportedInteraction;
  final List<PrimitiveElement> SupportedInteraction;
  final SubscriptionTopic_QueryCriteria queryCriteria;
  final String fhirPathCriteria;
  final PrimitiveElement FhirPathCriteria;
  const SubscriptionTopicResourceTrigger({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.Description,
    this.resource,
    this.Resource,
    this.supportedInteraction,
    this.SupportedInteraction,
    this.queryCriteria,
    this.fhirPathCriteria,
    this.FhirPathCriteria,
  });
}
