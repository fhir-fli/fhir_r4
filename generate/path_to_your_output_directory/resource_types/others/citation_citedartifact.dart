/// /// [Citation_CitedArtifact] The Citation Resource enables reference to any
/// knowledge artifact for purposes of identification and attribution. The
/// Citation Resource supports existing reference structures and developing
/// publication practices such as versioning, expressing complex
/// contributorship roles, and referencing computable resources.

@freezed
class Citation_CitedArtifact with _$Citation_CitedArtifact {
  const Citation_CitedArtifact._();

  const factory Citation_CitedArtifact({
/// /// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// /// [identifier] A formal identifier that is used to identify the cited
/// artifact when it is represented in other formats, or referenced in a
/// specification, model, design or an instance.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [relatedIdentifier] A formal identifier that is used to identify things
/// closely related to the cited artifact.

    @JsonKey(name: 'relatedIdentifier') List<List<Identifier>>? relatedIdentifier,
/// /// [dateAccessed] When the cited artifact was accessed.

    @JsonKey(name: 'dateAccessed') FhirDateTime? dateAccessed,
/// /// [_dateAccessed] Extensions for dateAccessed

    @JsonKey(name: '_dateAccessed') FhirElement? dateAccessedElement,
/// /// [version] The defined version of the cited artifact.

    @JsonKey(name: 'version') Citation_Version? version,
/// /// [currentState] The status of the cited artifact.

    @JsonKey(name: 'currentState') List<List<CodeableConcept>>? currentState,
/// /// [statusDate] An effective date or period, historical or future, actual
/// or expected, for a status of the cited artifact.

    @JsonKey(name: 'statusDate') List<List<Citation_StatusDate1>>? statusDate,
/// /// [title] The title details of the article or artifact.

    @JsonKey(name: 'title') List<List<Citation_Title>>? title,
/// /// [abstract] The abstract may be used to convey article-contained
/// abstracts, externally-created abstracts, or other descriptive summaries.

    @JsonKey(name: 'abstract') List<List<Citation_Abstract>>? abstract,
/// /// [part] The component of the article or artifact.

    @JsonKey(name: 'part') Citation_Part? part,
/// /// [relatesTo] The artifact related to the cited artifact.

    @JsonKey(name: 'relatesTo') List<List<Citation_RelatesTo>>? relatesTo,
/// /// [publicationForm] If multiple, used to represent alternative forms of
/// the article that are not separate citations.

    @JsonKey(name: 'publicationForm') List<List<Citation_PublicationForm>>? publicationForm,
/// /// [webLocation] Used for any URL for the article or artifact cited.

    @JsonKey(name: 'webLocation') List<List<Citation_WebLocation>>? webLocation,
/// /// [classification] The assignment to an organizing scheme.

    @JsonKey(name: 'classification') List<List<Citation_Classification1>>? classification,
/// /// [contributorship] This element is used to list authors and other
/// contributors, their contact information, specific contributions, and
/// summary statements.

    @JsonKey(name: 'contributorship') Citation_Contributorship? contributorship,
/// /// [note] Any additional information or content for the article or
/// artifact.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
  }) = _$Citation_CitedArtifact;

  @override
  String get fhirType => 'Citation_CitedArtifact';

  factory Citation_CitedArtifact.fromJson(Map<String, dynamic> json) =>
      _$Citation_CitedArtifactFromJson(json);

  factory Citation_CitedArtifact.fromYaml(dynamic yaml) => yaml is String
      ? Citation_CitedArtifact.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Citation_CitedArtifact.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Citation_CitedArtifact cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Citation_CitedArtifact.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Citation_CitedArtifactFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
