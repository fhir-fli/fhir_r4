/// /// [ArtifactAssessment_Content] This Resource provides one or more
/// comments, classifiers or ratings about a Resource and supports attribution
/// and rights management metadata for the added content.

@freezed
class ArtifactAssessment_Content with _$ArtifactAssessment_Content {
  const ArtifactAssessment_Content._();

  const factory ArtifactAssessment_Content({
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
/// /// [informationType] The type of information this component of the content
/// represents.

    @JsonKey(name: 'informationType') FhirCode? informationType,
/// /// [_informationType] Extensions for informationType

    @JsonKey(name: '_informationType') FhirElement? informationTypeElement,
/// /// [summary] A brief summary of the content of this component.

    @JsonKey(name: 'summary') FhirMarkdown? summary,
/// /// [_summary] Extensions for summary

    @JsonKey(name: '_summary') FhirElement? summaryElement,
/// /// [type] Indicates what type of content this component represents.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [classifier] Represents a rating, classifier, or assessment of the
/// artifact.

    @JsonKey(name: 'classifier') List<List<CodeableConcept>>? classifier,
/// /// [quantity] A quantitative rating of the artifact.

    @JsonKey(name: 'quantity') Quantity? quantity,
/// /// [author] Indicates who or what authored the content.

    @JsonKey(name: 'author') Reference? author,
/// /// [path] A URI that points to what the comment is about, such as a line
/// of text in the CQL, or a specific element in a resource.

    @JsonKey(name: 'path') List<List<FhirUri>>? path,
/// /// [_path] Extensions for path

    @JsonKey(name: '_path') List<FhirElement>? pathElement,
/// /// [relatedArtifact] Additional related artifacts that provide supporting
/// documentation, additional evidence, or further information related to the
/// content.

    @JsonKey(name: 'relatedArtifact') List<List<RelatedArtifact>>? relatedArtifact,
/// /// [freeToShare] Acceptable to publicly share the comment, classifier or
/// rating.

    @JsonKey(name: 'freeToShare') FhirBoolean? freeToShare,
/// /// [_freeToShare] Extensions for freeToShare

    @JsonKey(name: '_freeToShare') FhirElement? freeToShareElement,
/// /// [component] If the informationType is container, the components of the
/// content.

    @JsonKey(name: 'component') List<List<ArtifactAssessment_Content>>? component,
  }) = _$ArtifactAssessment_Content;

  @override
  String get fhirType => 'ArtifactAssessment_Content';

  factory ArtifactAssessment_Content.fromJson(Map<String, dynamic> json) =>
      _$ArtifactAssessment_ContentFromJson(json);

  factory ArtifactAssessment_Content.fromYaml(dynamic yaml) => yaml is String
      ? ArtifactAssessment_Content.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ArtifactAssessment_Content.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ArtifactAssessment_Content cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ArtifactAssessment_Content.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ArtifactAssessment_ContentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
