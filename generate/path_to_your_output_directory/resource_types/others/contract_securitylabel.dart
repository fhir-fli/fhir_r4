/// /// [Contract_SecurityLabel] Legally enforceable, formally recorded
/// unilateral or bilateral directive i.e., a policy or agreement.

@freezed
class Contract_SecurityLabel with _$Contract_SecurityLabel {
  const Contract_SecurityLabel._();

  const factory Contract_SecurityLabel({
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
/// /// [number] Number used to link this term or term element to the
/// applicable Security Label.

    @JsonKey(name: 'number') List<List<FhirUnsignedInt>>? number,
/// /// [_number] Extensions for number

    @JsonKey(name: '_number') List<FhirElement>? numberElement,
/// /// [classification] Security label privacy tag that specifies the level of
/// confidentiality protection required for this term and/or term elements.

    @JsonKey(name: 'classification') Coding? classification,
/// /// [category] Security label privacy tag that specifies the applicable
/// privacy and security policies governing this term and/or term elements.

    @JsonKey(name: 'category') List<List<Coding>>? category,
/// /// [control] Security label privacy tag that specifies the manner in which
/// term and/or term elements are to be protected.

    @JsonKey(name: 'control') List<List<Coding>>? control,
  }) = _$Contract_SecurityLabel;

  @override
  String get fhirType => 'Contract_SecurityLabel';

  factory Contract_SecurityLabel.fromJson(Map<String, dynamic> json) =>
      _$Contract_SecurityLabelFromJson(json);

  factory Contract_SecurityLabel.fromYaml(dynamic yaml) => yaml is String
      ? Contract_SecurityLabel.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Contract_SecurityLabel.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Contract_SecurityLabel cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Contract_SecurityLabel.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Contract_SecurityLabelFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
