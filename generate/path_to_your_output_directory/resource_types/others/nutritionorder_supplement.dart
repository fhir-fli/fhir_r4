import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [NutritionOrder_Supplement] A request to supply a diet, formula feeding
/// (enteral) or oral nutritional supplement to a patient/resident.

@freezed
class NutritionOrder_Supplement with _$NutritionOrder_Supplement {
  const NutritionOrder_Supplement._();

  const factory NutritionOrder_Supplement({
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
/// [type] The kind of nutritional supplement product required such as a
/// high protein or pediatric clear liquid supplement.

    @JsonKey(name: 'type') CodeableReference? type,
/// [productName] The product or brand name of the nutritional supplement
/// such as "Acme Protein Shake".

    @JsonKey(name: 'productName') String? productName,
/// [_productName] Extensions for productName

    @JsonKey(name: '_productName') PrimitiveElement? productNameElement,
/// [schedule] Schedule information for a supplement.

    @JsonKey(name: 'schedule') NutritionOrder_Schedule1? schedule,
/// [quantity] The amount of the nutritional supplement to be given.

    @JsonKey(name: 'quantity') Quantity? quantity,
/// [instruction] Free text or additional instructions or information
/// pertaining to the oral supplement.

    @JsonKey(name: 'instruction') String? instruction,
/// [_instruction] Extensions for instruction

    @JsonKey(name: '_instruction') PrimitiveElement? instructionElement,
  }) = _$NutritionOrder_Supplement;

  @override
  String get fhirType => 'NutritionOrder_Supplement';

  factory NutritionOrder_Supplement.fromJson(Map<String, dynamic> json) =>
      _$NutritionOrder_SupplementFromJson(json);

  factory NutritionOrder_Supplement.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrder_Supplement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? NutritionOrder_Supplement.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'NutritionOrder_Supplement cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory NutritionOrder_Supplement.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NutritionOrder_SupplementFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
