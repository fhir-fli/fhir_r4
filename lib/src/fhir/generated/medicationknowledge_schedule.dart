import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationKnowledgeSchedule {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept schedule;
  const MedicationKnowledgeSchedule({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.schedule,
  });
}
