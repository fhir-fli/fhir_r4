import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [PlanDefinition_RelatedAction] This resource allows for the definition
/// of various types of plans as a sharable, consumable, and executable
/// artifact. The resource is general enough to support the description of a
/// broad range of clinical and non-clinical artifacts such as clinical
/// decision support rules, order sets, protocols, and drug quality
/// specifications.

@freezed
class PlanDefinition_RelatedAction with _$PlanDefinition_RelatedAction {
  const PlanDefinition_RelatedAction._();

  const factory PlanDefinition_RelatedAction({
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
/// [targetId] The element id of the target related action.

    @JsonKey(name: 'targetId') FhirId? targetId,
/// [_targetId] Extensions for targetId

    @JsonKey(name: '_targetId') PrimitiveElement? targetIdElement,
/// [relationship] The relationship of the start of this action to the
/// related action.

    @JsonKey(name: 'relationship') FhirCode? relationship,
/// [_relationship] Extensions for relationship

    @JsonKey(name: '_relationship') PrimitiveElement? relationshipElement,
/// [endRelationship] The relationship of the end of this action to the
/// related action.

    @JsonKey(name: 'endRelationship') FhirCode? endRelationship,
/// [_endRelationship] Extensions for endRelationship

    @JsonKey(name: '_endRelationship') PrimitiveElement? endRelationshipElement,
/// [offsetDuration] A duration or range of durations to apply to the
/// relationship. For example, 30-60 minutes before.

    @JsonKey(name: 'offsetDuration') FhirDuration? offsetDuration,
/// [offsetRange] A duration or range of durations to apply to the
/// relationship. For example, 30-60 minutes before.

    @JsonKey(name: 'offsetRange') Range? offsetRange,
  }) = _$PlanDefinition_RelatedAction;

  @override
  String get fhirType => 'PlanDefinition_RelatedAction';

  factory PlanDefinition_RelatedAction.fromJson(Map<String, dynamic> json) =>
      _$PlanDefinition_RelatedActionFromJson(json);

  factory PlanDefinition_RelatedAction.fromYaml(dynamic yaml) => yaml is String
      ? PlanDefinition_RelatedAction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PlanDefinition_RelatedAction.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PlanDefinition_RelatedAction cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory PlanDefinition_RelatedAction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PlanDefinition_RelatedActionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
