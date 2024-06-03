/// /// [SubscriptionTopic] Describes a stream of resource state changes or
/// events and annotated with labels useful to filter projections from this
/// topic.

@freezed
class SubscriptionTopic with _$SubscriptionTopic {
  const SubscriptionTopic._();

  const factory SubscriptionTopic({
/// /// [resourceType] This is a SubscriptionTopic resource

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
/// /// [url] An absolute URI that is used to identify this subscription topic
/// when it is referenced in a specification, model, design or an instance;
/// also called its canonical identifier. This SHOULD be globally unique and
/// SHOULD be a literal address at which an authoritative instance of this
/// subscription topic is (or will be) published. This URL can be the target of
/// a canonical reference. It SHALL remain the same when the subscription topic
/// is stored on different servers.

    @JsonKey(name: 'url') FhirUri? url,
/// /// [_url] Extensions for url

    @JsonKey(name: '_url') FhirElement? urlElement,
/// /// [identifier] Business identifiers assigned to this subscription topic
/// by the performer and/or other systems.  These identifiers remain constant
/// as the resource is updated and propagates from server to server.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [version] The identifier that is used to identify this version of the
/// subscription topic when it is referenced in a specification, model, design
/// or instance. This is an arbitrary value managed by the Topic author and is
/// not expected to be globally unique. For example, it might be a timestamp
/// (e.g. yyyymmdd) if a managed version is not available. There is also no
/// expectation that versions are orderable.

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
/// /// [name] A natural language name identifying the subscription topic This
/// name should be usable as an identifier for the module by machine processing
/// applications such as code generation.

    @JsonKey(name: 'name') String? name,
/// /// [_name] Extensions for name

    @JsonKey(name: '_name') FhirElement? nameElement,
/// /// [title] A short, descriptive, user-friendly title for the subscription
/// topic.  For example, "admission".

    @JsonKey(name: 'title') String? title,
/// /// [_title] Extensions for title

    @JsonKey(name: '_title') FhirElement? titleElement,
/// /// [status] The current state of the SubscriptionTopic.

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
/// /// [experimental] A flag to indicate that this TopSubscriptionTopicic is
/// authored for testing purposes (or education/evaluation/marketing), and is
/// not intended to be used for genuine usage.

    @JsonKey(name: 'experimental') FhirBoolean? experimental,
/// /// [_experimental] Extensions for experimental

    @JsonKey(name: '_experimental') FhirElement? experimentalElement,
/// /// [date] The date (and optionally time) when the subscription topic was
/// last significantly changed. The date must change when the business version
/// changes and it must change if the status code changes. In addition, it
/// should change when the substantive content of the subscription topic
/// changes.

    @JsonKey(name: 'date') FhirDateTime? date,
/// /// [_date] Extensions for date

    @JsonKey(name: '_date') FhirElement? dateElement,
/// /// [publisher] Helps establish the "authority/credibility" of the
/// SubscriptionTopic.  May also allow for contact.

    @JsonKey(name: 'publisher') String? publisher,
/// /// [_publisher] Extensions for publisher

    @JsonKey(name: '_publisher') FhirElement? publisherElement,
/// /// [contact] Contact details to assist a user in finding and communicating
/// with the publisher.

    @JsonKey(name: 'contact') List<List<ContactDetail>>? contact,
/// /// [description] A free text natural language description of the Topic
/// from the consumer's perspective.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [useContext] The content was developed with a focus and intent of
/// supporting the contexts that are listed. These terms may be used to assist
/// with indexing and searching of code system definitions.

    @JsonKey(name: 'useContext') List<List<UsageContext>>? useContext,
/// /// [jurisdiction] A jurisdiction in which the Topic is intended to be
/// used.

    @JsonKey(name: 'jurisdiction') List<List<CodeableConcept>>? jurisdiction,
/// /// [purpose] Explains why this Topic is needed and why it has been
/// designed as it has.

    @JsonKey(name: 'purpose') FhirMarkdown? purpose,
/// /// [_purpose] Extensions for purpose

    @JsonKey(name: '_purpose') FhirElement? purposeElement,
/// /// [copyright] A copyright statement relating to the SubscriptionTopic
/// and/or its contents. Copyright statements are generally legal restrictions
/// on the use and publishing of the SubscriptionTopic.

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
/// /// [derivedFrom] The canonical URL pointing to another FHIR-defined
/// SubscriptionTopic that is adhered to in whole or in part by this
/// SubscriptionTopic.

    @JsonKey(name: 'derivedFrom') List<List<FhirCanonical>>? derivedFrom,
/// /// [approvalDate] The date on which the asset content was approved by the
/// publisher. Approval happens once when the content is officially approved
/// for usage.

    @JsonKey(name: 'approvalDate') FhirDate? approvalDate,
/// /// [_approvalDate] Extensions for approvalDate

    @JsonKey(name: '_approvalDate') FhirElement? approvalDateElement,
/// /// [lastReviewDate] The date on which the asset content was last reviewed.
/// Review happens periodically after that, but doesn't change the original
/// approval date.

    @JsonKey(name: 'lastReviewDate') FhirDate? lastReviewDate,
/// /// [_lastReviewDate] Extensions for lastReviewDate

    @JsonKey(name: '_lastReviewDate') FhirElement? lastReviewDateElement,
/// /// [effectivePeriod] The period during which the SubscriptionTopic content
/// was or is planned to be effective.

    @JsonKey(name: 'effectivePeriod') Period? effectivePeriod,
/// /// [resourceTrigger] A definition of a resource-based event that triggers
/// a notification based on the SubscriptionTopic. The criteria may be just a
/// human readable description and/or a full FHIR search string or FHIRPath
/// expression. Multiple triggers are considered OR joined (e.g., a resource
/// update matching ANY of the definitions will trigger a notification).

    @JsonKey(name: 'resourceTrigger') List<List<SubscriptionTopic_ResourceTrigger>>? resourceTrigger,
/// /// [eventTrigger] Event definition which can be used to trigger the
/// SubscriptionTopic.

    @JsonKey(name: 'eventTrigger') List<List<SubscriptionTopic_EventTrigger>>? eventTrigger,
/// /// [canFilterBy] List of properties by which Subscriptions on the
/// SubscriptionTopic can be filtered. May be defined Search Parameters (e.g.,
/// Encounter.patient) or parameters defined within this SubscriptionTopic
/// context (e.g., hub.event).

    @JsonKey(name: 'canFilterBy') List<List<SubscriptionTopic_CanFilterBy>>? canFilterBy,
/// /// [notificationShape] List of properties to describe the shape (e.g.,
/// resources) included in notifications from this Subscription Topic.

    @JsonKey(name: 'notificationShape') List<List<SubscriptionTopic_NotificationShape>>? notificationShape,
  }) = _$SubscriptionTopic;

  @override
  String get fhirType => 'SubscriptionTopic';

  factory SubscriptionTopic.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionTopicFromJson(json);

  factory SubscriptionTopic.fromYaml(dynamic yaml) => yaml is String
      ? SubscriptionTopic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubscriptionTopic.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubscriptionTopic cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubscriptionTopic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubscriptionTopicFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
