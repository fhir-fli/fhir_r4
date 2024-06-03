/// /// [Consent] A record of a healthcare consumer’s  choices  or choices made
/// on their behalf by a third party, which permits or denies identified
/// recipient(s) or recipient role(s) to perform one or more actions within a
/// given policy context, for specific purposes and periods of time.

@freezed
class Consent with _$Consent {
  const Consent._();

  const factory Consent({
/// /// [resourceType] This is a Consent resource

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
/// /// [identifier] Unique identifier for this copy of the Consent Statement.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [status] Indicates the current state of this Consent resource.

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
/// /// [category] A classification of the type of consents found in the
/// statement. This element supports indexing and retrieval of consent
/// statements.

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// /// [subject] The patient/healthcare practitioner or group of persons to
/// whom this consent applies.

    @JsonKey(name: 'subject') Reference? subject,
/// /// [date] Date the consent instance was agreed to.

    @JsonKey(name: 'date') FhirDate? date,
/// /// [_date] Extensions for date

    @JsonKey(name: '_date') FhirElement? dateElement,
/// /// [period] Effective period for this Consent Resource and all provisions
/// unless specified in that provision.

    @JsonKey(name: 'period') Period? period,
/// /// [grantor] The entity responsible for granting the rights listed in a
/// Consent Directive.

    @JsonKey(name: 'grantor') List<List<Reference>>? grantor,
/// /// [grantee] The entity responsible for complying with the Consent
/// Directive, including any obligations or limitations on authorizations and
/// enforcement of prohibitions.

    @JsonKey(name: 'grantee') List<List<Reference>>? grantee,
/// /// [manager] The actor that manages the consent through its lifecycle.

    @JsonKey(name: 'manager') List<List<Reference>>? manager,
/// /// [controller] The actor that controls/enforces the access according to
/// the consent.

    @JsonKey(name: 'controller') List<List<Reference>>? controller,
/// /// [sourceAttachment] The source on which this consent statement is based.
/// The source might be a scanned original paper form.

    @JsonKey(name: 'sourceAttachment') List<List<Attachment>>? sourceAttachment,
/// /// [sourceReference] A reference to a consent that links back to such a
/// source, a reference to a document repository (e.g. XDS) that stores the
/// original consent document.

    @JsonKey(name: 'sourceReference') List<List<Reference>>? sourceReference,
/// /// [regulatoryBasis] A set of codes that indicate the regulatory basis (if
/// any) that this consent supports.

    @JsonKey(name: 'regulatoryBasis') List<List<CodeableConcept>>? regulatoryBasis,
/// /// [policyBasis] A Reference or URL used to uniquely identify the policy
/// the organization will enforce for this Consent. This Reference or URL
/// should be specific to the version of the policy and should be
/// dereferencable to a computable policy of some form.

    @JsonKey(name: 'policyBasis') Consent_PolicyBasis? policyBasis,
/// /// [policyText] A Reference to the human readable policy explaining the
/// basis for the Consent.

    @JsonKey(name: 'policyText') List<List<Reference>>? policyText,
/// /// [verification] Whether a treatment instruction (e.g. artificial
/// respiration: yes or no) was verified with the patient, his/her family or
/// another authorized person.

    @JsonKey(name: 'verification') List<List<Consent_Verification>>? verification,
/// /// [decision] Action to take - permit or deny - as default.

    @JsonKey(name: 'decision') FhirCode? decision,
/// /// [_decision] Extensions for decision

    @JsonKey(name: '_decision') FhirElement? decisionElement,
/// /// [provision] An exception to the base policy of this consent. An
/// exception can be an addition or removal of access permissions.

    @JsonKey(name: 'provision') List<List<Consent_Provision>>? provision,
  }) = _$Consent;

  @override
  String get fhirType => 'Consent';

  factory Consent.fromJson(Map<String, dynamic> json) =>
      _$ConsentFromJson(json);

  factory Consent.fromYaml(dynamic yaml) => yaml is String
      ? Consent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Consent.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Consent cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Consent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConsentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
