import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SubstanceDefinitionSourceMaterial {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept genus;
  final CodeableConcept species;
  final CodeableConcept part;
  final List<CodeableConcept> countryOfOrigin;
  const SubstanceDefinitionSourceMaterial({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.genus,
    this.species,
    this.part,
    this.countryOfOrigin,
  });
}
