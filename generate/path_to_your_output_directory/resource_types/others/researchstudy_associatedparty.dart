/// /// [ResearchStudy_AssociatedParty] A scientific study of nature that
/// sometimes includes processes involved in health and disease. For example,
/// clinical trials are research studies that involve people. These studies may
/// be related to new ways to screen, prevent, diagnose, and treat disease.
/// They may also study certain outcomes and certain groups of people by
/// looking at data collected in the past or future.

@freezed
class ResearchStudy_AssociatedParty with _$ResearchStudy_AssociatedParty {
  const ResearchStudy_AssociatedParty._();

  const factory ResearchStudy_AssociatedParty({
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
/// /// [name] Name of associated party.

    @JsonKey(name: 'name') String? name,
/// /// [_name] Extensions for name

    @JsonKey(name: '_name') FhirElement? nameElement,
/// /// [role] Type of association.

    @JsonKey(name: 'role') CodeableConcept? role,
/// /// [period] Identifies the start date and the end date of the associated
/// party in the role.

    @JsonKey(name: 'period') List<List<Period>>? period,
/// /// [classifier] A categorization other than role for the associated party.

    @JsonKey(name: 'classifier') List<List<CodeableConcept>>? classifier,
/// /// [party] Individual or organization associated with study (use
/// practitionerRole to specify their organisation).

    @JsonKey(name: 'party') Reference? party,
  }) = _$ResearchStudy_AssociatedParty;

  @override
  String get fhirType => 'ResearchStudy_AssociatedParty';

  factory ResearchStudy_AssociatedParty.fromJson(Map<String, dynamic> json) =>
      _$ResearchStudy_AssociatedPartyFromJson(json);

  factory ResearchStudy_AssociatedParty.fromYaml(dynamic yaml) => yaml is String
      ? ResearchStudy_AssociatedParty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ResearchStudy_AssociatedParty.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ResearchStudy_AssociatedParty cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ResearchStudy_AssociatedParty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ResearchStudy_AssociatedPartyFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
