import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ExampleScenarioProcess {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String title;
  final PrimitiveElement Title;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final FhirMarkdown preConditions;
  final PrimitiveElement PreConditions;
  final FhirMarkdown postConditions;
  final PrimitiveElement PostConditions;
  final List<ExampleScenarioStep> step;
  const ExampleScenarioProcess({
    this.id,
    this.extension,
    this.modifierExtension,
    this.title,
    this.Title,
    this.description,
    this.Description,
    this.preConditions,
    this.PreConditions,
    this.postConditions,
    this.PostConditions,
    this.step,
  });
}
