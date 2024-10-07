import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'episode_of_care.g.dart';

/// [EpisodeOfCare] /// An association between a patient and an organization / healthcare
/// provider(s) during which time encounters may occur. The managing
/// organization assumes a level of responsibility for the patient during this
/// time.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
            resourceType: R4ResourceType.EpisodeOfCare,
            fhirType: 'EpisodeOfCare');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// The EpisodeOfCare may be known by different identifiers for different
  /// contexts of use, such as when an external agency is tracking the Episode
  /// for funding purposes.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// planned | waitlist | active | onhold | finished | cancelled.
  @JsonKey(name: 'status')
  final FhirCode status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [statusHistory] /// The history of statuses that the EpisodeOfCare has been through (without
  /// requiring processing the history of the resource).
  @JsonKey(name: 'statusHistory')
  final List<EpisodeOfCareStatusHistory>? statusHistory;

  /// [type] /// A classification of the type of episode of care; e.g. specialist referral,
  /// disease management, type of funded care.
  @JsonKey(name: 'type')
  final List<CodeableConcept>? type;

  /// [diagnosis] /// The list of diagnosis relevant to this episode of care.
  @JsonKey(name: 'diagnosis')
  final List<EpisodeOfCareDiagnosis>? diagnosis;

  /// [patient] /// The patient who is the focus of this episode of care.
  @JsonKey(name: 'patient')
  final Reference patient;

  /// [managingOrganization] /// The organization that has assumed the specific responsibilities for the
  /// specified duration.
  @JsonKey(name: 'managingOrganization')
  final Reference? managingOrganization;

  /// [period] /// The interval during which the managing organization assumes the defined
  /// responsibility.
  @JsonKey(name: 'period')
  final Period? period;

  /// [referralRequest] /// Referral Request(s) that are fulfilled by this EpisodeOfCare, incoming
  /// referrals.
  @JsonKey(name: 'referralRequest')
  final List<Reference>? referralRequest;

  /// [careManager] /// The practitioner that is the care manager/care coordinator for this
  /// patient.
  @JsonKey(name: 'careManager')
  final Reference? careManager;

  /// [team] /// The list of practitioners that may be facilitating this episode of care for
  /// specific purposes.
  @JsonKey(name: 'team')
  final List<Reference>? team;

  /// [account] /// The set of accounts that may be used for billing for this EpisodeOfCare.
  @JsonKey(name: 'account')
  final List<Reference>? account;
  factory EpisodeOfCare.fromJson(Map<String, dynamic> json) =>
      _$EpisodeOfCareFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EpisodeOfCareToJson(this);

  @override
  EpisodeOfCare clone() => throw UnimplementedError();
  @override
  EpisodeOfCare copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EpisodeOfCare.fromYaml(dynamic yaml) => yaml is String
      ? EpisodeOfCare.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EpisodeOfCare.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EpisodeOfCare cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EpisodeOfCare.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EpisodeOfCare.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EpisodeOfCareStatusHistory] /// The history of statuses that the EpisodeOfCare has been through (without
/// requiring processing the history of the resource).
@JsonSerializable()
class EpisodeOfCareStatusHistory extends BackboneElement {
  EpisodeOfCareStatusHistory({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.status,
    this.statusElement,
    required this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'EpisodeOfCareStatusHistory');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [status] /// planned | waitlist | active | onhold | finished | cancelled.
  @JsonKey(name: 'status')
  final FhirCode status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [period] /// The period during this EpisodeOfCare that the specific status applied.
  @JsonKey(name: 'period')
  final Period period;
  factory EpisodeOfCareStatusHistory.fromJson(Map<String, dynamic> json) =>
      _$EpisodeOfCareStatusHistoryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EpisodeOfCareStatusHistoryToJson(this);

  @override
  EpisodeOfCareStatusHistory clone() => throw UnimplementedError();
  @override
  EpisodeOfCareStatusHistory copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? status,
    Element? statusElement,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EpisodeOfCareStatusHistory(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EpisodeOfCareStatusHistory.fromYaml(dynamic yaml) => yaml is String
      ? EpisodeOfCareStatusHistory.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EpisodeOfCareStatusHistory.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EpisodeOfCareStatusHistory cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EpisodeOfCareStatusHistory.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EpisodeOfCareStatusHistory.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [EpisodeOfCareDiagnosis] /// The list of diagnosis relevant to this episode of care.
@JsonSerializable()
class EpisodeOfCareDiagnosis extends BackboneElement {
  EpisodeOfCareDiagnosis({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.condition,
    this.role,
    this.rank,
    this.rankElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'EpisodeOfCareDiagnosis');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [condition] /// A list of conditions/problems/diagnoses that this episode of care is
  /// intended to be providing care for.
  @JsonKey(name: 'condition')
  final Reference condition;

  /// [role] /// Role that this diagnosis has within the episode of care (e.g. admission,
  /// billing, discharge …).
  @JsonKey(name: 'role')
  final CodeableConcept? role;

  /// [rank] /// Ranking of the diagnosis (for each role type).
  @JsonKey(name: 'rank')
  final FhirPositiveInt? rank;
  @JsonKey(name: '_rank')
  final Element? rankElement;
  factory EpisodeOfCareDiagnosis.fromJson(Map<String, dynamic> json) =>
      _$EpisodeOfCareDiagnosisFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EpisodeOfCareDiagnosisToJson(this);

  @override
  EpisodeOfCareDiagnosis clone() => throw UnimplementedError();
  @override
  EpisodeOfCareDiagnosis copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? condition,
    CodeableConcept? role,
    FhirPositiveInt? rank,
    Element? rankElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EpisodeOfCareDiagnosis(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      condition: condition ?? this.condition,
      role: role ?? this.role,
      rank: rank ?? this.rank,
      rankElement: rankElement ?? this.rankElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory EpisodeOfCareDiagnosis.fromYaml(dynamic yaml) => yaml is String
      ? EpisodeOfCareDiagnosis.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? EpisodeOfCareDiagnosis.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'EpisodeOfCareDiagnosis cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory EpisodeOfCareDiagnosis.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EpisodeOfCareDiagnosis.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
