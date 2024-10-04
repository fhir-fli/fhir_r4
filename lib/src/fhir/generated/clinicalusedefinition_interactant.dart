import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClinicalUseDefinitionInteractant {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference itemReference;
  final CodeableConcept itemCodeableConcept;
  const ClinicalUseDefinitionInteractant({
    this.id,
    this.extension,
    this.modifierExtension,
    this.itemReference,
    this.itemCodeableConcept,
  });
}
