/// /// [ImplementationGuide_Manifest] A set of rules of how a particular
/// interoperability or standards problem is solved - typically through the use
/// of FHIR resources. This resource is used to gather all the parts of an
/// implementation guide into a logical whole and to publish a computable
/// definition of all the parts.

@freezed
class ImplementationGuide_Manifest with _$ImplementationGuide_Manifest {
  const ImplementationGuide_Manifest._();

  const factory ImplementationGuide_Manifest({
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
/// /// [rendering] A pointer to official web page, PDF or other rendering of
/// the implementation guide.

    @JsonKey(name: 'rendering') FhirUrl? rendering,
/// /// [_rendering] Extensions for rendering

    @JsonKey(name: '_rendering') FhirElement? renderingElement,
/// /// [resource] A resource that is part of the implementation guide.
/// Conformance resources (value set, structure definition, capability
/// statements etc.) are obvious candidates for inclusion, but any kind of
/// resource can be included as an example resource.

    @JsonKey(name: 'resource') List<List<ImplementationGuide_Resource1>>? resource,
/// /// [page] Information about a page within the IG.

    @JsonKey(name: 'page') List<List<ImplementationGuide_Page1>>? page,
/// /// [image] Indicates a relative path to an image that exists within the
/// IG.

    @JsonKey(name: 'image') List<List<String>>? image,
/// /// [_image] Extensions for image

    @JsonKey(name: '_image') List<FhirElement>? imageElement,
/// /// [other] Indicates the relative path of an additional non-page,
/// non-image file that is part of the IG - e.g. zip, jar and similar files
/// that could be the target of a hyperlink in a derived IG.

    @JsonKey(name: 'other') List<List<String>>? other,
/// /// [_other] Extensions for other

    @JsonKey(name: '_other') List<FhirElement>? otherElement,
  }) = _$ImplementationGuide_Manifest;

  @override
  String get fhirType => 'ImplementationGuide_Manifest';

  factory ImplementationGuide_Manifest.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuide_ManifestFromJson(json);

  factory ImplementationGuide_Manifest.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuide_Manifest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImplementationGuide_Manifest.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImplementationGuide_Manifest cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ImplementationGuide_Manifest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImplementationGuide_ManifestFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
