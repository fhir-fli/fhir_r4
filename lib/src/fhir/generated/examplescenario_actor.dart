import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ExampleScenarioActor {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String actorId;
  final PrimitiveElement ActorId;
  final FhirCode type;
  final PrimitiveElement Type;
  final String name;
  final PrimitiveElement Name;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  const ExampleScenarioActor({
    this.id,
    this.extension,
    this.modifierExtension,
    this.actorId,
    this.ActorId,
    this.type,
    this.Type,
    this.name,
    this.Name,
    this.description,
    this.Description,
  });
}
