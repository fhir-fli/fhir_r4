import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [NutritionIntake_Performer] A record of food or fluid that is being
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
class NutritionIntake_Performer with _$NutritionIntake_Performer {
  const NutritionIntake_Performer._();

  const factory NutritionIntake_Performer({
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
/// [function] Type of performer.

    @JsonKey(name: 'function') CodeableConcept? function,
/// [actor] Who performed the intake.

    @JsonKey(name: 'actor') Reference? actor,
  }) = _$NutritionIntake_Performer;

  @override
  String get fhirType => 'NutritionIntake_Performer';

  factory NutritionIntake_Performer.fromJson(Map<String, dynamic> json) =>
      _$NutritionIntake_PerformerFromJson(json);

  factory NutritionIntake_Performer.fromYaml(dynamic yaml) => yaml is String
      ? NutritionIntake_Performer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? NutritionIntake_Performer.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'NutritionIntake_Performer cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory NutritionIntake_Performer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NutritionIntake_PerformerFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
