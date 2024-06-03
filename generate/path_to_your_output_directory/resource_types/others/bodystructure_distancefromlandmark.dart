/// /// [BodyStructure_DistanceFromLandmark] Record details about an anatomical
/// structure.  This resource may be used when a coded concept does not provide
/// the necessary detail needed for the use case.

@freezed
class BodyStructure_DistanceFromLandmark with _$BodyStructure_DistanceFromLandmark {
  const BodyStructure_DistanceFromLandmark._();

  const factory BodyStructure_DistanceFromLandmark({
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
/// /// [device] An instrument, tool, analyzer, etc. used in the measurement.

    @JsonKey(name: 'device') List<List<CodeableReference>>? device,
/// /// [value] The measured distance (e.g., in cm) from a body landmark.

    @JsonKey(name: 'value') List<List<Quantity>>? value,
  }) = _$BodyStructure_DistanceFromLandmark;

  @override
  String get fhirType => 'BodyStructure_DistanceFromLandmark';

  factory BodyStructure_DistanceFromLandmark.fromJson(Map<String, dynamic> json) =>
      _$BodyStructure_DistanceFromLandmarkFromJson(json);

  factory BodyStructure_DistanceFromLandmark.fromYaml(dynamic yaml) => yaml is String
      ? BodyStructure_DistanceFromLandmark.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? BodyStructure_DistanceFromLandmark.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'BodyStructure_DistanceFromLandmark cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory BodyStructure_DistanceFromLandmark.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$BodyStructure_DistanceFromLandmarkFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
