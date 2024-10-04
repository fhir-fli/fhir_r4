import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationKnowledgePatientCharacteristics {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept characteristicCodeableConcept;
  final Quantity characteristicQuantity;
  final List<String> value;
  final List<PrimitiveElement> Value;
  const MedicationKnowledgePatientCharacteristics({
    this.id,
    this.extension,
    this.modifierExtension,
    this.characteristicCodeableConcept,
    this.characteristicQuantity,
    this.value,
    this.Value,
  });
}
