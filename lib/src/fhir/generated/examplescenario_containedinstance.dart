import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ExampleScenarioContainedInstance {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String resourceId;
  final PrimitiveElement ResourceId;
  final String versionId;
  final PrimitiveElement VersionId;
  const ExampleScenarioContainedInstance({
    this.id,
    this.extension,
    this.modifierExtension,
    this.resourceId,
    this.ResourceId,
    this.versionId,
    this.VersionId,
  });
}
