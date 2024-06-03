/// /// [Contract_Friendly] Legally enforceable, formally recorded unilateral
/// or bilateral directive i.e., a policy or agreement.

@freezed
class Contract_Friendly with _$Contract_Friendly {
  const Contract_Friendly._();

  const factory Contract_Friendly({
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
/// /// [contentAttachment] Human readable rendering of this Contract in a
/// format and representation intended to enhance comprehension and ensure
/// understandability.

    @JsonKey(name: 'contentAttachment') Attachment? contentAttachment,
/// /// [contentReference] Human readable rendering of this Contract in a
/// format and representation intended to enhance comprehension and ensure
/// understandability.

    @JsonKey(name: 'contentReference') Reference? contentReference,
  }) = _$Contract_Friendly;

  @override
  String get fhirType => 'Contract_Friendly';

  factory Contract_Friendly.fromJson(Map<String, dynamic> json) =>
      _$Contract_FriendlyFromJson(json);

  factory Contract_Friendly.fromYaml(dynamic yaml) => yaml is String
      ? Contract_Friendly.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Contract_Friendly.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Contract_Friendly cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Contract_Friendly.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Contract_FriendlyFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
