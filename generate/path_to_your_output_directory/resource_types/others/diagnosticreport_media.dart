/// /// [DiagnosticReport_Media] The findings and interpretation of diagnostic
/// tests performed on patients, groups of patients, products, substances,
/// devices, and locations, and/or specimens derived from these. The report
/// includes clinical context such as requesting provider information, and some
/// mix of atomic results, images, textual and coded interpretations, and
/// formatted representation of diagnostic reports. The report also includes
/// non-clinical context such as batch analysis and stability reporting of
/// products and substances.

@freezed
class DiagnosticReport_Media with _$DiagnosticReport_Media {
  const DiagnosticReport_Media._();

  const factory DiagnosticReport_Media({
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
/// /// [comment] A comment about the image or data. Typically, this is used to
/// provide an explanation for why the image or data is included, or to draw
/// the viewer's attention to important features.

    @JsonKey(name: 'comment') String? comment,
/// /// [_comment] Extensions for comment

    @JsonKey(name: '_comment') FhirElement? commentElement,
/// /// [link] Reference to the image or data source.

    @JsonKey(name: 'link') Reference? link,
  }) = _$DiagnosticReport_Media;

  @override
  String get fhirType => 'DiagnosticReport_Media';

  factory DiagnosticReport_Media.fromJson(Map<String, dynamic> json) =>
      _$DiagnosticReport_MediaFromJson(json);

  factory DiagnosticReport_Media.fromYaml(dynamic yaml) => yaml is String
      ? DiagnosticReport_Media.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DiagnosticReport_Media.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DiagnosticReport_Media cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DiagnosticReport_Media.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DiagnosticReport_MediaFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
