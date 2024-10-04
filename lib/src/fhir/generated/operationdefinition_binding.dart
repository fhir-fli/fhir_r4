import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class OperationDefinitionBinding {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode strength;
  final PrimitiveElement Strength;
  final FhirCanonical valueSet;
  const OperationDefinitionBinding({
    this.id,
    this.extension,
    this.modifierExtension,
    this.strength,
    this.Strength,
    required this.valueSet,
  });
}
