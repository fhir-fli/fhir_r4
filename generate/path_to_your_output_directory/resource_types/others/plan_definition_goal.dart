import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [PlanDefinition_Goal] This resource allows for the definition of
/// various types of plans as a sharable, consumable, and executable artifact.
/// The resource is general enough to support the description of a broad range
/// of clinical and non-clinical artifacts such as clinical decision support
/// rules, order sets, protocols, and drug quality specifications.

@freezed
class PlanDefinition_Goal with _$PlanDefinition_Goal {
  const PlanDefinition_Goal._();

  const factory PlanDefinition_Goal({
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
/// [category] Indicates a category the goal falls within.

    @JsonKey(name: 'category') CodeableConcept? category,
/// [description] Human-readable and/or coded description of a specific
/// desired objective of care, such as "control blood pressure" or "negotiate
/// an obstacle course" or "dance with child at wedding".

    @JsonKey(name: 'description') CodeableConcept? description,
/// [priority] Identifies the expected level of importance associated with
/// reaching/sustaining the defined goal.

    @JsonKey(name: 'priority') CodeableConcept? priority,
/// [start] The event after which the goal should begin being pursued.

    @JsonKey(name: 'start') CodeableConcept? start,
/// [addresses] Identifies problems, conditions, issues, or concerns the
/// goal is intended to address.

    @JsonKey(name: 'addresses') List<List<CodeableConcept>>? addresses,
/// [documentation] Didactic or other informational resources associated
/// with the goal that provide further supporting information about the goal.
/// Information resources can include inline text commentary and links to web
/// resources.

    @JsonKey(name: 'documentation') List<List<RelatedArtifact>>? documentation,
/// [target] Indicates what should be done and within what timeframe.

    @JsonKey(name: 'target') List<List<PlanDefinition_Target>>? target,
  }) = _$PlanDefinition_Goal;

  @override
  String get fhirType => 'PlanDefinition_Goal';

  factory PlanDefinition_Goal.fromJson(Map<String, dynamic> json) =>
      _$PlanDefinition_GoalFromJson(json);

  factory PlanDefinition_Goal.fromYaml(dynamic yaml) => yaml is String
      ? PlanDefinition_Goal.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PlanDefinition_Goal.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PlanDefinition_Goal cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory PlanDefinition_Goal.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PlanDefinition_GoalFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
