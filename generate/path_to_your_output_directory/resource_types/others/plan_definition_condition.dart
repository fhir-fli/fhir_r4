import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [PlanDefinition_Condition] This resource allows for the definition of
/// various types of plans as a sharable, consumable, and executable artifact.
/// The resource is general enough to support the description of a broad range
/// of clinical and non-clinical artifacts such as clinical decision support
/// rules, order sets, protocols, and drug quality specifications.

@freezed
class PlanDefinition_Condition with _$PlanDefinition_Condition {
  const PlanDefinition_Condition._();

  const factory PlanDefinition_Condition({
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
/// [kind] The kind of condition.

    @JsonKey(name: 'kind') FhirCode? kind,
/// [_kind] Extensions for kind

    @JsonKey(name: '_kind') PrimitiveElement? kindElement,
/// [expression] An expression that returns true or false, indicating
/// whether the condition is satisfied.

    @JsonKey(name: 'expression') FhirExpression? expression,
  }) = _$PlanDefinition_Condition;

  @override
  String get fhirType => 'PlanDefinition_Condition';

  factory PlanDefinition_Condition.fromJson(Map<String, dynamic> json) =>
      _$PlanDefinition_ConditionFromJson(json);

  factory PlanDefinition_Condition.fromYaml(dynamic yaml) => yaml is String
      ? PlanDefinition_Condition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PlanDefinition_Condition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PlanDefinition_Condition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory PlanDefinition_Condition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PlanDefinition_ConditionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
