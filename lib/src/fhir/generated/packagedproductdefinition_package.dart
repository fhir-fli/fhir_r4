import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class PackagedProductDefinitionPackage {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Identifier> identifier;
  final CodeableConcept type;
  final FhirInteger quantity;
  final PrimitiveElement Quantity;
  final List<CodeableConcept> material;
  final List<CodeableConcept> alternateMaterial;
  final List<PackagedProductDefinitionShelfLifeStorage> shelfLifeStorage;
  final List<Reference> manufacturer;
  final List<PackagedProductDefinitionProperty> property;
  final List<PackagedProductDefinitionContainedItem> containedItem;
  final List<PackagedProductDefinitionPackage> package;
  const PackagedProductDefinitionPackage({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.type,
    this.quantity,
    this.Quantity,
    this.material,
    this.alternateMaterial,
    this.shelfLifeStorage,
    this.manufacturer,
    this.property,
    this.containedItem,
    this.package,
  });
}
