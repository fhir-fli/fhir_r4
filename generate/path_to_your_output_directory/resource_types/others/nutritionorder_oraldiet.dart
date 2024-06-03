import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [NutritionOrder_OralDiet] A request to supply a diet, formula feeding
/// (enteral) or oral nutritional supplement to a patient/resident.

@freezed
class NutritionOrder_OralDiet with _$NutritionOrder_OralDiet {
  const NutritionOrder_OralDiet._();

  const factory NutritionOrder_OralDiet({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [type] The kind of diet or dietary restriction such as fiber restricted
/// diet or diabetic diet.

    @JsonKey(name: 'type') List<List<CodeableConcept>>? type,
/// [schedule] Schedule information for an oral diet.

    @JsonKey(name: 'schedule') NutritionOrder_Schedule? schedule,
/// [nutrient] Class that defines the quantity and type of nutrient
/// modifications (for example carbohydrate, fiber or sodium) required for the
/// oral diet.

    @JsonKey(name: 'nutrient') List<List<NutritionOrder_Nutrient>>? nutrient,
/// [texture] Class that describes any texture modifications required for
/// the patient to safely consume various types of solid foods.

    @JsonKey(name: 'texture') List<List<NutritionOrder_Texture>>? texture,
/// [fluidConsistencyType] The required consistency (e.g. honey-thick,
/// nectar-thick, thin, thickened.) of liquids or fluids served to the patient.

    @JsonKey(name: 'fluidConsistencyType') List<List<CodeableConcept>>? fluidConsistencyType,
/// [instruction] Free text or additional instructions or information
/// pertaining to the oral diet.

    @JsonKey(name: 'instruction') String? instruction,
/// [_instruction] Extensions for instruction

    @JsonKey(name: '_instruction') PrimitiveElement? instructionElement,
  }) = _$NutritionOrder_OralDiet;

  @override
  String get fhirType => 'NutritionOrder_OralDiet';

  factory NutritionOrder_OralDiet.fromJson(Map<String, dynamic> json) =>
      _$NutritionOrder_OralDietFromJson(json);

  factory NutritionOrder_OralDiet.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrder_OralDiet.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? NutritionOrder_OralDiet.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'NutritionOrder_OralDiet cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory NutritionOrder_OralDiet.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NutritionOrder_OralDietFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
