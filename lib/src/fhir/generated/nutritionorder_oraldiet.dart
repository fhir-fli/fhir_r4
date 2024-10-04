import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class NutritionOrderOralDiet {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<CodeableConcept> type;
  final List<Timing> schedule;
  final List<NutritionOrderNutrient> nutrient;
  final List<NutritionOrderTexture> texture;
  final List<CodeableConcept> fluidConsistencyType;
  final String instruction;
  final PrimitiveElement Instruction;
  const NutritionOrderOralDiet({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.schedule,
    this.nutrient,
    this.texture,
    this.fluidConsistencyType,
    this.instruction,
    this.Instruction,
  });
}
