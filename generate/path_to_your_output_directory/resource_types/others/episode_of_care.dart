import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [EpisodeOfCare] An association between a patient and an organization /
/// healthcare provider(s) during which time encounters may occur. The managing
/// organization assumes a level of responsibility for the patient during this
/// time.

@freezed
class EpisodeOfCare with _$EpisodeOfCare {
  const EpisodeOfCare._();

  const factory EpisodeOfCare({
/// [resourceType] This is a EpisodeOfCare resource

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
/// [identifier] The EpisodeOfCare may be known by different identifiers
/// for different contexts of use, such as when an external agency is tracking
/// the Episode for funding purposes.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [status] planned | waitlist | active | onhold | finished | cancelled.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [statusHistory] The history of statuses that the EpisodeOfCare has been
/// through (without requiring processing the history of the resource).

    @JsonKey(name: 'statusHistory') List<List<EpisodeOfCare_StatusHistory>>? statusHistory,
/// [type] A classification of the type of episode of care; e.g. specialist
/// referral, disease management, type of funded care.

    @JsonKey(name: 'type') List<List<CodeableConcept>>? type,
/// [reason] The list of medical reasons that are expected to be addressed
/// during the episode of care.

    @JsonKey(name: 'reason') List<List<EpisodeOfCare_Reason>>? reason,
/// [diagnosis] The list of medical conditions that were addressed during
/// the episode of care.

    @JsonKey(name: 'diagnosis') List<List<EpisodeOfCare_Diagnosis>>? diagnosis,
/// [subject] The patient/group who is the focus of this episode of care.

    @JsonKey(name: 'subject') Reference? subject,
/// [managingOrganization] The organization that has assumed the specific
/// responsibilities for care coordination, care delivery, or other services
/// for the specified duration.

    @JsonKey(name: 'managingOrganization') Reference? managingOrganization,
/// [period] The interval during which the managing organization assumes
/// the defined responsibility.

    @JsonKey(name: 'period') Period? period,
/// [referralRequest] Referral Request(s) that are fulfilled by this
/// EpisodeOfCare, incoming referrals.

    @JsonKey(name: 'referralRequest') List<List<Reference>>? referralRequest,
/// [careManager] The practitioner that is the care manager/care
/// coordinator for this patient.

    @JsonKey(name: 'careManager') Reference? careManager,
/// [careTeam] The list of practitioners that may be facilitating this
/// episode of care for specific purposes.

    @JsonKey(name: 'careTeam') List<List<Reference>>? careTeam,
/// [account] The set of accounts that may be used for billing for this
/// EpisodeOfCare.

    @JsonKey(name: 'account') List<List<Reference>>? account,
  }) = _$EpisodeOfCare;

  @override
  String get fhirType => 'EpisodeOfCare';

  factory EpisodeOfCare.fromJson(Map<String, dynamic> json) =>
      _$EpisodeOfCareFromJson(json);

  factory EpisodeOfCare.fromYaml(dynamic yaml) => yaml is String
      ? EpisodeOfCare.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EpisodeOfCare.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EpisodeOfCare cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory EpisodeOfCare.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EpisodeOfCareFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
