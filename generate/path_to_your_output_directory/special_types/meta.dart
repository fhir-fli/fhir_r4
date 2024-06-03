/// /// [Meta] The metadata about a resource. This is content in the resource
/// that is maintained by the infrastructure. Changes to the content might not
/// always be associated with version changes to the resource.

@freezed
class Meta with _$Meta {
  const Meta._();

  const factory Meta({
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
/// /// [versionId] The version specific identifier, as it appears in the
/// version portion of the URL. This value changes when the resource is
/// created, updated, or deleted.

    @JsonKey(name: 'versionId') FhirId? versionId,
/// /// [_versionId] Extensions for versionId

    @JsonKey(name: '_versionId') FhirElement? versionIdElement,
/// /// [lastUpdated] When the resource last changed - e.g. when the version
/// changed.

    @JsonKey(name: 'lastUpdated') FhirInstant? lastUpdated,
/// /// [_lastUpdated] Extensions for lastUpdated

    @JsonKey(name: '_lastUpdated') FhirElement? lastUpdatedElement,
/// /// [source] A uri that identifies the source system of the resource. This
/// provides a minimal amount of [[[Provenance]]] information that can be used
/// to track or differentiate the source of information in the resource. The
/// source may identify another FHIR server, document, message, database, etc.

    @JsonKey(name: 'source') FhirUri? source,
/// /// [_source] Extensions for source

    @JsonKey(name: '_source') FhirElement? sourceElement,
/// /// [profile] A list of profiles (references to [[[StructureDefinition]]]
/// resources) that this resource claims to conform to. The URL is a reference
/// to [[[StructureDefinition.url]]].

    @JsonKey(name: 'profile') List<List<FhirCanonical>>? profile,
/// /// [security] Security labels applied to this resource. These tags connect
/// specific resources to the overall security policy and infrastructure.

    @JsonKey(name: 'security') List<List<Coding>>? security,
/// /// [tag] Tags applied to this resource. Tags are intended to be used to
/// identify and relate resources to process and workflow, and applications are
/// not required to consider the tags when interpreting the meaning of a
/// resource.

    @JsonKey(name: 'tag') List<List<Coding>>? tag,
  }) = _$Meta;

  @override
  String get fhirType => 'Meta';

  factory Meta.fromJson(Map<String, dynamic> json) =>
      _$MetaFromJson(json);

  factory Meta.fromYaml(dynamic yaml) => yaml is String
      ? Meta.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Meta.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Meta cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Meta.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MetaFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
