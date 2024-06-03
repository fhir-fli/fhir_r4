import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [RelatedArtifact] Related artifacts such as additional documentation,
/// justification, or bibliographic references.

@freezed
class RelatedArtifact with _$RelatedArtifact {
  const RelatedArtifact._();

  const factory RelatedArtifact({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [type] The type of relationship to the related artifact.

    @JsonKey(name: 'type') dynamic? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [classifier] Provides additional classifiers of the related artifact.

    @JsonKey(name: 'classifier') List<List<CodeableConcept>>? classifier,
/// [label] A short label that can be used to reference the citation from
/// elsewhere in the containing artifact, such as a footnote index.

    @JsonKey(name: 'label') String? label,
/// [_label] Extensions for label

    @JsonKey(name: '_label') PrimitiveElement? labelElement,
/// [display] A brief description of the document or knowledge resource
/// being referenced, suitable for display to a consumer.

    @JsonKey(name: 'display') String? display,
/// [_display] Extensions for display

    @JsonKey(name: '_display') PrimitiveElement? displayElement,
/// [citation] A bibliographic citation for the related artifact. This text
/// SHOULD be formatted according to an accepted citation format.

    @JsonKey(name: 'citation') FhirMarkdown? citation,
/// [_citation] Extensions for citation

    @JsonKey(name: '_citation') PrimitiveElement? citationElement,
/// [document] The document being referenced, represented as an attachment.
/// This is exclusive with the resource element.

    @JsonKey(name: 'document') Attachment? document,
/// [resource] The related artifact, such as a library, value set, profile,
/// or other knowledge resource.

    @JsonKey(name: 'resource') FhirCanonical? resource,
/// [resourceReference] The related artifact, if the artifact is not a
/// canonical resource, or a resource reference to a canonical resource.

    @JsonKey(name: 'resourceReference') Reference? resourceReference,
/// [publicationStatus] The publication status of the artifact being
/// referred to.

    @JsonKey(name: 'publicationStatus') FhirCode? publicationStatus,
/// [_publicationStatus] Extensions for publicationStatus

    @JsonKey(name: '_publicationStatus') PrimitiveElement? publicationStatusElement,
/// [publicationDate] The date of publication of the artifact being
/// referred to.

    @JsonKey(name: 'publicationDate') FhirDate? publicationDate,
/// [_publicationDate] Extensions for publicationDate

    @JsonKey(name: '_publicationDate') PrimitiveElement? publicationDateElement,
  }) = _$RelatedArtifact;

  @override
  String get fhirType => 'RelatedArtifact';

  factory RelatedArtifact.fromJson(Map<String, dynamic> json) =>
      _$RelatedArtifactFromJson(json);

  factory RelatedArtifact.fromYaml(dynamic yaml) => yaml is String
      ? RelatedArtifact.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? RelatedArtifact.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'RelatedArtifact cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory RelatedArtifact.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RelatedArtifactFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
