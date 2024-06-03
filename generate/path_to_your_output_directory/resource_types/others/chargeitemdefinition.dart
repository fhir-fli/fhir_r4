/// /// [ChargeItemDefinition] The ChargeItemDefinition resource provides the
/// properties that apply to the (billing) codes necessary to calculate costs
/// and prices. The properties may differ largely depending on type and realm,
/// therefore this resource gives only a rough structure and requires profiling
/// for each type of billing code system.

@freezed
class ChargeItemDefinition with _$ChargeItemDefinition {
  const ChargeItemDefinition._();

  const factory ChargeItemDefinition({
/// /// [resourceType] This is a ChargeItemDefinition resource

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
/// /// [url] An absolute URI that is used to identify this charge item
/// definition when it is referenced in a specification, model, design or an
/// instance; also called its canonical identifier. This SHOULD be globally
/// unique and SHOULD be a literal address at which an authoritative instance
/// of this charge item definition is (or will be) published. This URL can be
/// the target of a canonical reference. It SHALL remain the same when the
/// charge item definition is stored on different servers.

    @JsonKey(name: 'url') FhirUri? url,
/// /// [_url] Extensions for url

    @JsonKey(name: '_url') FhirElement? urlElement,
/// /// [identifier] A formal identifier that is used to identify this charge
/// item definition when it is represented in other formats, or referenced in a
/// specification, model, design or an instance.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [version] The identifier that is used to identify this version of the
/// charge item definition when it is referenced in a specification, model,
/// design or instance. This is an arbitrary value managed by the charge item
/// definition author and is not expected to be globally unique. For example,
/// it might be a timestamp (e.g. yyyymmdd) if a managed version is not
/// available. There is also no expectation that versions can be placed in a
/// lexicographical sequence. To provide a version consistent with the Decision
/// Support Service specification, use the format Major.Minor.Revision (e.g.
/// 1.0.0). For more information on versioning knowledge assets, refer to the
/// Decision Support Service specification. Note that a version is required for
/// non-experimental active assets.

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
/// /// [name] A natural language name identifying the ChargeItemDefinition.
/// This name should be usable as an identifier for the module by machine
/// processing applications such as code generation.

    @JsonKey(name: 'name') String? name,
/// /// [_name] Extensions for name

    @JsonKey(name: '_name') FhirElement? nameElement,
/// /// [title] A short, descriptive, user-friendly title for the charge item
/// definition.

    @JsonKey(name: 'title') String? title,
/// /// [_title] Extensions for title

    @JsonKey(name: '_title') FhirElement? titleElement,
/// /// [status] The current state of the ChargeItemDefinition.

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
/// /// [experimental] A Boolean value to indicate that this charge item
/// definition is authored for testing purposes (or
/// education/evaluation/marketing) and is not intended to be used for genuine
/// usage.

    @JsonKey(name: 'experimental') FhirBoolean? experimental,
/// /// [_experimental] Extensions for experimental

    @JsonKey(name: '_experimental') FhirElement? experimentalElement,
/// /// [date] The date  (and optionally time) when the charge item definition
/// was last significantly changed. The date must change when the business
/// version changes and it must change if the status code changes. In addition,
/// it should change when the substantive content of the charge item definition
/// changes.

    @JsonKey(name: 'date') FhirDateTime? date,
/// /// [_date] Extensions for date

    @JsonKey(name: '_date') FhirElement? dateElement,
/// /// [publisher] The name of the organization or individual responsible for
/// the release and ongoing maintenance of the charge item definition.

    @JsonKey(name: 'publisher') String? publisher,
/// /// [_publisher] Extensions for publisher

    @JsonKey(name: '_publisher') FhirElement? publisherElement,
/// /// [contact] Contact details to assist a user in finding and communicating
/// with the publisher.

    @JsonKey(name: 'contact') List<List<ContactDetail>>? contact,
/// /// [description] A free text natural language description of the charge
/// item definition from a consumer's perspective.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [useContext] The content was developed with a focus and intent of
/// supporting the contexts that are listed. These contexts may be general
/// categories (gender, age, ...) or may be references to specific programs
/// (insurance plans, studies, ...) and may be used to assist with indexing and
/// searching for appropriate charge item definition instances.

    @JsonKey(name: 'useContext') List<List<UsageContext>>? useContext,
/// /// [jurisdiction] A legal or geographic region in which the charge item
/// definition is intended to be used.

    @JsonKey(name: 'jurisdiction') List<List<CodeableConcept>>? jurisdiction,
/// /// [purpose] Explanation of why this charge item definition is needed and
/// why it has been designed as it has.

    @JsonKey(name: 'purpose') FhirMarkdown? purpose,
/// /// [_purpose] Extensions for purpose

    @JsonKey(name: '_purpose') FhirElement? purposeElement,
/// /// [copyright] A copyright statement relating to the charge item
/// definition and/or its contents. Copyright statements are generally legal
/// restrictions on the use and publishing of the charge item definition.

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
/// /// [approvalDate] The date on which the resource content was approved by
/// the publisher. Approval happens once when the content is officially
/// approved for usage.

    @JsonKey(name: 'approvalDate') FhirDate? approvalDate,
/// /// [_approvalDate] Extensions for approvalDate

    @JsonKey(name: '_approvalDate') FhirElement? approvalDateElement,
/// /// [lastReviewDate] The date on which the resource content was last
/// reviewed. Review happens periodically after approval but does not change
/// the original approval date.

    @JsonKey(name: 'lastReviewDate') FhirDate? lastReviewDate,
/// /// [_lastReviewDate] Extensions for lastReviewDate

    @JsonKey(name: '_lastReviewDate') FhirElement? lastReviewDateElement,
/// /// [effectivePeriod] The period during which the {{title}} content was or
/// is planned to be in active use.

    @JsonKey(name: 'effectivePeriod') Period? effectivePeriod,
/// /// [topic] Descriptive topics related to the content of the {{title}}.
/// Topics provide a high-level categorization as well as keywords for the
/// {{title}} that can be useful for filtering and searching.

    @JsonKey(name: 'topic') List<List<CodeableConcept>>? topic,
/// /// [author] An individiual or organization primarily involved in the
/// creation and maintenance of the {{title}}.

    @JsonKey(name: 'author') List<List<ContactDetail>>? author,
/// /// [editor] An individual or organization primarily responsible for
/// internal coherence of the {{title}}.

    @JsonKey(name: 'editor') List<List<ContactDetail>>? editor,
/// /// [reviewer] An individual or organization asserted by the publisher to
/// be primarily responsible for review of some aspect of the {{title}}.

    @JsonKey(name: 'reviewer') List<List<ContactDetail>>? reviewer,
/// /// [endorser] An individual or organization asserted by the publisher to
/// be responsible for officially endorsing the {{title}} for use in some
/// setting.

    @JsonKey(name: 'endorser') List<List<ContactDetail>>? endorser,
/// /// [relatedArtifact] Related artifacts such as additional documentation,
/// justification, dependencies, bibliographic references, and predecessor and
/// successor artifacts.

    @JsonKey(name: 'relatedArtifact') List<List<RelatedArtifact>>? relatedArtifact,
/// /// [derivedFromUri] The URL pointing to an externally-defined charge item
/// definition that is adhered to in whole or in part by this definition.

    @JsonKey(name: 'derivedFromUri') List<List<FhirUri>>? derivedFromUri,
/// /// [_derivedFromUri] Extensions for derivedFromUri

    @JsonKey(name: '_derivedFromUri') List<FhirElement>? derivedFromUriElement,
/// /// [partOf] A larger definition of which this particular definition is a
/// component or step.

    @JsonKey(name: 'partOf') List<List<FhirCanonical>>? partOf,
/// /// [replaces] As new versions of a protocol or guideline are defined,
/// allows identification of what versions are replaced by a new instance.

    @JsonKey(name: 'replaces') List<List<FhirCanonical>>? replaces,
/// /// [account]  A set of candidate accounts to which charge items using this
/// definition may be assigned.

    @JsonKey(name: 'account') List<List<Reference>>? account,
/// /// [code] The defined billing details in this resource pertain to the
/// given billing code.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [instance] The defined billing details in this resource pertain to the
/// given product instance(s).

    @JsonKey(name: 'instance') List<List<Reference>>? instance,
/// /// [applicability] Expressions that describe applicability criteria for
/// the billing code.

    @JsonKey(name: 'applicability') List<List<ChargeItemDefinition_Applicability>>? applicability,
/// /// [propertyGroup] Group of properties which are applicable under the same
/// conditions. If no applicability rules are established for the group, then
/// all properties always apply.

    @JsonKey(name: 'propertyGroup') List<List<ChargeItemDefinition_PropertyGroup>>? propertyGroup,
  }) = _$ChargeItemDefinition;

  @override
  String get fhirType => 'ChargeItemDefinition';

  factory ChargeItemDefinition.fromJson(Map<String, dynamic> json) =>
      _$ChargeItemDefinitionFromJson(json);

  factory ChargeItemDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ChargeItemDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ChargeItemDefinition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ChargeItemDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ChargeItemDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ChargeItemDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
