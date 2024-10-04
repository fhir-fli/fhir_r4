import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationKnowledgeIngredient {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept itemCodeableConcept;
  final Reference itemReference;
  final FhirBoolean isActive;
  final PrimitiveElement IsActive;
  final Ratio strength;
  const MedicationKnowledgeIngredient({
    this.id,
    this.extension,
    this.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.isActive,
    this.IsActive,
    this.strength,
  });
}
