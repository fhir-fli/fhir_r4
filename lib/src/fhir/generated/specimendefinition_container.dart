import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SpecimenDefinitionContainer {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept material;
  final CodeableConcept type;
  final CodeableConcept cap;
  final String description;
  final PrimitiveElement Description;
  final Quantity capacity;
  final Quantity minimumVolumeQuantity;
  final String minimumVolumeString;
  final PrimitiveElement MinimumVolumeString;
  final List<SpecimenDefinitionAdditive> additive;
  final String preparation;
  final PrimitiveElement Preparation;
  const SpecimenDefinitionContainer({
    this.id,
    this.extension,
    this.modifierExtension,
    this.material,
    this.type,
    this.cap,
    this.description,
    this.Description,
    this.capacity,
    this.minimumVolumeQuantity,
    this.minimumVolumeString,
    this.MinimumVolumeString,
    this.additive,
    this.preparation,
    this.Preparation,
  });
}
