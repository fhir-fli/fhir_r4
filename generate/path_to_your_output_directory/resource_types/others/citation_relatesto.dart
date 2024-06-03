/// /// [Citation_RelatesTo] The Citation Resource enables reference to any
/// knowledge artifact for purposes of identification and attribution. The
/// Citation Resource supports existing reference structures and developing
/// publication practices such as versioning, expressing complex
/// contributorship roles, and referencing computable resources.

@freezed
class Citation_RelatesTo with _$Citation_RelatesTo {
  const Citation_RelatesTo._();

  const factory Citation_RelatesTo({
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
/// /// [type] The type of relationship to the related artifact.

    @JsonKey(name: 'type') FhirCode? type,
/// /// [_type] Extensions for type

    @JsonKey(name: '_type') FhirElement? typeElement,
/// /// [classifier] Provides additional classifiers of the related artifact.

    @JsonKey(name: 'classifier') List<List<CodeableConcept>>? classifier,
/// /// [label] A short label that can be used to reference the related
/// artifact from elsewhere in the containing artifact, such as a footnote
/// index.

    @JsonKey(name: 'label') String? label,
/// /// [_label] Extensions for label

    @JsonKey(name: '_label') FhirElement? labelElement,
/// /// [display] A brief description of the document or knowledge resource
/// being referenced, suitable for display to a consumer.

    @JsonKey(name: 'display') String? display,
/// /// [_display] Extensions for display

    @JsonKey(name: '_display') FhirElement? displayElement,
/// /// [citation] A bibliographic citation for the related artifact. This text
/// SHOULD be formatted according to an accepted citation format.

    @JsonKey(name: 'citation') FhirMarkdown? citation,
/// /// [_citation] Extensions for citation

    @JsonKey(name: '_citation') FhirElement? citationElement,
/// /// [document] The document being referenced, represented as an attachment.
/// Do not use this element if using the resource element to provide the
/// canonical to the related artifact.

    @JsonKey(name: 'document') Attachment? document,
/// /// [resource] The related artifact, such as a library, value set, profile,
/// or other knowledge resource.

    @JsonKey(name: 'resource') FhirCanonical? resource,
/// /// [_resource] Extensions for resource

    @JsonKey(name: '_resource') FhirElement? resourceElement,
/// /// [resourceReference] The related artifact, if the artifact is not a
/// canonical resource, or a resource reference to a canonical resource.

    @JsonKey(name: 'resourceReference') Reference? resourceReference,
  }) = _$Citation_RelatesTo;

  @override
  String get fhirType => 'Citation_RelatesTo';

  factory Citation_RelatesTo.fromJson(Map<String, dynamic> json) =>
      _$Citation_RelatesToFromJson(json);

  factory Citation_RelatesTo.fromYaml(dynamic yaml) => yaml is String
      ? Citation_RelatesTo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Citation_RelatesTo.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Citation_RelatesTo cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Citation_RelatesTo.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Citation_RelatesToFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
