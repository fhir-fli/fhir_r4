import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [NutritionOrder_Schedule1] A request to supply a diet, formula feeding
/// (enteral) or oral nutritional supplement to a patient/resident.

@freezed
class NutritionOrder_Schedule1 with _$NutritionOrder_Schedule1 {
  const NutritionOrder_Schedule1._();

  const factory NutritionOrder_Schedule1({
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
/// [timing] The time period and frequency at which the supplement should
/// be given.  The supplement should be given for the combination of all
/// schedules if more than one schedule is present.

    @JsonKey(name: 'timing') List<List<Timing>>? timing,
/// [asNeeded] Indicates whether the supplement is only taken when needed
/// within a specific dosing schedule.

    @JsonKey(name: 'asNeeded') FhirBoolean? asNeeded,
/// [_asNeeded] Extensions for asNeeded

    @JsonKey(name: '_asNeeded') PrimitiveElement? asNeededElement,
/// [asNeededFor] Indicates whether the supplement is only taken based on a
/// precondition for taking the supplement.

    @JsonKey(name: 'asNeededFor') CodeableConcept? asNeededFor,
  }) = _$NutritionOrder_Schedule1;

  @override
  String get fhirType => 'NutritionOrder_Schedule1';

  factory NutritionOrder_Schedule1.fromJson(Map<String, dynamic> json) =>
      _$NutritionOrder_Schedule1FromJson(json);

  factory NutritionOrder_Schedule1.fromYaml(dynamic yaml) => yaml is String
      ? NutritionOrder_Schedule1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? NutritionOrder_Schedule1.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'NutritionOrder_Schedule1 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory NutritionOrder_Schedule1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NutritionOrder_Schedule1FromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
