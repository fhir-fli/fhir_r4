/// /// [List] A List is a curated collection of resources, for things such as
/// problem lists, allergy lists, facility list, organization list, etc.

@freezed
class List with _$List {
  const List._();

  const factory List({
/// /// [resourceType] This is a List resource

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
/// /// [identifier] Identifier for the List assigned for business purposes
/// outside the context of FHIR.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [status] Indicates the current state of this list.

    @JsonKey(name: 'status') FhirCode? status,
/// /// [_status] Extensions for status

    @JsonKey(name: '_status') FhirElement? statusElement,
/// /// [mode] How this list was prepared - whether it is a working list that
/// is suitable for being maintained on an ongoing basis, or if it represents a
/// snapshot of a list of items from another source, or whether it is a
/// prepared list where items may be marked as added, modified or deleted.

    @JsonKey(name: 'mode') FhirCode? mode,
/// /// [_mode] Extensions for mode

    @JsonKey(name: '_mode') FhirElement? modeElement,
/// /// [title] A label for the list assigned by the author.

    @JsonKey(name: 'title') String? title,
/// /// [_title] Extensions for title

    @JsonKey(name: '_title') FhirElement? titleElement,
/// /// [code] This code defines the purpose of the list - why it was created.

    @JsonKey(name: 'code') CodeableConcept? code,
/// /// [subject] The common subject(s) (or patient(s)) of the resources that
/// are in the list if there is one (or a set of subjects).

    @JsonKey(name: 'subject') List<List<Reference>>? subject,
/// /// [encounter] The encounter that is the context in which this list was
/// created.

    @JsonKey(name: 'encounter') Reference? encounter,
/// /// [date] Date list was last reviewed/revised and determined to be
/// 'current'.

    @JsonKey(name: 'date') FhirDateTime? date,
/// /// [_date] Extensions for date

    @JsonKey(name: '_date') FhirElement? dateElement,
/// /// [source] The entity responsible for deciding what the contents of the
/// list were. Where the list was created by a human, this is the same as the
/// author of the list.

    @JsonKey(name: 'source') Reference? source,
/// /// [orderedBy] What order applies to the items in the list.

    @JsonKey(name: 'orderedBy') CodeableConcept? orderedBy,
/// /// [note] Comments that apply to the overall list.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// /// [entry] Entries in this list.

    @JsonKey(name: 'entry') List<List<List_Entry>>? entry,
/// /// [emptyReason] If the list is empty, why the list is empty.

    @JsonKey(name: 'emptyReason') CodeableConcept? emptyReason,
  }) = _$List;

  @override
  String get fhirType => 'List';

  factory List.fromJson(Map<String, dynamic> json) =>
      _$ListFromJson(json);

  factory List.fromYaml(dynamic yaml) => yaml is String
      ? List.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? List.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'List cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory List.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ListFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
