/// /// [Composition] A set of healthcare-related information that is assembled
/// together into a single logical package that provides a single coherent
/// statement of meaning, establishes its own context and that has clinical
/// attestation with regard to who is making the statement. A Composition
/// defines the structure and narrative content necessary for a document.
/// However, a Composition alone does not constitute a document. Rather, the
/// Composition must be the first entry in a Bundle where Bundle.type=document,
/// and any other resources referenced from Composition must be included as
/// subsequent entries in the Bundle (for example Patient, Practitioner,
/// Encounter, etc.).

@freezed
class Composition with _$Composition {
  const Composition._();

  const factory Composition({
/// /// [resourceType] This is a Composition resource

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
/// /// [url] An absolute URI that is used to identify this Composition when it
/// is referenced in a specification, model, design or an instance; also called
/// its canonical identifier. This SHOULD be globally unique and SHOULD be a
/// literal address at which an authoritative instance of this Composition is
/// (or will be) published. This URL can be the target of a canonical
/// reference. It SHALL remain the same when the Composition is stored on
/// different servers.

    @JsonKey(name: 'url') FhirUri? url,
/// /// [_url] Extensions for url

    @JsonKey(name: '_url') FhirElement? urlElement,
/// /// [identifier] A version-independent identifier for the Composition. This
/// identifier stays constant as the composition is changed over time.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [version] An explicitly assigned identifier of a variation of the
/// content in the Composition.

    @JsonKey(name: 'version') String? version,
/// /// [_version] Extensions for version

    @JsonKey(name: '_version') FhirElement? versionElement,
/// /// [status] The workflow/clinical status of this composition. The status
/// is a marker for the clinical standing of the document.

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
/// /// [type] Specifies the particular kind of composition (e.g. History and
/// Physical, Discharge Summary, Progress Note). This usually equates to the
/// purpose of making the composition.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [category] A categorization for the type of the composition - helps for
/// indexing and searching. This may be implied by or derived from the code
/// specified in the Composition Type.

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// /// [subject] Who or what the composition is about. The composition can be
/// about a person, (patient or healthcare practitioner), a device (e.g. a
/// machine) or even a group of subjects (such as a document about a herd of
/// livestock, or a set of patients that share a common exposure).

    @JsonKey(name: 'subject') List<List<Reference>>? subject,
/// /// [encounter] Describes the clinical encounter or type of care this
/// documentation is associated with.

    @JsonKey(name: 'encounter') Reference? encounter,
/// /// [date] The composition editing time, when the composition was last
/// logically changed by the author.

    @JsonKey(name: 'date') FhirDateTime? date,
/// /// [_date] Extensions for date

    @JsonKey(name: '_date') FhirElement? dateElement,
/// /// [useContext] The content was developed with a focus and intent of
/// supporting the contexts that are listed. These contexts may be general
/// categories (gender, age, ...) or may be references to specific programs
/// (insurance plans, studies, ...) and may be used to assist with indexing and
/// searching for appropriate Composition instances.

    @JsonKey(name: 'useContext') List<List<UsageContext>>? useContext,
/// /// [author] Identifies who is responsible for the information in the
/// composition, not necessarily who typed it in.

    @JsonKey(name: 'author') List<List<Reference>>? author,
/// /// [name] A natural language name identifying the {{title}}. This name
/// should be usable as an identifier for the module by machine processing
/// applications such as code generation.

    @JsonKey(name: 'name') String? name,
/// /// [_name] Extensions for name

    @JsonKey(name: '_name') FhirElement? nameElement,
/// /// [title] Official human-readable label for the composition.

    @JsonKey(name: 'title') String? title,
/// /// [_title] Extensions for title

    @JsonKey(name: '_title') FhirElement? titleElement,
/// /// [note] For any additional notes.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// /// [attester] A participant who has attested to the accuracy of the
/// composition/document.

    @JsonKey(name: 'attester') List<List<Composition_Attester>>? attester,
/// /// [custodian] Identifies the organization or group who is responsible for
/// ongoing maintenance of and access to the composition/document information.

    @JsonKey(name: 'custodian') Reference? custodian,
/// /// [relatesTo] Relationships that this composition has with other
/// compositions or documents that already exist.

    @JsonKey(name: 'relatesTo') List<List<RelatedArtifact>>? relatesTo,
/// /// [event] The clinical service, such as a colonoscopy or an appendectomy,
/// being documented.

    @JsonKey(name: 'event') List<List<Composition_Event>>? event,
/// /// [section] The root of the sections that make up the composition.

    @JsonKey(name: 'section') List<List<Composition_Section>>? section,
  }) = _$Composition;

  @override
  String get fhirType => 'Composition';

  factory Composition.fromJson(Map<String, dynamic> json) =>
      _$CompositionFromJson(json);

  factory Composition.fromYaml(dynamic yaml) => yaml is String
      ? Composition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Composition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Composition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Composition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CompositionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
