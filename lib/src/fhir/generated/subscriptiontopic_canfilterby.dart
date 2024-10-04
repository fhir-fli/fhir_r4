import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SubscriptionTopicCanFilterBy {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final FhirUri resource;
  final PrimitiveElement Resource;
  final String filterParameter;
  final PrimitiveElement FilterParameter;
  final FhirUri filterDefinition;
  final PrimitiveElement FilterDefinition;
  final List<FhirCode> modifier;
  final List<PrimitiveElement> Modifier;
  const SubscriptionTopicCanFilterBy({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.Description,
    this.resource,
    this.Resource,
    this.filterParameter,
    this.FilterParameter,
    this.filterDefinition,
    this.FilterDefinition,
    this.modifier,
    this.Modifier,
  });
}
