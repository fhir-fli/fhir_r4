import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicinalProductDefinitionNamePart {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String part;
  final PrimitiveElement Part;
  final CodeableConcept type;
  const MedicinalProductDefinitionNamePart({
    this.id,
    this.extension,
    this.modifierExtension,
    this.part,
    this.Part,
    required this.type,
  });
}
