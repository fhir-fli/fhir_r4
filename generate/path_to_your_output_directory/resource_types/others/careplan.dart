/// /// [CarePlan] Describes the intention of how one or more practitioners
/// intend to deliver care for a particular patient, group or community for a
/// period of time, possibly limited to care for a specific condition or set of
/// conditions.

@freezed
class CarePlan with _$CarePlan {
  const CarePlan._();

  const factory CarePlan({
/// /// [resourceType] This is a CarePlan resource

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
/// /// [identifier] Business identifiers assigned to this care plan by the
/// performer or other systems which remain constant as the resource is updated
/// and propagates from server to server.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
/// guideline, questionnaire or other definition that is adhered to in whole or
/// in part by this CarePlan.

    @JsonKey(name: 'instantiatesCanonical') List<List<FhirCanonical>>? instantiatesCanonical,
/// /// [instantiatesUri] The URL pointing to an externally maintained
/// protocol, guideline, questionnaire or other definition that is adhered to
/// in whole or in part by this CarePlan.

    @JsonKey(name: 'instantiatesUri') List<List<FhirUri>>? instantiatesUri,
/// /// [_instantiatesUri] Extensions for instantiatesUri

    @JsonKey(name: '_instantiatesUri') List<FhirElement>? instantiatesUriElement,
/// /// [basedOn] A higher-level request resource (i.e. a plan, proposal or
/// order) that is fulfilled in whole or in part by this care plan.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// /// [replaces] Completed or terminated care plan whose function is taken by
/// this new care plan.

    @JsonKey(name: 'replaces') List<List<Reference>>? replaces,
/// /// [partOf] A larger care plan of which this particular care plan is a
/// component or step.

    @JsonKey(name: 'partOf') List<List<Reference>>? partOf,
/// /// [status] Indicates whether the plan is currently being acted upon,
/// represents future intentions or is now a historical record.

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
/// /// [intent] Indicates the level of authority/intentionality associated
/// with the care plan and where the care plan fits into the workflow chain.

    @JsonKey(name: 'intent') FhirCode? intent,
/// /// [_intent] Extensions for intent

    @JsonKey(name: '_intent') FhirElement? intentElement,
/// /// [category] Identifies what "kind" of plan this is to support
/// differentiation between multiple co-existing plans; e.g. "Home health",
/// "psychiatric", "asthma", "disease management", "wellness plan", etc.

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// /// [title] Human-friendly name for the care plan.

    @JsonKey(name: 'title') String? title,
/// /// [_title] Extensions for title

    @JsonKey(name: '_title') FhirElement? titleElement,
/// /// [description] A description of the scope and nature of the plan.

    @JsonKey(name: 'description') String? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [subject] Identifies the patient or group whose intended care is
/// described by the plan.

    @JsonKey(name: 'subject') Reference? subject,
/// /// [encounter] The Encounter during which this CarePlan was created or to
/// which the creation of this record is tightly associated.

    @JsonKey(name: 'encounter') Reference? encounter,
/// /// [period] Indicates when the plan did (or is intended to) come into
/// effect and end.

    @JsonKey(name: 'period') Period? period,
/// /// [created] Represents when this particular CarePlan record was created
/// in the system, which is often a system-generated date.

    @JsonKey(name: 'created') FhirDateTime? created,
/// /// [_created] Extensions for created

    @JsonKey(name: '_created') FhirElement? createdElement,
/// /// [custodian] When populated, the custodian is responsible for the care
/// plan. The care plan is attributed to the custodian.

    @JsonKey(name: 'custodian') Reference? custodian,
/// /// [contributor] Identifies the individual(s), organization or device who
/// provided the contents of the care plan.

    @JsonKey(name: 'contributor') List<List<Reference>>? contributor,
/// /// [careTeam] Identifies all people and organizations who are expected to
/// be involved in the care envisioned by this plan.

    @JsonKey(name: 'careTeam') List<List<Reference>>? careTeam,
/// /// [addresses] Identifies the conditions/problems/concerns/diagnoses/etc.
/// whose management and/or mitigation are handled by this plan.

    @JsonKey(name: 'addresses') List<List<CodeableReference>>? addresses,
/// /// [supportingInfo] Identifies portions of the patient's record that
/// specifically influenced the formation of the plan.  These might include
/// comorbidities, recent procedures, limitations, recent assessments, etc.

    @JsonKey(name: 'supportingInfo') List<List<Reference>>? supportingInfo,
/// /// [goal] Describes the intended objective(s) of carrying out the care
/// plan.

    @JsonKey(name: 'goal') List<List<Reference>>? goal,
/// /// [activity] Identifies an action that has occurred or is a planned
/// action to occur as part of the plan. For example, a medication to be used,
/// lab tests to perform, self-monitoring that has occurred, education etc.

    @JsonKey(name: 'activity') List<List<CarePlan_Activity>>? activity,
/// /// [note] General notes about the care plan not covered elsewhere.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
  }) = _$CarePlan;

  @override
  String get fhirType => 'CarePlan';

  factory CarePlan.fromJson(Map<String, dynamic> json) =>
      _$CarePlanFromJson(json);

  factory CarePlan.fromYaml(dynamic yaml) => yaml is String
      ? CarePlan.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CarePlan.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CarePlan cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CarePlan.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CarePlanFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
