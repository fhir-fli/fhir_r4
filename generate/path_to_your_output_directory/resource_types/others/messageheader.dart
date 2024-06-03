/// /// [MessageHeader] The header for a message exchange that is either
/// requesting or responding to an action.  The reference(s) that are the
/// subject of the action as well as other information related to the action
/// are typically transmitted in a bundle in which the MessageHeader resource
/// instance is the first resource in the bundle.

@freezed
class MessageHeader with _$MessageHeader {
  const MessageHeader._();

  const factory MessageHeader({
/// /// [resourceType] This is a MessageHeader resource

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
/// /// [eventCoding] Code that identifies the event this message represents
/// and connects it with its definition. Events defined as part of the FHIR
/// specification are defined by the implementation.  Alternatively a uri ,
/// canonical uri to the EventDefinition or SubscriptionTopic.

    @JsonKey(name: 'eventCoding') Coding? eventCoding,
/// /// [eventUri] Code that identifies the event this message represents and
/// connects it with its definition. Events defined as part of the FHIR
/// specification are defined by the implementation.  Alternatively a uri ,
/// canonical uri to the EventDefinition or SubscriptionTopic.

    @JsonKey(name: 'eventUri') FhirUri? eventUri,
/// /// [_eventUri] Extensions for eventUri

    @JsonKey(name: '_eventUri') FhirElement? eventUriElement,
/// /// [eventCanonical] Code that identifies the event this message represents
/// and connects it with its definition. Events defined as part of the FHIR
/// specification are defined by the implementation.  Alternatively a uri ,
/// canonical uri to the EventDefinition or SubscriptionTopic.

    @JsonKey(name: 'eventCanonical') FhirCanonical? eventCanonical,
/// /// [_eventCanonical] Extensions for eventCanonical

    @JsonKey(name: '_eventCanonical') FhirElement? eventCanonicalElement,
/// /// [destination] The destination application which the message is intended
/// for.

    @JsonKey(name: 'destination') List<List<MessageHeader_Destination>>? destination,
/// /// [source] The source application from which this message originated.

    @JsonKey(name: 'source') MessageHeader_Source? source,
/// /// [reason] Coded indication of the cause for the event - indicates  a
/// reason for the occurrence of the event that is a focus of this message.

    @JsonKey(name: 'reason') CodeableConcept? reason,
/// /// [response] Information about the message that this message is a
/// response to.  Only present if this message is a response.

    @JsonKey(name: 'response') MessageHeader_Response? response,
/// /// [focus] The actual data of the message - a reference to the root/focus
/// class of the event. This is allowed to be a Parameters resource.

    @JsonKey(name: 'focus') List<List<Reference>>? focus,
/// /// [definition] Permanent link to the MessageDefinition for this message.

    @JsonKey(name: 'definition') FhirCanonical? definition,
  }) = _$MessageHeader;

  @override
  String get fhirType => 'MessageHeader';

  factory MessageHeader.fromJson(Map<String, dynamic> json) =>
      _$MessageHeaderFromJson(json);

  factory MessageHeader.fromYaml(dynamic yaml) => yaml is String
      ? MessageHeader.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MessageHeader.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MessageHeader cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MessageHeader.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MessageHeaderFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
