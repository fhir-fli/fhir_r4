/// /// [CodeableReference] A reference to a resource (by instance), or
/// instead, a reference to a concept defined in a terminology or ontology (by
/// class).

@freezed
class CodeableReference with _$CodeableReference {
  const CodeableReference._();

  const factory CodeableReference({
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
/// /// [concept] A reference to a concept - e.g. the information is identified
/// by its general class to the degree of precision found in the terminology.

    @JsonKey(name: 'concept') CodeableConcept? concept,
/// /// [reference] A reference to a resource the provides exact details about
/// the information being referenced.

    @JsonKey(name: 'reference') Reference? reference,
  }) = _$CodeableReference;

  @override
  String get fhirType => 'CodeableReference';

  factory CodeableReference.fromJson(Map<String, dynamic> json) =>
      _$CodeableReferenceFromJson(json);

  factory CodeableReference.fromYaml(dynamic yaml) => yaml is String
      ? CodeableReference.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CodeableReference.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CodeableReference cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CodeableReference.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CodeableReferenceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
