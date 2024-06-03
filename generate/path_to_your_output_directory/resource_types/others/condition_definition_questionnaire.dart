import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ConditionDefinition_Questionnaire] A definition of a condition and
/// information relevant to managing it.

@freezed
class ConditionDefinition_Questionnaire with _$ConditionDefinition_Questionnaire {
  const ConditionDefinition_Questionnaire._();

  const factory ConditionDefinition_Questionnaire({
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
/// [purpose] Use of the questionnaire.

    @JsonKey(name: 'purpose') FhirCode? purpose,
/// [_purpose] Extensions for purpose

    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
/// [reference] Specific Questionnaire.

    @JsonKey(name: 'reference') Reference? reference,
  }) = _$ConditionDefinition_Questionnaire;

  @override
  String get fhirType => 'ConditionDefinition_Questionnaire';

  factory ConditionDefinition_Questionnaire.fromJson(Map<String, dynamic> json) =>
      _$ConditionDefinition_QuestionnaireFromJson(json);

  factory ConditionDefinition_Questionnaire.fromYaml(dynamic yaml) => yaml is String
      ? ConditionDefinition_Questionnaire.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConditionDefinition_Questionnaire.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConditionDefinition_Questionnaire cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ConditionDefinition_Questionnaire.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConditionDefinition_QuestionnaireFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
