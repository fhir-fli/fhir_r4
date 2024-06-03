/// /// [BodyStructure] Record details about an anatomical structure.  This
/// resource may be used when a coded concept does not provide the necessary
/// detail needed for the use case.

@freezed
class BodyStructure with _$BodyStructure {
  const BodyStructure._();

  const factory BodyStructure({
/// /// [resourceType] This is a BodyStructure resource

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
/// /// [identifier] Identifier for this instance of the anatomical structure.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [active] Whether this body site is in active use.

    @JsonKey(name: 'active') FhirBoolean? active,
/// /// [_active] Extensions for active

    @JsonKey(name: '_active') FhirElement? activeElement,
/// /// [morphology] The kind of structure being represented by the body
/// structure at `BodyStructure.location`.  This can define both normal and
/// abnormal morphologies.

    @JsonKey(name: 'morphology') CodeableConcept? morphology,
/// /// [includedStructure] The anatomical location(s) or region(s) of the
/// specimen, lesion, or body structure.

    @JsonKey(name: 'includedStructure') List<List<BodyStructure_IncludedStructure>>? includedStructure,
/// /// [excludedStructure] The anatomical location(s) or region(s) not
/// occupied or represented by the specimen, lesion, or body structure.

    @JsonKey(name: 'excludedStructure') List<List<BodyStructure_IncludedStructure>>? excludedStructure,
/// /// [description] A summary, characterization or explanation of the body
/// structure.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// /// [_description] Extensions for description

    @JsonKey(name: '_description') FhirElement? descriptionElement,
/// /// [image] Image or images used to identify a location.

    @JsonKey(name: 'image') List<List<Attachment>>? image,
/// /// [patient] The person to which the body site belongs.

    @JsonKey(name: 'patient') Reference? patient,
  }) = _$BodyStructure;

  @override
  String get fhirType => 'BodyStructure';

  factory BodyStructure.fromJson(Map<String, dynamic> json) =>
      _$BodyStructureFromJson(json);

  factory BodyStructure.fromYaml(dynamic yaml) => yaml is String
      ? BodyStructure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? BodyStructure.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'BodyStructure cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory BodyStructure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$BodyStructureFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
