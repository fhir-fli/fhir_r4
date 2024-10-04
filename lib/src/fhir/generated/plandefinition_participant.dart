import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class PlanDefinitionParticipant {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final CodeableConcept role;
  const PlanDefinitionParticipant({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.Type,
    this.role,
  });
}
