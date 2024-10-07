import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [EpisodeOfCare] /// An association between a patient and an organization / healthcare
/// provider(s) during which time encounters may occur. The managing
/// organization assumes a level of responsibility for the patient during this
/// time.
class EpisodeOfCare extends DomainResource {
  EpisodeOfCare({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.statusElement,
    this.statusHistory,
    this.type,
    this.diagnosis,
    required this.patient,
    this.managingOrganization,
    this.period,
    this.referralRequest,
    this.careManager,
    this.team,
    this.account,
  }) : super(resourceType: R4ResourceType.EpisodeOfCare);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// The EpisodeOfCare may be known by different identifiers for different
  /// contexts of use, such as when an external agency is tracking the Episode
  /// for funding purposes.
  final List<Identifier>? identifier;

  /// [status] /// planned | waitlist | active | onhold | finished | cancelled.
  final FhirCode status;
  final Element? statusElement;

  /// [statusHistory] /// The history of statuses that the EpisodeOfCare has been through (without
  /// requiring processing the history of the resource).
  final List<EpisodeOfCareStatusHistory>? statusHistory;

  /// [type] /// A classification of the type of episode of care; e.g. specialist referral,
  /// disease management, type of funded care.
  final List<CodeableConcept>? type;

  /// [diagnosis] /// The list of diagnosis relevant to this episode of care.
  final List<EpisodeOfCareDiagnosis>? diagnosis;

  /// [patient] /// The patient who is the focus of this episode of care.
  final Reference patient;

  /// [managingOrganization] /// The organization that has assumed the specific responsibilities for the
  /// specified duration.
  final Reference? managingOrganization;

  /// [period] /// The interval during which the managing organization assumes the defined
  /// responsibility.
  final Period? period;

  /// [referralRequest] /// Referral Request(s) that are fulfilled by this EpisodeOfCare, incoming
  /// referrals.
  final List<Reference>? referralRequest;

  /// [careManager] /// The practitioner that is the care manager/care coordinator for this
  /// patient.
  final Reference? careManager;

  /// [team] /// The list of practitioners that may be facilitating this episode of care for
  /// specific purposes.
  final List<Reference>? team;

  /// [account] /// The set of accounts that may be used for billing for this EpisodeOfCare.
  final List<Reference>? account;
  @override
  EpisodeOfCare clone() => throw UnimplementedError();
  EpisodeOfCare copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCode? status,
    Element? statusElement,
    List<EpisodeOfCareStatusHistory>? statusHistory,
    List<CodeableConcept>? type,
    List<EpisodeOfCareDiagnosis>? diagnosis,
    Reference? patient,
    Reference? managingOrganization,
    Period? period,
    List<Reference>? referralRequest,
    Reference? careManager,
    List<Reference>? team,
    List<Reference>? account,
  }) {
    return EpisodeOfCare(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      statusHistory: statusHistory ?? this.statusHistory,
      type: type ?? this.type,
      diagnosis: diagnosis ?? this.diagnosis,
      patient: patient ?? this.patient,
      managingOrganization: managingOrganization ?? this.managingOrganization,
      period: period ?? this.period,
      referralRequest: referralRequest ?? this.referralRequest,
      careManager: careManager ?? this.careManager,
      team: team ?? this.team,
      account: account ?? this.account,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [EpisodeOfCareStatusHistory] /// The history of statuses that the EpisodeOfCare has been through (without
/// requiring processing the history of the resource).
class EpisodeOfCareStatusHistory extends BackboneElement {
  EpisodeOfCareStatusHistory({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.status,
    this.statusElement,
    required this.period,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [status] /// planned | waitlist | active | onhold | finished | cancelled.
  final FhirCode status;
  final Element? statusElement;

  /// [period] /// The period during this EpisodeOfCare that the specific status applied.
  final Period period;
  @override
  EpisodeOfCareStatusHistory clone() => throw UnimplementedError();
  EpisodeOfCareStatusHistory copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? status,
    Element? statusElement,
    Period? period,
  }) {
    return EpisodeOfCareStatusHistory(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      period: period ?? this.period,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [EpisodeOfCareDiagnosis] /// The list of diagnosis relevant to this episode of care.
class EpisodeOfCareDiagnosis extends BackboneElement {
  EpisodeOfCareDiagnosis({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.condition,
    this.role,
    this.rank,
    this.rankElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [condition] /// A list of conditions/problems/diagnoses that this episode of care is
  /// intended to be providing care for.
  final Reference condition;

  /// [role] /// Role that this diagnosis has within the episode of care (e.g. admission,
  /// billing, discharge …).
  final CodeableConcept? role;

  /// [rank] /// Ranking of the diagnosis (for each role type).
  final FhirPositiveInt? rank;
  final Element? rankElement;
  @override
  EpisodeOfCareDiagnosis clone() => throw UnimplementedError();
  EpisodeOfCareDiagnosis copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? condition,
    CodeableConcept? role,
    FhirPositiveInt? rank,
    Element? rankElement,
  }) {
    return EpisodeOfCareDiagnosis(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      condition: condition ?? this.condition,
      role: role ?? this.role,
      rank: rank ?? this.rank,
      rankElement: rankElement ?? this.rankElement,
    );
  }
}
