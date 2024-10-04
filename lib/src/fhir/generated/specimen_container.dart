import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SpecimenContainer {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Identifier> identifier;
  final String description;
  final PrimitiveElement Description;
  final CodeableConcept type;
  final Quantity capacity;
  final Quantity specimenQuantity;
  final CodeableConcept additiveCodeableConcept;
  final Reference additiveReference;
  const SpecimenContainer({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.description,
    this.Description,
    this.type,
    this.capacity,
    this.specimenQuantity,
    this.additiveCodeableConcept,
    this.additiveReference,
  });
}
