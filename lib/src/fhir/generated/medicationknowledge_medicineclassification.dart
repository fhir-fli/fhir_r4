import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationKnowledgeMedicineClassification {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final List<CodeableConcept> classification;
  const MedicationKnowledgeMedicineClassification({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.type,
    this.classification,
  });
}
