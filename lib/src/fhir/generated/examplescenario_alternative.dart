import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ExampleScenarioAlternative {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String title;
  final PrimitiveElement Title;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<ExampleScenarioStep> step;
  const ExampleScenarioAlternative({
    this.id,
    this.extension,
    this.modifierExtension,
    this.title,
    this.Title,
    this.description,
    this.Description,
    this.step,
  });
}
