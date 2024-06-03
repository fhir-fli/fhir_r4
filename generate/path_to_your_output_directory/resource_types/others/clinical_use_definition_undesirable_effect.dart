import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ClinicalUseDefinition_UndesirableEffect] A single issue - either an
/// indication, contraindication, interaction or an undesirable effect for a
/// medicinal product, medication, device or procedure.

@freezed
class ClinicalUseDefinition_UndesirableEffect with _$ClinicalUseDefinition_UndesirableEffect {
  const ClinicalUseDefinition_UndesirableEffect._();

  const factory ClinicalUseDefinition_UndesirableEffect({
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
/// [symptomConditionEffect] The situation in which the undesirable effect
/// may manifest.

    @JsonKey(name: 'symptomConditionEffect') CodeableReference? symptomConditionEffect,
/// [classification] High level classification of the effect.

    @JsonKey(name: 'classification') CodeableConcept? classification,
/// [frequencyOfOccurrence] How often the effect is seen.

    @JsonKey(name: 'frequencyOfOccurrence') CodeableConcept? frequencyOfOccurrence,
  }) = _$ClinicalUseDefinition_UndesirableEffect;

  @override
  String get fhirType => 'ClinicalUseDefinition_UndesirableEffect';

  factory ClinicalUseDefinition_UndesirableEffect.fromJson(Map<String, dynamic> json) =>
      _$ClinicalUseDefinition_UndesirableEffectFromJson(json);

  factory ClinicalUseDefinition_UndesirableEffect.fromYaml(dynamic yaml) => yaml is String
      ? ClinicalUseDefinition_UndesirableEffect.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalUseDefinition_UndesirableEffect.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalUseDefinition_UndesirableEffect cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ClinicalUseDefinition_UndesirableEffect.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalUseDefinition_UndesirableEffectFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
