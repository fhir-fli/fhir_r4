import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ExplanationOfBenefit_CareTeam] This resource provides: the claim
/// details; adjudication details from the processing of a Claim; and
/// optionally account balance information, for informing the subscriber of the
/// benefits provided.

@freezed
class ExplanationOfBenefit_CareTeam with _$ExplanationOfBenefit_CareTeam {
  const ExplanationOfBenefit_CareTeam._();

  const factory ExplanationOfBenefit_CareTeam({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [sequence] A number to uniquely identify care team entries.

    @JsonKey(name: 'sequence') FhirPositiveInt? sequence,
/// [_sequence] Extensions for sequence

    @JsonKey(name: '_sequence') PrimitiveElement? sequenceElement,
/// [provider] Member of the team who provided the product or service.

    @JsonKey(name: 'provider') Reference? provider,
/// [responsible] The party who is billing and/or responsible for the
/// claimed products or services.

    @JsonKey(name: 'responsible') FhirBoolean? responsible,
/// [_responsible] Extensions for responsible

    @JsonKey(name: '_responsible') PrimitiveElement? responsibleElement,
/// [role] The lead, assisting or supervising practitioner and their
/// discipline if a multidisciplinary team.

    @JsonKey(name: 'role') CodeableConcept? role,
/// [specialty] The specialization of the practitioner or provider which is
/// applicable for this service.

    @JsonKey(name: 'specialty') CodeableConcept? specialty,
  }) = _$ExplanationOfBenefit_CareTeam;

  @override
  String get fhirType => 'ExplanationOfBenefit_CareTeam';

  factory ExplanationOfBenefit_CareTeam.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_CareTeamFromJson(json);

  factory ExplanationOfBenefit_CareTeam.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefit_CareTeam.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ExplanationOfBenefit_CareTeam.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ExplanationOfBenefit_CareTeam cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefit_CareTeam.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ExplanationOfBenefit_CareTeamFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
