import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EvidenceVariableDefinition {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<Annotation> note;
  final CodeableConcept variableRole;
  final Reference observed;
  final Reference intended;
  final CodeableConcept directnessMatch;
  const EvidenceVariableDefinition({
    this.id,
    this.extension,
    this.modifierExtension,
    this.description,
    this.Description,
    this.note,
    required this.variableRole,
    this.observed,
    this.intended,
    this.directnessMatch,
  });
}
