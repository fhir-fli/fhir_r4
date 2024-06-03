/// /// [Person_Link] Demographics and administrative information about a
/// person independent of a specific health-related context.

@freezed
class Person_Link with _$Person_Link {
  const Person_Link._();

  const factory Person_Link({
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
/// /// [target] The resource to which this actual person is associated.

    @JsonKey(name: 'target') Reference? target,
/// /// [assurance] Level of assurance that this link is associated with the
/// target resource.

    @JsonKey(name: 'assurance') FhirCode? assurance,
/// /// [_assurance] Extensions for assurance

    @JsonKey(name: '_assurance') FhirElement? assuranceElement,
  }) = _$Person_Link;

  @override
  String get fhirType => 'Person_Link';

  factory Person_Link.fromJson(Map<String, dynamic> json) =>
      _$Person_LinkFromJson(json);

  factory Person_Link.fromYaml(dynamic yaml) => yaml is String
      ? Person_Link.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Person_Link.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Person_Link cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Person_Link.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Person_LinkFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
