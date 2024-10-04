import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class PlanDefinitionGoal {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept category;
  final CodeableConcept description;
  final CodeableConcept priority;
  final CodeableConcept start;
  final List<CodeableConcept> addresses;
  final List<RelatedArtifact> documentation;
  final List<PlanDefinitionTarget> target;
  const PlanDefinitionGoal({
    this.id,
    this.extension,
    this.modifierExtension,
    this.category,
    required this.description,
    this.priority,
    this.start,
    this.addresses,
    this.documentation,
    this.target,
  });
}
