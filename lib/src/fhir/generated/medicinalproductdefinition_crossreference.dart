import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MedicinalProductDefinitionCrossReference {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableReference product;
  final CodeableConcept type;
  const MedicinalProductDefinitionCrossReference({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.product,
    this.type,
  });
}
