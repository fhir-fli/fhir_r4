import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [NutritionProduct_Ingredient] A food or supplement that is consumed by
/// patients.

@freezed
class NutritionProduct_Ingredient with _$NutritionProduct_Ingredient {
  const NutritionProduct_Ingredient._();

  const factory NutritionProduct_Ingredient({
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
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [item] The ingredient contained in the product.

    @JsonKey(name: 'item') CodeableReference? item,
/// [amount] The amount of ingredient that is in the product.

    @JsonKey(name: 'amount') List<List<Ratio>>? amount,
  }) = _$NutritionProduct_Ingredient;

  @override
  String get fhirType => 'NutritionProduct_Ingredient';

  factory NutritionProduct_Ingredient.fromJson(Map<String, dynamic> json) =>
      _$NutritionProduct_IngredientFromJson(json);

  factory NutritionProduct_Ingredient.fromYaml(dynamic yaml) => yaml is String
      ? NutritionProduct_Ingredient.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? NutritionProduct_Ingredient.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'NutritionProduct_Ingredient cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory NutritionProduct_Ingredient.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NutritionProduct_IngredientFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
