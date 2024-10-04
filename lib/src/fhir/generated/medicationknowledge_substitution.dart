import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationKnowledgeSubstitution {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final FhirBoolean allowed;
  final PrimitiveElement Allowed;
  const MedicationKnowledgeSubstitution({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.type,
    this.allowed,
    this.Allowed,
  });
}
