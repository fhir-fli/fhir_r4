/// /// [Provenance] Provenance of a resource is a record that describes
/// entities and processes involved in producing and delivering or otherwise
/// influencing that resource. Provenance provides a critical foundation for
/// assessing authenticity, enabling trust, and allowing reproducibility.
/// Provenance assertions are a form of contextual metadata and can themselves
/// become important records with their own provenance. Provenance statement
/// indicates clinical significance in terms of confidence in authenticity,
/// reliability, and trustworthiness, integrity, and stage in lifecycle (e.g.
/// Document Completion - has the artifact been legally authenticated), all of
/// which may impact security, privacy, and trust policies.

@freezed
class Provenance with _$Provenance {
  const Provenance._();

  const factory Provenance({
/// /// [resourceType] This is a Provenance resource

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
/// /// [target] The Reference(s) that were generated or updated by  the
/// activity described in this resource. A provenance can point to more than
/// one target if multiple resources were created/updated by the same activity.

    @JsonKey(name: 'target') List<List<Reference>>? target,
/// /// [occurredPeriod] The period during which the activity occurred.

    @JsonKey(name: 'occurredPeriod') Period? occurredPeriod,
/// /// [occurredDateTime] The period during which the activity occurred.

    @JsonKey(name: 'occurredDateTime') FhirDateTime? occurredDateTime,
/// /// [_occurredDateTime] Extensions for occurredDateTime

    @JsonKey(name: '_occurredDateTime') FhirElement? occurredDateTimeElement,
/// /// [recorded] The instant of time at which the activity was recorded.

    @JsonKey(name: 'recorded') FhirInstant? recorded,
/// /// [_recorded] Extensions for recorded

    @JsonKey(name: '_recorded') FhirElement? recordedElement,
/// /// [policy] Policy or plan the activity was defined by. Typically, a
/// single activity may have multiple applicable policy documents, such as
/// patient consent, guarantor funding, etc.

    @JsonKey(name: 'policy') List<List<FhirUri>>? policy,
/// /// [_policy] Extensions for policy

    @JsonKey(name: '_policy') List<FhirElement>? policyElement,
/// /// [location] Where the activity occurred.

    @JsonKey(name: 'location') Reference? location,
/// /// [authorization] The authorization (e.g., PurposeOfUse) that was used
/// during the event being recorded.

    @JsonKey(name: 'authorization') List<List<CodeableReference>>? authorization,
/// /// [why] Describes why the event recorded in this provenenace occurred in
/// textual form.

    @JsonKey(name: 'why') FhirMarkdown? why,
/// /// [_why] Extensions for why

    @JsonKey(name: '_why') FhirElement? whyElement,
/// /// [activity] An activity is something that occurs over a period of time
/// and acts upon or with entities; it may include consuming, processing,
/// transforming, modifying, relocating, using, or generating entities.

    @JsonKey(name: 'activity') CodeableConcept? activity,
/// /// [basedOn] A plan, proposal or order that is fulfilled in whole or in
/// part by this provenance.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// /// [patient] The patient element is available to enable deterministic
/// tracking of activities that involve the patient as the subject of the data
/// used in an activity.

    @JsonKey(name: 'patient') Reference? patient,
/// /// [encounter] This will typically be the encounter the event occurred,
/// but some events may be initiated prior to or after the official completion
/// of an encounter but still be tied to the context of the encounter (e.g.
/// pre-admission lab tests).

    @JsonKey(name: 'encounter') Reference? encounter,
/// /// [agent] An actor taking a role in an activity  for which it can be
/// assigned some degree of responsibility for the activity taking place.

    @JsonKey(name: 'agent') List<List<Provenance_Agent>>? agent,
/// /// [entity] An entity used in this activity.

    @JsonKey(name: 'entity') List<List<Provenance_Entity>>? entity,
/// /// [signature] A digital signature on the target Reference(s). The signer
/// should match a Provenance.agent. The purpose of the signature is indicated.

    @JsonKey(name: 'signature') List<List<Signature>>? signature,
  }) = _$Provenance;

  @override
  String get fhirType => 'Provenance';

  factory Provenance.fromJson(Map<String, dynamic> json) =>
      _$ProvenanceFromJson(json);

  factory Provenance.fromYaml(dynamic yaml) => yaml is String
      ? Provenance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Provenance.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Provenance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Provenance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ProvenanceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
