/// /// [Goal] Describes the intended objective(s) for a patient, group or
/// organization care, for example, weight loss, restoring an activity of daily
/// living, obtaining herd immunity via immunization, meeting a process
/// improvement objective, etc.

@freezed
class Goal with _$Goal {
  const Goal._();

  const factory Goal({
/// /// [resourceType] This is a Goal resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// /// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// /// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// /// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// /// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') FhirElement? implicitRulesElement,
/// /// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// /// [_language] Extensions for language

    @JsonKey(name: '_language') FhirElement? languageElement,
/// /// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// /// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// /// [identifier] Business identifiers assigned to this goal by the
/// performer or other systems which remain constant as the resource is updated
/// and propagates from server to server.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [lifecycleStatus] The state of the goal throughout its lifecycle.

    @JsonKey(name: 'lifecycleStatus') FhirCode? lifecycleStatus,
/// /// [_lifecycleStatus] Extensions for lifecycleStatus

    @JsonKey(name: '_lifecycleStatus') FhirElement? lifecycleStatusElement,
/// /// [achievementStatus] Describes the progression, or lack thereof, towards
/// the goal against the target.

    @JsonKey(name: 'achievementStatus') CodeableConcept? achievementStatus,
/// /// [category] Indicates a category the goal falls within.

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// /// [continuous] After meeting the goal, ongoing activity is needed to
/// sustain the goal objective.

    @JsonKey(name: 'continuous') FhirBoolean? continuous,
/// /// [_continuous] Extensions for continuous

    @JsonKey(name: '_continuous') FhirElement? continuousElement,
/// /// [priority] Identifies the mutually agreed level of importance
/// associated with reaching/sustaining the goal.

    @JsonKey(name: 'priority') CodeableConcept? priority,
/// /// [description] Human-readable and/or coded description of a specific
/// desired objective of care, such as "control blood pressure" or "negotiate
/// an obstacle course" or "dance with child at wedding".

    @JsonKey(name: 'description') CodeableConcept? description,
/// /// [subject] Identifies the patient, group or organization for whom the
/// goal is being established.

    @JsonKey(name: 'subject') Reference? subject,
/// /// [startDate] The date or event after which the goal should begin being
/// pursued.

    @JsonKey(name: 'startDate') FhirDate? startDate,
/// /// [_startDate] Extensions for startDate

    @JsonKey(name: '_startDate') FhirElement? startDateElement,
/// /// [startCodeableConcept] The date or event after which the goal should
/// begin being pursued.

    @JsonKey(name: 'startCodeableConcept') CodeableConcept? startCodeableConcept,
/// /// [target] Indicates what should be done by when.

    @JsonKey(name: 'target') List<List<Goal_Target>>? target,
/// /// [statusDate] Identifies when the current status.  I.e. When initially
/// created, when achieved, when cancelled, etc.

    @JsonKey(name: 'statusDate') FhirDate? statusDate,
/// /// [_statusDate] Extensions for statusDate

    @JsonKey(name: '_statusDate') FhirElement? statusDateElement,
/// /// [statusReason] Captures the reason for the current status.

    @JsonKey(name: 'statusReason') String? statusReason,
/// /// [_statusReason] Extensions for statusReason

    @JsonKey(name: '_statusReason') FhirElement? statusReasonElement,
/// /// [source] Indicates whose goal this is - patient goal, practitioner
/// goal, etc.

    @JsonKey(name: 'source') Reference? source,
/// /// [addresses] The identified conditions and other resources that provide
/// the context for why the goal exists.

    @JsonKey(name: 'addresses') List<List<Reference>>? addresses,
/// /// [note] Any comments related to the goal.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// /// [outcome] Identifies the change (or lack of change) at the point when
/// the status of the goal is assessed.

    @JsonKey(name: 'outcome') List<List<CodeableReference>>? outcome,
  }) = _$Goal;

  @override
  String get fhirType => 'Goal';

  factory Goal.fromJson(Map<String, dynamic> json) =>
      _$GoalFromJson(json);

  factory Goal.fromYaml(dynamic yaml) => yaml is String
      ? Goal.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Goal.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Goal cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Goal.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$GoalFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
