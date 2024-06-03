import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [RequestOrchestration_Action] A set of related requests that can be
/// used to capture intended activities that have inter-dependencies such as
/// "give this medication after that one".

@freezed
class RequestOrchestration_Action with _$RequestOrchestration_Action {
  const RequestOrchestration_Action._();

  const factory RequestOrchestration_Action({
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
/// [linkId] The linkId of the action from the PlanDefinition that
/// corresponds to this action in the RequestOrchestration resource.

    @JsonKey(name: 'linkId') String? linkId,
/// [_linkId] Extensions for linkId

    @JsonKey(name: '_linkId') PrimitiveElement? linkIdElement,
/// [prefix] A user-visible prefix for the action. For example a section or
/// item numbering such as 1. or A.

    @JsonKey(name: 'prefix') String? prefix,
/// [_prefix] Extensions for prefix

    @JsonKey(name: '_prefix') PrimitiveElement? prefixElement,
/// [title] The title of the action displayed to a user.

    @JsonKey(name: 'title') String? title,
/// [_title] Extensions for title

    @JsonKey(name: '_title') PrimitiveElement? titleElement,
/// [description] A short description of the action used to provide a
/// summary to display to the user.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [textEquivalent] A text equivalent of the action to be performed. This
/// provides a human-interpretable description of the action when the
/// definition is consumed by a system that might not be capable of
/// interpreting it dynamically.

    @JsonKey(name: 'textEquivalent') FhirMarkdown? textEquivalent,
/// [_textEquivalent] Extensions for textEquivalent

    @JsonKey(name: '_textEquivalent') PrimitiveElement? textEquivalentElement,
/// [priority] Indicates how quickly the action should be addressed with
/// respect to other actions.

    @JsonKey(name: 'priority') FhirCode? priority,
/// [_priority] Extensions for priority

    @JsonKey(name: '_priority') PrimitiveElement? priorityElement,
/// [code] A code that provides meaning for the action or action group. For
/// example, a section may have a LOINC code for a section of a documentation
/// template.

    @JsonKey(name: 'code') List<List<CodeableConcept>>? code,
/// [documentation] Didactic or other informational resources associated
/// with the action that can be provided to the CDS recipient. Information
/// resources can include inline text commentary and links to web resources.

    @JsonKey(name: 'documentation') List<List<RelatedArtifact>>? documentation,
/// [goal] Goals that are intended to be achieved by following the requests
/// in this action.

    @JsonKey(name: 'goal') List<List<Reference>>? goal,
/// [condition] An expression that describes applicability criteria, or
/// start/stop conditions for the action.

    @JsonKey(name: 'condition') List<List<RequestOrchestration_Condition>>? condition,
/// [input] Defines input data requirements for the action.

    @JsonKey(name: 'input') List<List<RequestOrchestration_Input>>? input,
/// [output] Defines the outputs of the action, if any.

    @JsonKey(name: 'output') List<List<RequestOrchestration_Output>>? output,
/// [relatedAction] A relationship to another action such as "before" or
/// "30-60 minutes after start of".

    @JsonKey(name: 'relatedAction') List<List<RequestOrchestration_RelatedAction>>? relatedAction,
/// [timingDateTime] An optional value describing when the action should be
/// performed.

    @JsonKey(name: 'timingDateTime') FhirDateTime? timingDateTime,
/// [_timingDateTime] Extensions for timingDateTime

    @JsonKey(name: '_timingDateTime') PrimitiveElement? timingDateTimeElement,
/// [timingAge] An optional value describing when the action should be
/// performed.

    @JsonKey(name: 'timingAge') Age? timingAge,
/// [timingPeriod] An optional value describing when the action should be
/// performed.

    @JsonKey(name: 'timingPeriod') Period? timingPeriod,
/// [timingDuration] An optional value describing when the action should be
/// performed.

    @JsonKey(name: 'timingDuration') FhirDuration? timingDuration,
/// [timingRange] An optional value describing when the action should be
/// performed.

    @JsonKey(name: 'timingRange') Range? timingRange,
/// [timingTiming] An optional value describing when the action should be
/// performed.

    @JsonKey(name: 'timingTiming') Timing? timingTiming,
/// [location] Identifies the facility where the action will occur; e.g.
/// home, hospital, specific clinic, etc.

    @JsonKey(name: 'location') CodeableReference? location,
/// [participant] The participant that should perform or be responsible for
/// this action.

    @JsonKey(name: 'participant') List<List<RequestOrchestration_Participant>>? participant,
/// [type] The type of action to perform (create, update, remove).

    @JsonKey(name: 'type') CodeableConcept? type,
/// [groupingBehavior] Defines the grouping behavior for the action and its
/// children.

    @JsonKey(name: 'groupingBehavior') FhirCode? groupingBehavior,
/// [_groupingBehavior] Extensions for groupingBehavior

    @JsonKey(name: '_groupingBehavior') PrimitiveElement? groupingBehaviorElement,
/// [selectionBehavior] Defines the selection behavior for the action and
/// its children.

    @JsonKey(name: 'selectionBehavior') FhirCode? selectionBehavior,
/// [_selectionBehavior] Extensions for selectionBehavior

    @JsonKey(name: '_selectionBehavior') PrimitiveElement? selectionBehaviorElement,
/// [requiredBehavior] Defines expectations around whether an action is
/// required.

    @JsonKey(name: 'requiredBehavior') FhirCode? requiredBehavior,
/// [_requiredBehavior] Extensions for requiredBehavior

    @JsonKey(name: '_requiredBehavior') PrimitiveElement? requiredBehaviorElement,
/// [precheckBehavior] Defines whether the action should usually be
/// preselected.

    @JsonKey(name: 'precheckBehavior') FhirCode? precheckBehavior,
/// [_precheckBehavior] Extensions for precheckBehavior

    @JsonKey(name: '_precheckBehavior') PrimitiveElement? precheckBehaviorElement,
/// [cardinalityBehavior] Defines whether the action can be selected
/// multiple times.

    @JsonKey(name: 'cardinalityBehavior') FhirCode? cardinalityBehavior,
/// [_cardinalityBehavior] Extensions for cardinalityBehavior

    @JsonKey(name: '_cardinalityBehavior') PrimitiveElement? cardinalityBehaviorElement,
/// [resource] The resource that is the target of the action (e.g.
/// CommunicationRequest).

    @JsonKey(name: 'resource') Reference? resource,
/// [definitionCanonical] A reference to an ActivityDefinition that
/// describes the action to be taken in detail, a PlanDefinition that describes
/// a series of actions to be taken, a Questionnaire that should be filled out,
/// a SpecimenDefinition describing a specimen to be collected, or an
/// ObservationDefinition that specifies what observation should be captured.

    @JsonKey(name: 'definitionCanonical') FhirCanonical? definitionCanonical,
/// [_definitionCanonical] Extensions for definitionCanonical

    @JsonKey(name: '_definitionCanonical') PrimitiveElement? definitionCanonicalElement,
/// [definitionUri] A reference to an ActivityDefinition that describes the
/// action to be taken in detail, a PlanDefinition that describes a series of
/// actions to be taken, a Questionnaire that should be filled out, a
/// SpecimenDefinition describing a specimen to be collected, or an
/// ObservationDefinition that specifies what observation should be captured.

    @JsonKey(name: 'definitionUri') FhirUri? definitionUri,
/// [_definitionUri] Extensions for definitionUri

    @JsonKey(name: '_definitionUri') PrimitiveElement? definitionUriElement,
/// [transform] A reference to a StructureMap resource that defines a
/// transform that can be executed to produce the intent resource using the
/// ActivityDefinition instance as the input.

    @JsonKey(name: 'transform') FhirCanonical? transform,
/// [dynamicValue] Customizations that should be applied to the statically
/// defined resource. For example, if the dosage of a medication must be
/// computed based on the patient's weight, a customization would be used to
/// specify an expression that calculated the weight, and the path on the
/// resource that would contain the result.

    @JsonKey(name: 'dynamicValue') List<List<RequestOrchestration_DynamicValue>>? dynamicValue,
/// [action] Sub actions.

    @JsonKey(name: 'action') List<List<RequestOrchestration_Action>>? action,
  }) = _$RequestOrchestration_Action;

  @override
  String get fhirType => 'RequestOrchestration_Action';

  factory RequestOrchestration_Action.fromJson(Map<String, dynamic> json) =>
      _$RequestOrchestration_ActionFromJson(json);

  factory RequestOrchestration_Action.fromYaml(dynamic yaml) => yaml is String
      ? RequestOrchestration_Action.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? RequestOrchestration_Action.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'RequestOrchestration_Action cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory RequestOrchestration_Action.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RequestOrchestration_ActionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
