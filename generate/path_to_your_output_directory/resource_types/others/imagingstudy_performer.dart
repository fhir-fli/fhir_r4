/// /// [ImagingStudy_Performer] Representation of the content produced in a
/// DICOM imaging study. A study comprises a set of series, each of which
/// includes a set of Service-Object Pair Instances (SOP Instances - images or
/// other data) acquired or produced in a common context.  A series is of only
/// one modality (e.g. X-ray, CT, MR, ultrasound), but a study may have
/// multiple series of different modalities.

@freezed
class ImagingStudy_Performer with _$ImagingStudy_Performer {
  const ImagingStudy_Performer._();

  const factory ImagingStudy_Performer({
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
/// /// [function] Distinguishes the type of involvement of the performer in
/// the series.

    @JsonKey(name: 'function') CodeableConcept? function,
/// /// [actor] Indicates who or what performed the series.

    @JsonKey(name: 'actor') Reference? actor,
  }) = _$ImagingStudy_Performer;

  @override
  String get fhirType => 'ImagingStudy_Performer';

  factory ImagingStudy_Performer.fromJson(Map<String, dynamic> json) =>
      _$ImagingStudy_PerformerFromJson(json);

  factory ImagingStudy_Performer.fromYaml(dynamic yaml) => yaml is String
      ? ImagingStudy_Performer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImagingStudy_Performer.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImagingStudy_Performer cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ImagingStudy_Performer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImagingStudy_PerformerFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
