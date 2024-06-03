import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [NutritionProduct_Nutrient] A food or supplement that is consumed by
/// patients.

@freezed
class NutritionProduct_Nutrient with _$NutritionProduct_Nutrient {
  const NutritionProduct_Nutrient._();

  const factory NutritionProduct_Nutrient({
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
/// [item] The (relevant) nutrients in the product.

    @JsonKey(name: 'item') CodeableReference? item,
/// [amount] The amount of nutrient expressed in one or more units: X per
/// pack / per serving / per dose.

    @JsonKey(name: 'amount') List<List<Ratio>>? amount,
  }) = _$NutritionProduct_Nutrient;

  @override
  String get fhirType => 'NutritionProduct_Nutrient';

  factory NutritionProduct_Nutrient.fromJson(Map<String, dynamic> json) =>
      _$NutritionProduct_NutrientFromJson(json);

  factory NutritionProduct_Nutrient.fromYaml(dynamic yaml) => yaml is String
      ? NutritionProduct_Nutrient.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? NutritionProduct_Nutrient.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'NutritionProduct_Nutrient cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory NutritionProduct_Nutrient.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NutritionProduct_NutrientFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
