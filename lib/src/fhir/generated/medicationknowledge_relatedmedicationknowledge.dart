import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationKnowledgeRelatedMedicationKnowledge {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final List<Reference> reference;
  const MedicationKnowledgeRelatedMedicationKnowledge({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.type,
    required this.reference,
  });
}
