import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationKnowledgeMonitoringProgram {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final String name;
  final PrimitiveElement Name;
  const MedicationKnowledgeMonitoringProgram({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.name,
    this.Name,
  });
}
