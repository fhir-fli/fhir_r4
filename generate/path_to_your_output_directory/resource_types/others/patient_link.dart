/// /// [Patient_Link] Demographics and other administrative information about
/// an individual or animal that is the subject of potential, past, current, or
/// future health-related care, services, or processes.

@freezed
class Patient_Link with _$Patient_Link {
  const Patient_Link._();

  const factory Patient_Link({
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
/// /// [other] Link to a Patient or RelatedPerson resource that concerns the
/// same actual individual.

    @JsonKey(name: 'other') Reference? other,
/// /// [type] The type of link between this patient resource and another
/// patient resource.

    @JsonKey(name: 'type') FhirCode? type,
/// /// [_type] Extensions for type

    @JsonKey(name: '_type') FhirElement? typeElement,
  }) = _$Patient_Link;

  @override
  String get fhirType => 'Patient_Link';

  factory Patient_Link.fromJson(Map<String, dynamic> json) =>
      _$Patient_LinkFromJson(json);

  factory Patient_Link.fromYaml(dynamic yaml) => yaml is String
      ? Patient_Link.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Patient_Link.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Patient_Link cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Patient_Link.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Patient_LinkFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
