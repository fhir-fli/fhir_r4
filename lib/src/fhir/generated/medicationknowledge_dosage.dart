import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationKnowledgeDosage {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final List<Dosage> dosage;
  const MedicationKnowledgeDosage({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.type,
    required this.dosage,
  });
}
