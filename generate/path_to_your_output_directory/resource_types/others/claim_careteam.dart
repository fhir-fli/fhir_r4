import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Claim_CareTeam] A provider issued list of professional services and
/// products which have been provided, or are to be provided, to a patient
/// which is sent to an insurer for reimbursement.

@freezed
class Claim_CareTeam with _$Claim_CareTeam {
  const Claim_CareTeam._();

  const factory Claim_CareTeam({
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

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

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
  }) = _$Claim_CareTeam;

  @override
  String get fhirType => 'Claim_CareTeam';

  factory Claim_CareTeam.fromJson(Map<String, dynamic> json) =>
      _$Claim_CareTeamFromJson(json);

  factory Claim_CareTeam.fromYaml(dynamic yaml) => yaml is String
      ? Claim_CareTeam.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Claim_CareTeam.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Claim_CareTeam cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Claim_CareTeam.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Claim_CareTeamFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
