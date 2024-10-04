import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ExampleScenarioVersion {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String versionId;
  final PrimitiveElement VersionId;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  const ExampleScenarioVersion({
    this.id,
    this.extension,
    this.modifierExtension,
    this.versionId,
    this.VersionId,
    this.description,
    this.Description,
  });
}
