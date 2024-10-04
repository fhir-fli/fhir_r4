import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EvidenceVariableCategory {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final CodeableConcept valueCodeableConcept;
  final Quantity valueQuantity;
  final Range valueRange;
  const EvidenceVariableCategory({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.Name,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
  });
}
