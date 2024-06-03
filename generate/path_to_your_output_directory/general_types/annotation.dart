/// /// [Annotation] A  text note which also  contains information about who
/// made the statement and when.

@freezed
class Annotation with _$Annotation {
  const Annotation._();

  const factory Annotation({
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
/// /// [authorReference] The individual responsible for making the annotation.

    @JsonKey(name: 'authorReference') Reference? authorReference,
/// /// [authorString] The individual responsible for making the annotation.

    @JsonKey(name: 'authorString') String? authorString,
/// /// [_authorString] Extensions for authorString

    @JsonKey(name: '_authorString') FhirElement? authorStringElement,
/// /// [time] Indicates when this particular annotation was made.

    @JsonKey(name: 'time') FhirDateTime? time,
/// /// [_time] Extensions for time

    @JsonKey(name: '_time') FhirElement? timeElement,
/// /// [text] The text of the annotation in markdown format.

    @JsonKey(name: 'text') FhirMarkdown? text,
/// /// [_text] Extensions for text

    @JsonKey(name: '_text') FhirElement? textElement,
  }) = _$Annotation;

  @override
  String get fhirType => 'Annotation';

  factory Annotation.fromJson(Map<String, dynamic> json) =>
      _$AnnotationFromJson(json);

  factory Annotation.fromYaml(dynamic yaml) => yaml is String
      ? Annotation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Annotation.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Annotation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Annotation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AnnotationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
