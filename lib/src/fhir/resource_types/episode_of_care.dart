import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [EpisodeOfCare]
/// An association between a patient and an organization / healthcare
/// provider(s) during which time encounters may occur. The managing
/// organization assumes a level of responsibility for the patient during
/// this time.
class EpisodeOfCare extends DomainResource {
  /// Primary constructor for [EpisodeOfCare]

  EpisodeOfCare({
    super.id,
    super.meta,
    super.implicitRules,

    /// Extensions for [implicitRules]
    super.implicitRulesElement,
    super.language,

    /// Extensions for [language]
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,

    /// Extensions for [status]
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
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EpisodeOfCare.fromJson(Map<String, dynamic> json) {
    return EpisodeOfCare(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(
              json['_implicitRules'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(
              json['_language'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (dynamic v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (dynamic v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: EpisodeOfCareStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(
              json['_status'] as Map<String, dynamic>,
            )
          : null,
      statusHistory: json['statusHistory'] != null
          ? (json['statusHistory'] as List<dynamic>)
              .map<EpisodeOfCareStatusHistory>(
                (dynamic v) => EpisodeOfCareStatusHistory.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      diagnosis: json['diagnosis'] != null
          ? (json['diagnosis'] as List<dynamic>)
              .map<EpisodeOfCareDiagnosis>(
                (dynamic v) => EpisodeOfCareDiagnosis.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      patient: Reference.fromJson(
        json['patient'] as Map<String, dynamic>,
      ),
      managingOrganization: json['managingOrganization'] != null
          ? Reference.fromJson(
              json['managingOrganization'] as Map<String, dynamic>,
            )
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
      referralRequest: json['referralRequest'] != null
          ? (json['referralRequest'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      careManager: json['careManager'] != null
          ? Reference.fromJson(
              json['careManager'] as Map<String, dynamic>,
            )
          : null,
      team: json['team'] != null
          ? (json['team'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      account: json['account'] != null
          ? (json['account'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [EpisodeOfCare] from a [String] or [YamlMap] object
  factory EpisodeOfCare.fromYaml(dynamic yaml) => yaml is String
      ? EpisodeOfCare.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? EpisodeOfCare.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'EpisodeOfCare cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [EpisodeOfCare] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EpisodeOfCare.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EpisodeOfCare.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EpisodeOfCare';

  /// [identifier]
  /// The EpisodeOfCare may be known by different identifiers for different
  /// contexts of use, such as when an external agency is tracking the
  /// Episode for funding purposes.
  final List<Identifier>? identifier;

  /// [status]
  /// planned | waitlist | active | onhold | finished | cancelled.
  final EpisodeOfCareStatus status;

  /// Extensions for [status]
  final Element? statusElement;

  /// [statusHistory]
  /// The history of statuses that the EpisodeOfCare has been through
  /// (without requiring processing the history of the resource).
  final List<EpisodeOfCareStatusHistory>? statusHistory;

  /// [type]
  /// A classification of the type of episode of care; e.g. specialist
  /// referral, disease management, type of funded care.
  final List<CodeableConcept>? type;

  /// [diagnosis]
  /// The list of diagnosis relevant to this episode of care.
  final List<EpisodeOfCareDiagnosis>? diagnosis;

  /// [patient]
  /// The patient who is the focus of this episode of care.
  final Reference patient;

  /// [managingOrganization]
  /// The organization that has assumed the specific responsibilities for the
  /// specified duration.
  final Reference? managingOrganization;

  /// [period]
  /// The interval during which the managing organization assumes the defined
  /// responsibility.
  final Period? period;

  /// [referralRequest]
  /// Referral Request(s) that are fulfilled by this EpisodeOfCare, incoming
  /// referrals.
  final List<Reference>? referralRequest;

  /// [careManager]
  /// The practitioner that is the care manager/care coordinator for this
  /// patient.
  final Reference? careManager;

  /// [team]
  /// The list of practitioners that may be facilitating this episode of care
  /// for specific purposes.
  final List<Reference>? team;

  /// [account]
  /// The set of accounts that may be used for billing for this
  /// EpisodeOfCare.
  final List<Reference>? account;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map((Identifier v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (statusHistory != null && statusHistory!.isNotEmpty) {
      json['statusHistory'] = statusHistory!
          .map((EpisodeOfCareStatusHistory v) => v.toJson())
          .toList();
    }
    if (type != null && type!.isNotEmpty) {
      json['type'] = type!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (diagnosis != null && diagnosis!.isNotEmpty) {
      json['diagnosis'] =
          diagnosis!.map((EpisodeOfCareDiagnosis v) => v.toJson()).toList();
    }
    json['patient'] = patient.toJson();
    if (managingOrganization != null) {
      json['managingOrganization'] = managingOrganization!.toJson();
    }
    if (period != null) {
      json['period'] = period!.toJson();
    }
    if (referralRequest != null && referralRequest!.isNotEmpty) {
      json['referralRequest'] =
          referralRequest!.map((Reference v) => v.toJson()).toList();
    }
    if (careManager != null) {
      json['careManager'] = careManager!.toJson();
    }
    if (team != null && team!.isNotEmpty) {
      json['team'] = team!.map((Reference v) => v.toJson()).toList();
    }
    if (account != null && account!.isNotEmpty) {
      json['account'] = account!.map((Reference v) => v.toJson()).toList();
    }
    return json;
  }

  @override
  EpisodeOfCare clone() => throw UnimplementedError();
  @override
  EpisodeOfCare copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    EpisodeOfCareStatus? status,
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
}

/// [EpisodeOfCareStatusHistory]
/// The history of statuses that the EpisodeOfCare has been through
/// (without requiring processing the history of the resource).
class EpisodeOfCareStatusHistory extends BackboneElement {
  /// Primary constructor for [EpisodeOfCareStatusHistory]

  EpisodeOfCareStatusHistory({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.status,

    /// Extensions for [status]
    this.statusElement,
    required this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EpisodeOfCareStatusHistory.fromJson(Map<String, dynamic> json) {
    return EpisodeOfCareStatusHistory(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: EpisodeOfCareStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(
              json['_status'] as Map<String, dynamic>,
            )
          : null,
      period: Period.fromJson(
        json['period'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [EpisodeOfCareStatusHistory] from a [String] or [YamlMap] object
  factory EpisodeOfCareStatusHistory.fromYaml(dynamic yaml) => yaml is String
      ? EpisodeOfCareStatusHistory.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? EpisodeOfCareStatusHistory.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'EpisodeOfCareStatusHistory cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [EpisodeOfCareStatusHistory] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EpisodeOfCareStatusHistory.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EpisodeOfCareStatusHistory.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EpisodeOfCareStatusHistory';

  /// [status]
  /// planned | waitlist | active | onhold | finished | cancelled.
  final EpisodeOfCareStatus status;

  /// Extensions for [status]
  final Element? statusElement;

  /// [period]
  /// The period during this EpisodeOfCare that the specific status applied.
  final Period period;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    json['period'] = period.toJson();
    return json;
  }

  @override
  EpisodeOfCareStatusHistory clone() => throw UnimplementedError();
  @override
  EpisodeOfCareStatusHistory copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    EpisodeOfCareStatus? status,
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
}

/// [EpisodeOfCareDiagnosis]
/// The list of diagnosis relevant to this episode of care.
class EpisodeOfCareDiagnosis extends BackboneElement {
  /// Primary constructor for [EpisodeOfCareDiagnosis]

  EpisodeOfCareDiagnosis({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.condition,
    this.role,
    this.rank,

    /// Extensions for [rank]
    this.rankElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EpisodeOfCareDiagnosis.fromJson(Map<String, dynamic> json) {
    return EpisodeOfCareDiagnosis(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      condition: Reference.fromJson(
        json['condition'] as Map<String, dynamic>,
      ),
      role: json['role'] != null
          ? CodeableConcept.fromJson(
              json['role'] as Map<String, dynamic>,
            )
          : null,
      rank:
          json['rank'] != null ? FhirPositiveInt.fromJson(json['rank']) : null,
      rankElement: json['_rank'] != null
          ? Element.fromJson(
              json['_rank'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [EpisodeOfCareDiagnosis] from a [String] or [YamlMap] object
  factory EpisodeOfCareDiagnosis.fromYaml(dynamic yaml) => yaml is String
      ? EpisodeOfCareDiagnosis.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? EpisodeOfCareDiagnosis.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'EpisodeOfCareDiagnosis cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [EpisodeOfCareDiagnosis] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EpisodeOfCareDiagnosis.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EpisodeOfCareDiagnosis.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EpisodeOfCareDiagnosis';

  /// [condition]
  /// A list of conditions/problems/diagnoses that this episode of care is
  /// intended to be providing care for.
  final Reference condition;

  /// [role]
  /// Role that this diagnosis has within the episode of care (e.g.
  /// admission, billing, discharge …).
  final CodeableConcept? role;

  /// [rank]
  /// Ranking of the diagnosis (for each role type).
  final FhirPositiveInt? rank;

  /// Extensions for [rank]
  final Element? rankElement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    json['condition'] = condition.toJson();
    if (role != null) {
      json['role'] = role!.toJson();
    }
    if (rank?.value != null) {
      json['rank'] = rank!.toJson();
    }
    if (rankElement != null) {
      json['_rank'] = rankElement!.toJson();
    }
    return json;
  }

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
}
