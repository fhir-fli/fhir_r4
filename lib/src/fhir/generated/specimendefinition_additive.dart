import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SpecimenDefinitionAdditive {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept additiveCodeableConcept;
  final Reference additiveReference;
  const SpecimenDefinitionAdditive({
    this.id,
    this.extension,
    this.modifierExtension,
    this.additiveCodeableConcept,
    this.additiveReference,
  });
}
