import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ExampleScenarioInstance {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String resourceId;
  final PrimitiveElement ResourceId;
  final FhirCode resourceType;
  final PrimitiveElement ResourceType;
  final String name;
  final PrimitiveElement Name;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<ExampleScenarioVersion> version;
  final List<ExampleScenarioContainedInstance> containedInstance;
  const ExampleScenarioInstance({
    this.id,
    this.extension,
    this.modifierExtension,
    this.resourceId,
    this.ResourceId,
    this.resourceType,
    this.ResourceType,
    this.name,
    this.Name,
    this.description,
    this.Description,
    this.version,
    this.containedInstance,
  });
}
