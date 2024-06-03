import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [CareTeam] The Care Team includes all the people and organizations who
/// plan to participate in the coordination and delivery of care.

@freezed
class CareTeam with _$CareTeam {
  const CareTeam._();

  const factory CareTeam({
/// [resourceType] This is a CareTeam resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
/// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// [_language] Extensions for language

    @JsonKey(name: '_language') PrimitiveElement? languageElement,
/// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identifier] Business identifiers assigned to this care team by the
/// performer or other systems which remain constant as the resource is updated
/// and propagates from server to server.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [status] Indicates the current state of the care team.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [category] Identifies what kind of team.  This is to support
/// differentiation between multiple co-existing teams, such as care plan team,
/// episode of care team, longitudinal care team.

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// [name] A label for human use intended to distinguish like teams.  E.g.
/// the "red" vs. "green" trauma teams.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [subject] Identifies the patient or group whose intended care is
/// handled by the team.

    @JsonKey(name: 'subject') Reference? subject,
/// [period] Indicates when the team did (or is intended to) come into
/// effect and end.

    @JsonKey(name: 'period') Period? period,
/// [participant] Identifies all people and organizations who are expected
/// to be involved in the care team.

    @JsonKey(name: 'participant') List<List<CareTeam_Participant>>? participant,
/// [reason] Describes why the care team exists.

    @JsonKey(name: 'reason') List<List<CodeableReference>>? reason,
/// [managingOrganization] The organization responsible for the care team.

    @JsonKey(name: 'managingOrganization') List<List<Reference>>? managingOrganization,
/// [telecom] A central contact detail for the care team (that applies to
/// all members).

    @JsonKey(name: 'telecom') List<List<ContactPoint>>? telecom,
/// [note] Comments made about the CareTeam.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
  }) = _$CareTeam;

  @override
  String get fhirType => 'CareTeam';

  factory CareTeam.fromJson(Map<String, dynamic> json) =>
      _$CareTeamFromJson(json);

  factory CareTeam.fromYaml(dynamic yaml) => yaml is String
      ? CareTeam.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CareTeam.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CareTeam cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CareTeam.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CareTeamFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
