import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicationKnowledgeDrugCharacteristic {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept valueCodeableConcept;
  final String valueString;
  final PrimitiveElement ValueString;
  final Quantity valueQuantity;
  final String valueBase64Binary;
  final PrimitiveElement ValueBase64Binary;
  const MedicationKnowledgeDrugCharacteristic({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.valueCodeableConcept,
    this.valueString,
    this.ValueString,
    this.valueQuantity,
    this.valueBase64Binary,
    this.ValueBase64Binary,
  });
}
