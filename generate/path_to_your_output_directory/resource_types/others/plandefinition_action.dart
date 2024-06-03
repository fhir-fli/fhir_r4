/// /// [PlanDefinition_Action] This resource allows for the definition of
/// various types of plans as a sharable, consumable, and executable artifact.
/// The resource is general enough to support the description of a broad range
/// of clinical and non-clinical artifacts such as clinical decision support
/// rules, order sets, protocols, and drug quality specifications.

@freezed
class PlanDefinition_Action with _$PlanDefinition_Action {
  const PlanDefinition_Action._();

  const factory PlanDefinition_Action({
/// /// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
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
/// /// [linkId] An identifier that is unique within the PlanDefinition to
/// allow linkage within the realized CarePlan and/or RequestOrchestration.

    @JsonKey(name: 'linkId') String? linkId,
/// /// [_linkId] Extensions for linkId

    @JsonKey(name: '_linkId') FhirElement? linkIdElement,
/// /// [prefix] A user-visible prefix for the action. For example a section or
/// item numbering such as 1. or A.

    @JsonKey(name: 'prefix') String? prefix,
/// /// [_prefix] Extensions for prefix

    @JsonKey(name: '_prefix') FhirElement? prefixElement,
/// /// [title] The textual description of the action displayed to a user. For
/// example, when the action is a test to be performed, the title would be the
/// title of the test such as Assay by HPLC.

    @JsonKey(name: 'title') String? title,
/// /// [_title] Extensions for title

    @JsonKey(name: '_title') FhirElement? titleElement,
/// /// [description] A brief description of the action used to provide a
/// summary to display to the user.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [textEquivalent] A text equivalent of the action to be performed. This
/// provides a human-interpretable description of the action when the
/// definition is consumed by a system that might not be capable of
/// interpreting it dynamically.

    @JsonKey(name: 'textEquivalent') FhirMarkdown? textEquivalent,
/// /// [_textEquivalent] Extensions for textEquivalent

    @JsonKey(name: '_textEquivalent') FhirElement? textEquivalentElement,
/// /// [priority] Indicates how quickly the action should be addressed with
/// respect to other actions.

    @JsonKey(name: 'priority') FhirCode? priority,
/// /// [_priority] Extensions for priority

    @JsonKey(name: '_priority') FhirElement? priorityElement,
/// /// [code] A code that provides a meaning, grouping, or classification for
/// the action or action group. For example, a section may have a LOINC code
/// for the section of a documentation template. In pharmaceutical quality, an
/// action (Test) such as pH could be classified as a physical property.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [reason] A description of why this action is necessary or appropriate.

    @JsonKey(name: 'reason') List<List<CodeableConcept>>? reason,
/// /// [documentation] Didactic or other informational resources associated
/// with the action that can be provided to the CDS recipient. Information
/// resources can include inline text commentary and links to web resources.

    @JsonKey(name: 'documentation') List<List<RelatedArtifact>>? documentation,
/// /// [goalId] Identifies goals that this action supports. The reference must
/// be to a goal element defined within this plan definition. In pharmaceutical
/// quality, a goal represents acceptance criteria (Goal) for a given action
/// (Test), so the goalId would be the unique id of a defined goal element
/// establishing the acceptance criteria for the action.

    @JsonKey(name: 'goalId') List<List<FhirId>>? goalId,
/// /// [_goalId] Extensions for goalId

    @JsonKey(name: '_goalId') List<FhirElement>? goalIdElement,
/// /// [subjectCodeableConcept] A code, group definition, or canonical
/// reference that describes the intended subject of the action and its
/// children, if any. Canonical references are allowed to support the
/// definition of protocols for drug and substance quality specifications, and
/// is allowed to reference a MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.

    @JsonKey(name: 'subjectCodeableConcept') CodeableConcept? subjectCodeableConcept,
/// /// [subjectReference] A code, group definition, or canonical reference
/// that describes the intended subject of the action and its children, if any.
/// Canonical references are allowed to support the definition of protocols for
/// drug and substance quality specifications, and is allowed to reference a
/// MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.

    @JsonKey(name: 'subjectReference') Reference? subjectReference,
/// /// [subjectCanonical] A code, group definition, or canonical reference
/// that describes the intended subject of the action and its children, if any.
/// Canonical references are allowed to support the definition of protocols for
/// drug and substance quality specifications, and is allowed to reference a
/// MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.

    @JsonKey(name: 'subjectCanonical') FhirCanonical? subjectCanonical,
/// /// [_subjectCanonical] Extensions for subjectCanonical

    @JsonKey(name: '_subjectCanonical') FhirElement? subjectCanonicalElement,
/// /// [trigger] A description of when the action should be triggered. When
/// multiple triggers are specified on an action, any triggering event invokes
/// the action.

    @JsonKey(name: 'trigger') List<List<TriggerDefinition>>? trigger,
/// /// [condition] An expression that describes applicability criteria or
/// start/stop conditions for the action.

    @JsonKey(name: 'condition') List<List<PlanDefinition_Condition>>? condition,
/// /// [input] Defines input data requirements for the action.

    @JsonKey(name: 'input') List<List<PlanDefinition_Input>>? input,
/// /// [output] Defines the outputs of the action, if any.

    @JsonKey(name: 'output') List<List<PlanDefinition_Output>>? output,
/// /// [relatedAction] A relationship to another action such as "before" or
/// "30-60 minutes after start of".

    @JsonKey(name: 'relatedAction') List<List<PlanDefinition_RelatedAction>>? relatedAction,
/// /// [timingAge] An optional value describing when the action should be
/// performed.

    @JsonKey(name: 'timingAge') Age? timingAge,
/// /// [timingDuration] An optional value describing when the action should be
/// performed.

    @JsonKey(name: 'timingDuration') FhirDuration? timingDuration,
/// /// [timingRange] An optional value describing when the action should be
/// performed.

    @JsonKey(name: 'timingRange') Range? timingRange,
/// /// [timingTiming] An optional value describing when the action should be
/// performed.

    @JsonKey(name: 'timingTiming') Timing? timingTiming,
/// /// [location] Identifies the facility where the action will occur; e.g.
/// home, hospital, specific clinic, etc.

    @JsonKey(name: 'location') CodeableReference? location,
/// /// [participant] Indicates who should participate in performing the action
/// described.

    @JsonKey(name: 'participant') List<List<PlanDefinition_Participant>>? participant,
/// /// [type] The type of action to perform (create, update, remove).

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [groupingBehavior] Defines the grouping behavior for the action and its
/// children.

    @JsonKey(name: 'groupingBehavior') FhirCode? groupingBehavior,
/// /// [_groupingBehavior] Extensions for groupingBehavior

    @JsonKey(name: '_groupingBehavior') FhirElement? groupingBehaviorElement,
/// /// [selectionBehavior] Defines the selection behavior for the action and
/// its children.

    @JsonKey(name: 'selectionBehavior') FhirCode? selectionBehavior,
/// /// [_selectionBehavior] Extensions for selectionBehavior

    @JsonKey(name: '_selectionBehavior') FhirElement? selectionBehaviorElement,
/// /// [requiredBehavior] Defines the required behavior for the action.

    @JsonKey(name: 'requiredBehavior') FhirCode? requiredBehavior,
/// /// [_requiredBehavior] Extensions for requiredBehavior

    @JsonKey(name: '_requiredBehavior') FhirElement? requiredBehaviorElement,
/// /// [precheckBehavior] Defines whether the action should usually be
/// preselected.

    @JsonKey(name: 'precheckBehavior') FhirCode? precheckBehavior,
/// /// [_precheckBehavior] Extensions for precheckBehavior

    @JsonKey(name: '_precheckBehavior') FhirElement? precheckBehaviorElement,
/// /// [cardinalityBehavior] Defines whether the action can be selected
/// multiple times.

    @JsonKey(name: 'cardinalityBehavior') FhirCode? cardinalityBehavior,
/// /// [_cardinalityBehavior] Extensions for cardinalityBehavior

    @JsonKey(name: '_cardinalityBehavior') FhirElement? cardinalityBehaviorElement,
/// /// [definitionCanonical] A reference to an ActivityDefinition that
/// describes the action to be taken in detail, a MessageDefinition describing
/// a message to be snet, a PlanDefinition that describes a series of actions
/// to be taken, a Questionnaire that should be filled out, a
/// SpecimenDefinition describing a specimen to be collected, or an
/// ObservationDefinition that specifies what observation should be captured.

    @JsonKey(name: 'definitionCanonical') FhirCanonical? definitionCanonical,
/// /// [_definitionCanonical] Extensions for definitionCanonical

    @JsonKey(name: '_definitionCanonical') FhirElement? definitionCanonicalElement,
/// /// [definitionUri] A reference to an ActivityDefinition that describes the
/// action to be taken in detail, a MessageDefinition describing a message to
/// be snet, a PlanDefinition that describes a series of actions to be taken, a
/// Questionnaire that should be filled out, a SpecimenDefinition describing a
/// specimen to be collected, or an ObservationDefinition that specifies what
/// observation should be captured.

    @JsonKey(name: 'definitionUri') FhirUri? definitionUri,
/// /// [_definitionUri] Extensions for definitionUri

    @JsonKey(name: '_definitionUri') FhirElement? definitionUriElement,
/// /// [transform] A reference to a StructureMap resource that defines a
/// transform that can be executed to produce the intent resource using the
/// ActivityDefinition instance as the input.

    @JsonKey(name: 'transform') FhirCanonical? transform,
/// /// [dynamicValue] Customizations that should be applied to the statically
/// defined resource. For example, if the dosage of a medication must be
/// computed based on the patient's weight, a customization would be used to
/// specify an expression that calculated the weight, and the path on the
/// resource that would contain the result.

    @JsonKey(name: 'dynamicValue') List<List<PlanDefinition_DynamicValue>>? dynamicValue,
/// /// [action] Sub actions that are contained within the action. The behavior
/// of this action determines the functionality of the sub-actions. For
/// example, a selection behavior of at-most-one indicates that of the
/// sub-actions, at most one may be chosen as part of realizing the action
/// definition.

    @JsonKey(name: 'action') List<List<PlanDefinition_Action>>? action,
  }) = _$PlanDefinition_Action;

  @override
  String get fhirType => 'PlanDefinition_Action';

  factory PlanDefinition_Action.fromJson(Map<String, dynamic> json) =>
      _$PlanDefinition_ActionFromJson(json);

  factory PlanDefinition_Action.fromYaml(dynamic yaml) => yaml is String
      ? PlanDefinition_Action.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PlanDefinition_Action.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PlanDefinition_Action cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory PlanDefinition_Action.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PlanDefinition_ActionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
