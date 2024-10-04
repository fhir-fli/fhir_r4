import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class PackagedProductDefinitionLegalStatusOfSupply {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept code;
  final CodeableConcept jurisdiction;
  const PackagedProductDefinitionLegalStatusOfSupply({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.jurisdiction,
  });
}
