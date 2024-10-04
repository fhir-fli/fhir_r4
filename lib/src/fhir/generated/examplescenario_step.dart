import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ExampleScenarioStep {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<ExampleScenarioProcess> process;
  final FhirBoolean pause;
  final PrimitiveElement Pause;
  final ExampleScenario_Operation operation;
  final List<ExampleScenarioAlternative> alternative;
  const ExampleScenarioStep({
    this.id,
    this.extension,
    this.modifierExtension,
    this.process,
    this.pause,
    this.Pause,
    this.operation,
    this.alternative,
  });
}
