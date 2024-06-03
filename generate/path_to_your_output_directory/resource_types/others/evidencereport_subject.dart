/// /// [EvidenceReport_Subject] The EvidenceReport Resource is a specialized
/// container for a collection of resources and codeable concepts, adapted to
/// support compositions of Evidence, EvidenceVariable, and Citation resources
/// and related concepts.

@freezed
class EvidenceReport_Subject with _$EvidenceReport_Subject {
  const EvidenceReport_Subject._();

  const factory EvidenceReport_Subject({
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
/// /// [characteristic] Characteristic.

    @JsonKey(name: 'characteristic') List<List<EvidenceReport_Characteristic>>? characteristic,
/// /// [note] Used for general notes and annotations not coded elsewhere.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
  }) = _$EvidenceReport_Subject;

  @override
  String get fhirType => 'EvidenceReport_Subject';

  factory EvidenceReport_Subject.fromJson(Map<String, dynamic> json) =>
      _$EvidenceReport_SubjectFromJson(json);

  factory EvidenceReport_Subject.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceReport_Subject.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EvidenceReport_Subject.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EvidenceReport_Subject cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory EvidenceReport_Subject.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EvidenceReport_SubjectFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
