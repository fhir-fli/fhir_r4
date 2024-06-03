import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [NutritionIntake_ConsumedItem] A record of food or fluid that is being
/// consumed by a patient.   A NutritionIntake may indicate that the patient
/// may be consuming the food or fluid now or has consumed the food or fluid in
/// the past.  The source of this information can be the patient, significant
/// other (such as a family member or spouse), or a clinician.  A common
/// scenario where this information is captured is during the history taking
/// process during a patient visit or stay or through an app that tracks food
/// or fluids consumed.   The consumption information may come from sources
/// such as the patient's memory, from a nutrition label,  or from a clinician
/// documenting observed intake.

@freezed
class NutritionIntake_ConsumedItem with _$NutritionIntake_ConsumedItem {
  const NutritionIntake_ConsumedItem._();

  const factory NutritionIntake_ConsumedItem({
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
/// [type] Indicates what a category of item that was consumed: e.g., food,
/// fluid, enteral, etc.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [nutritionProduct] Identifies the food or fluid product that was
/// consumed. This is potentially a link to a resource representing the details
/// of the food product (TBD) or a simple attribute carrying a code that
/// identifies the food from a known list of foods.

    @JsonKey(name: 'nutritionProduct') CodeableReference? nutritionProduct,
/// [schedule] Scheduled frequency of consumption.

    @JsonKey(name: 'schedule') Timing? schedule,
/// [amount] Quantity of the specified food.

    @JsonKey(name: 'amount') Quantity? amount,
/// [rate] Rate at which enteral feeding was administered.

    @JsonKey(name: 'rate') Quantity? rate,
/// [notConsumed] Indicator when a patient is in a setting where it is
/// helpful to know if food was not consumed, such as it was refused, held (as
/// in tube feedings), or otherwise not provided. If a consumption is being
/// recorded from an app, such as MyFitnessPal, this indicator will likely not
/// be used.

    @JsonKey(name: 'notConsumed') FhirBoolean? notConsumed,
/// [_notConsumed] Extensions for notConsumed

    @JsonKey(name: '_notConsumed') PrimitiveElement? notConsumedElement,
/// [notConsumedReason] Document the reason the food or fluid was not
/// consumed, such as refused, held, etc.

    @JsonKey(name: 'notConsumedReason') CodeableConcept? notConsumedReason,
  }) = _$NutritionIntake_ConsumedItem;

  @override
  String get fhirType => 'NutritionIntake_ConsumedItem';

  factory NutritionIntake_ConsumedItem.fromJson(Map<String, dynamic> json) =>
      _$NutritionIntake_ConsumedItemFromJson(json);

  factory NutritionIntake_ConsumedItem.fromYaml(dynamic yaml) => yaml is String
      ? NutritionIntake_ConsumedItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? NutritionIntake_ConsumedItem.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'NutritionIntake_ConsumedItem cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory NutritionIntake_ConsumedItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NutritionIntake_ConsumedItemFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
