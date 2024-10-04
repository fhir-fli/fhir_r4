import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class IngredientSubstance {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableReference code;
  final List<IngredientStrength> strength;
  const IngredientSubstance({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.code,
    this.strength,
  });
}
