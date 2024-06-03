/// /// [DocumentReference] A reference to a document of any kind for any
/// purpose. While the term “document” implies a more narrow focus, for this
/// resource this "document" encompasses *any* serialized object with a
/// mime-type, it includes formal patient-centric documents (CDA), clinical
/// notes, scanned paper, non-patient specific documents like policy text, as
/// well as a photo, video, or audio recording acquired or used in healthcare.
/// The DocumentReference resource provides metadata about the document so that
/// the document can be discovered and managed.  The actual content may be
/// inline base64 encoded data or provided by direct reference.

@freezed
class DocumentReference with _$DocumentReference {
  const DocumentReference._();

  const factory DocumentReference({
/// /// [resourceType] This is a DocumentReference resource

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
/// /// [identifier] Business identifiers assigned to this document reference
/// by the performer and/or other systems.  These identifiers remain constant
/// as the resource is updated and propagates from server to server.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [version] An explicitly assigned identifier of a variation of the
/// content in the DocumentReference.

    @JsonKey(name: 'version') String? version,
/// /// [_version] Extensions for version

    @JsonKey(name: '_version') FhirElement? versionElement,
/// /// [basedOn] A procedure that is fulfilled in whole or in part by the
/// creation of this media.

    @JsonKey(name: 'basedOn') List<List<Reference>>? basedOn,
/// /// [status] The current state of the document reference.

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
/// /// [docStatus] The status of the underlying document.

    @JsonKey(name: 'docStatus') FhirCode? docStatus,
/// /// [_docStatus] Extensions for docStatus

    @JsonKey(name: '_docStatus') FhirElement? docStatusElement,
/// /// [modality] Imaging modality used. This may include both acquisition and
/// non-acquisition modalities.

    @JsonKey(name: 'modality') List<List<CodeableConcept>>? modality,
/// /// [type] Specifies the particular kind of document referenced  (e.g.
/// History and Physical, Discharge Summary, Progress Note). This usually
/// equates to the purpose of making the document referenced.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [category] A categorization for the type of document referenced - helps
/// for indexing and searching. This may be implied by or derived from the code
/// specified in the DocumentReference.type.

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// /// [subject] Who or what the document is about. The document can be about
/// a person, (patient or healthcare practitioner), a device (e.g. a machine)
/// or even a group of subjects (such as a document about a herd of farm
/// animals, or a set of patients that share a common exposure).

    @JsonKey(name: 'subject') Reference? subject,
/// /// [context] The Encounter during which this document reference was
/// created or to which the creation of this record is tightly associated.

    @JsonKey(name: 'context') List<List<Reference>>? context,
/// /// [event] This list of codes represents the main clinical acts, such as a
/// colonoscopy or an appendectomy, being documented. In some cases, the event
/// is inherent in the type Code, such as a "History and Physical Report" in
/// which the procedure being documented is necessarily a "History and
/// Physical" act.

    @JsonKey(name: 'event') List<List<CodeableReference>>? event,
/// /// [bodySite] The anatomic structures included in the document.

    @JsonKey(name: 'bodySite') List<List<CodeableReference>>? bodySite,
/// /// [facilityType] The kind of facility where the patient was seen.

    @JsonKey(name: 'facilityType') CodeableConcept? facilityType,
/// /// [practiceSetting] This property may convey specifics about the practice
/// setting where the content was created, often reflecting the clinical
/// specialty.

    @JsonKey(name: 'practiceSetting') CodeableConcept? practiceSetting,
/// /// [period] The time period over which the service that is described by
/// the document was provided.

    @JsonKey(name: 'period') Period? period,
/// /// [date] When the document reference was created.

    @JsonKey(name: 'date') FhirInstant? date,
/// /// [_date] Extensions for date

    @JsonKey(name: '_date') FhirElement? dateElement,
/// /// [author] Identifies who is responsible for adding the information to
/// the document.

    @JsonKey(name: 'author') List<List<Reference>>? author,
/// /// [attester] A participant who has authenticated the accuracy of the
/// document.

    @JsonKey(name: 'attester') List<List<DocumentReference_Attester>>? attester,
/// /// [custodian] Identifies the organization or group who is responsible for
/// ongoing maintenance of and access to the document.

    @JsonKey(name: 'custodian') Reference? custodian,
/// /// [relatesTo] Relationships that this document has with other document
/// references that already exist.

    @JsonKey(name: 'relatesTo') List<List<DocumentReference_RelatesTo>>? relatesTo,
/// /// [description] Human-readable description of the source document.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [securityLabel] A set of Security-Tag codes specifying the level of
/// privacy/security of the Document found at
/// DocumentReference.content.attachment.url. Note that
/// DocumentReference.meta.security contains the security labels of the data
/// elements in DocumentReference, while DocumentReference.securityLabel
/// contains the security labels for the document the reference refers to. The
/// distinction recognizes that the document may contain sensitive information,
/// while the DocumentReference is metadata about the document and thus might
/// not be as sensitive as the document. For example: a psychotherapy episode
/// may contain highly sensitive information, while the metadata may simply
/// indicate that some episode happened.

    @JsonKey(name: 'securityLabel') List<List<CodeableConcept>>? securityLabel,
/// /// [content] The document and format referenced.  If there are multiple
/// content element repetitions, these must all represent the same document in
/// different format, or attachment metadata.

    @JsonKey(name: 'content') List<List<DocumentReference_Content>>? content,
  }) = _$DocumentReference;

  @override
  String get fhirType => 'DocumentReference';

  factory DocumentReference.fromJson(Map<String, dynamic> json) =>
      _$DocumentReferenceFromJson(json);

  factory DocumentReference.fromYaml(dynamic yaml) => yaml is String
      ? DocumentReference.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DocumentReference.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DocumentReference cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DocumentReference.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DocumentReferenceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
