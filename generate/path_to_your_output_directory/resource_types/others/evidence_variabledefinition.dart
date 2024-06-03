import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Evidence_VariableDefinition] The Evidence Resource provides a
/// machine-interpretable expression of an evidence concept including the
/// evidence variables (e.g., population, exposures/interventions, comparators,
/// outcomes, measured variables, confounding variables), the statistics, and
/// the certainty of this evidence.

@freezed
class Evidence_VariableDefinition with _$Evidence_VariableDefinition {
  const Evidence_VariableDefinition._();

  const factory Evidence_VariableDefinition({
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
/// [description] A text description or summary of the variable.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [note] Footnotes and/or explanatory notes.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [variableRole] Classification of the role of the variable.

    @JsonKey(name: 'variableRole') FhirCode? variableRole,
/// [_variableRole] Extensions for variableRole

    @JsonKey(name: '_variableRole') PrimitiveElement? variableRoleElement,
/// [roleSubtype] Sub-classification of the role of the variable.

    @JsonKey(name: 'roleSubtype') CodeableConcept? roleSubtype,
/// [comparatorCategory] The reference value used for comparison.

    @JsonKey(name: 'comparatorCategory') String? comparatorCategory,
/// [_comparatorCategory] Extensions for comparatorCategory

    @JsonKey(name: '_comparatorCategory') PrimitiveElement? comparatorCategoryElement,
/// [observed] Definition of the actual variable related to the
/// statistic(s).

    @JsonKey(name: 'observed') Reference? observed,
/// [intended] Definition of the intended variable related to the Evidence.

    @JsonKey(name: 'intended') Reference? intended,
/// [directnessMatch] Indication of quality of match between intended
/// variable to actual variable.

    @JsonKey(name: 'directnessMatch') CodeableConcept? directnessMatch,
  }) = _$Evidence_VariableDefinition;

  @override
  String get fhirType => 'Evidence_VariableDefinition';

  factory Evidence_VariableDefinition.fromJson(Map<String, dynamic> json) =>
      _$Evidence_VariableDefinitionFromJson(json);

  factory Evidence_VariableDefinition.fromYaml(dynamic yaml) => yaml is String
      ? Evidence_VariableDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Evidence_VariableDefinition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Evidence_VariableDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Evidence_VariableDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Evidence_VariableDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
