/// /// [MessageDefinition] Defines the characteristics of a message that can
/// be shared between systems, including the type of event that initiates the
/// message, the content to be transmitted and what response(s), if any, are
/// permitted.

@freezed
class MessageDefinition with _$MessageDefinition {
  const MessageDefinition._();

  const factory MessageDefinition({
/// /// [resourceType] This is a MessageDefinition resource

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
/// /// [url] The business identifier that is used to reference the
/// MessageDefinition and *is* expected to be consistent from server to server.

    @JsonKey(name: 'url') FhirUri? url,
/// /// [_url] Extensions for url

    @JsonKey(name: '_url') FhirElement? urlElement,
/// /// [identifier] A formal identifier that is used to identify this message
/// definition when it is represented in other formats, or referenced in a
/// specification, model, design or an instance.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [version] The identifier that is used to identify this version of the
/// message definition when it is referenced in a specification, model, design
/// or instance. This is an arbitrary value managed by the message definition
/// author and is not expected to be globally unique. For example, it might be
/// a timestamp (e.g. yyyymmdd) if a managed version is not available. There is
/// also no expectation that versions can be placed in a lexicographical
/// sequence.

    @JsonKey(name: 'version') String? version,
/// /// [_version] Extensions for version

    @JsonKey(name: '_version') FhirElement? versionElement,
/// /// [versionAlgorithmString] Indicates the mechanism used to compare
/// versions to determine which is more current.

    @JsonKey(name: 'versionAlgorithmString') String? versionAlgorithmString,
/// /// [_versionAlgorithmString] Extensions for versionAlgorithmString

    @JsonKey(name: '_versionAlgorithmString') FhirElement? versionAlgorithmStringElement,
/// /// [versionAlgorithmCoding] Indicates the mechanism used to compare
/// versions to determine which is more current.

    @JsonKey(name: 'versionAlgorithmCoding') Coding? versionAlgorithmCoding,
/// /// [name] A natural language name identifying the message definition. This
/// name should be usable as an identifier for the module by machine processing
/// applications such as code generation.

    @JsonKey(name: 'name') String? name,
/// /// [_name] Extensions for name

    @JsonKey(name: '_name') FhirElement? nameElement,
/// /// [title] A short, descriptive, user-friendly title for the message
/// definition.

    @JsonKey(name: 'title') String? title,
/// /// [_title] Extensions for title

    @JsonKey(name: '_title') FhirElement? titleElement,
/// /// [status] The status of this message definition. Enables tracking the
/// life-cycle of the content.

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
/// /// [experimental] A Boolean value to indicate that this message definition
/// is authored for testing purposes (or education/evaluation/marketing) and is
/// not intended to be used for genuine usage.

    @JsonKey(name: 'experimental') FhirBoolean? experimental,
/// /// [_experimental] Extensions for experimental

    @JsonKey(name: '_experimental') FhirElement? experimentalElement,
/// /// [date] The date  (and optionally time) when the message definition was
/// last significantly changed. The date must change when the business version
/// changes and it must change if the status code changes. In addition, it
/// should change when the substantive content of the message definition
/// changes.

    @JsonKey(name: 'date') FhirDateTime? date,
/// /// [_date] Extensions for date

    @JsonKey(name: '_date') FhirElement? dateElement,
/// /// [publisher] The name of the organization or individual responsible for
/// the release and ongoing maintenance of the message definition.

    @JsonKey(name: 'publisher') String? publisher,
/// /// [_publisher] Extensions for publisher

    @JsonKey(name: '_publisher') FhirElement? publisherElement,
/// /// [contact] Contact details to assist a user in finding and communicating
/// with the publisher.

    @JsonKey(name: 'contact') List<List<ContactDetail>>? contact,
/// /// [description] A free text natural language description of the message
/// definition from a consumer's perspective.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [useContext] The content was developed with a focus and intent of
/// supporting the contexts that are listed. These contexts may be general
/// categories (gender, age, ...) or may be references to specific programs
/// (insurance plans, studies, ...) and may be used to assist with indexing and
/// searching for appropriate message definition instances.

    @JsonKey(name: 'useContext') List<List<UsageContext>>? useContext,
/// /// [jurisdiction] A legal or geographic region in which the message
/// definition is intended to be used.

    @JsonKey(name: 'jurisdiction') List<List<CodeableConcept>>? jurisdiction,
/// /// [purpose] Explanation of why this message definition is needed and why
/// it has been designed as it has.

    @JsonKey(name: 'purpose') FhirMarkdown? purpose,
/// /// [_purpose] Extensions for purpose

    @JsonKey(name: '_purpose') FhirElement? purposeElement,
/// /// [copyright] A copyright statement relating to the message definition
/// and/or its contents. Copyright statements are generally legal restrictions
/// on the use and publishing of the message definition.

    @JsonKey(name: 'copyright') FhirMarkdown? copyright,
/// /// [_copyright] Extensions for copyright

    @JsonKey(name: '_copyright') FhirElement? copyrightElement,
/// /// [copyrightLabel] A short string (<50 characters), suitable for
/// inclusion in a page footer that identifies the copyright holder, effective
/// period, and optionally whether rights are resctricted. (e.g. 'All rights
/// reserved', 'Some rights reserved').

    @JsonKey(name: 'copyrightLabel') String? copyrightLabel,
/// /// [_copyrightLabel] Extensions for copyrightLabel

    @JsonKey(name: '_copyrightLabel') FhirElement? copyrightLabelElement,
/// /// [replaces] A MessageDefinition that is superseded by this definition.

    @JsonKey(name: 'replaces') List<List<FhirCanonical>>? replaces,
/// /// [base] The MessageDefinition that is the basis for the contents of this
/// resource.

    @JsonKey(name: 'base') FhirCanonical? base,
/// /// [parent] Identifies a protocol or workflow that this MessageDefinition
/// represents a step in.

    @JsonKey(name: 'parent') List<List<FhirCanonical>>? parent,
/// /// [eventCoding] Event code or link to the EventDefinition.

    @JsonKey(name: 'eventCoding') Coding? eventCoding,
/// /// [eventUri] Event code or link to the EventDefinition.

    @JsonKey(name: 'eventUri') FhirUri? eventUri,
/// /// [_eventUri] Extensions for eventUri

    @JsonKey(name: '_eventUri') FhirElement? eventUriElement,
/// /// [category] The impact of the content of the message.

    @JsonKey(name: 'category') FhirCode? category,
/// /// [_category] Extensions for category

    @JsonKey(name: '_category') FhirElement? categoryElement,
/// /// [focus] Identifies the resource (or resources) that are being addressed
/// by the event.  For example, the Encounter for an admit message or two
/// Account records for a merge.

    @JsonKey(name: 'focus') List<List<MessageDefinition_Focus>>? focus,
/// /// [responseRequired] Declare at a message definition level whether a
/// response is required or only upon error or success, or never.

    @JsonKey(name: 'responseRequired') FhirCode? responseRequired,
/// /// [_responseRequired] Extensions for responseRequired

    @JsonKey(name: '_responseRequired') FhirElement? responseRequiredElement,
/// /// [allowedResponse] Indicates what types of messages may be sent as an
/// application-level response to this message.

    @JsonKey(name: 'allowedResponse') List<List<MessageDefinition_AllowedResponse>>? allowedResponse,
/// /// [graph] Graph is Canonical reference to a GraphDefinition. If a URL is
/// provided, it is the canonical reference to a GraphDefinition that it
/// controls what additional resources are to be added to the Bundle when
/// building the message. The GraphDefinition can also specify profiles that
/// apply to the various resources.

    @JsonKey(name: 'graph') FhirCanonical? graph,
  }) = _$MessageDefinition;

  @override
  String get fhirType => 'MessageDefinition';

  factory MessageDefinition.fromJson(Map<String, dynamic> json) =>
      _$MessageDefinitionFromJson(json);

  factory MessageDefinition.fromYaml(dynamic yaml) => yaml is String
      ? MessageDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MessageDefinition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MessageDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MessageDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MessageDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
