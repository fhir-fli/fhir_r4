import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [EpisodeOfCare]
/// An association between a patient and an organization / healthcare
/// provider(s) during which time encounters may occur. The managing
/// organization assumes a level of responsibility for the patient during
/// this time.
class EpisodeOfCare extends DomainResource {
  /// Primary constructor for
  /// [EpisodeOfCare]

  EpisodeOfCare({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
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
  }) : super(
          resourceType: R4ResourceType.EpisodeOfCare,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EpisodeOfCare.fromJson(
    Map<String, dynamic> json,
  ) {
    return EpisodeOfCare(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: EpisodeOfCareStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      statusHistory: json['statusHistory'] != null
          ? (json['statusHistory'] as List<dynamic>)
              .map<EpisodeOfCareStatusHistory>(
                (v) => EpisodeOfCareStatusHistory.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: json['type'] != null
          ? (json['type'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      diagnosis: json['diagnosis'] != null
          ? (json['diagnosis'] as List<dynamic>)
              .map<EpisodeOfCareDiagnosis>(
                (v) => EpisodeOfCareDiagnosis.fromJson(
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
                (v) => Reference.fromJson(
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
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      account: json['account'] != null
          ? (json['account'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [EpisodeOfCare]
  /// from a [String] or [YamlMap] object
  factory EpisodeOfCare.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EpisodeOfCare.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EpisodeOfCare.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EpisodeOfCare '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EpisodeOfCare]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EpisodeOfCare.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    addField('status', status);
    if (statusHistory != null && statusHistory!.isNotEmpty) {
      json['statusHistory'] = statusHistory!.map((e) => e.toJson()).toList();
    }

    if (type != null && type!.isNotEmpty) {
      json['type'] = type!.map((e) => e.toJson()).toList();
    }

    if (diagnosis != null && diagnosis!.isNotEmpty) {
      json['diagnosis'] = diagnosis!.map((e) => e.toJson()).toList();
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
          referralRequest!.map((e) => e.toJson()).toList();
    }

    if (careManager != null) {
      json['careManager'] = careManager!.toJson();
    }

    if (team != null && team!.isNotEmpty) {
      json['team'] = team!.map((e) => e.toJson()).toList();
    }

    if (account != null && account!.isNotEmpty) {
      json['account'] = account!.map((e) => e.toJson()).toList();
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
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    EpisodeOfCareStatus? status,
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
  }) {
    return EpisodeOfCare(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
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
    );
  }
}

/// [EpisodeOfCareStatusHistory]
/// The history of statuses that the EpisodeOfCare has been through
/// (without requiring processing the history of the resource).
class EpisodeOfCareStatusHistory extends BackboneElement {
  /// Primary constructor for
  /// [EpisodeOfCareStatusHistory]

  EpisodeOfCareStatusHistory({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.status,
    required this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EpisodeOfCareStatusHistory.fromJson(
    Map<String, dynamic> json,
  ) {
    return EpisodeOfCareStatusHistory(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: EpisodeOfCareStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      period: Period.fromJson(
        json['period'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [EpisodeOfCareStatusHistory]
  /// from a [String] or [YamlMap] object
  factory EpisodeOfCareStatusHistory.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EpisodeOfCareStatusHistory.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EpisodeOfCareStatusHistory.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EpisodeOfCareStatusHistory '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EpisodeOfCareStatusHistory]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EpisodeOfCareStatusHistory.fromJsonString(
    String source,
  ) {
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

  /// [period]
  /// The period during this EpisodeOfCare that the specific status applied.
  final Period period;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('status', status);
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
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return EpisodeOfCareStatusHistory(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      status: status ?? this.status,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [EpisodeOfCareDiagnosis]
/// The list of diagnosis relevant to this episode of care.
class EpisodeOfCareDiagnosis extends BackboneElement {
  /// Primary constructor for
  /// [EpisodeOfCareDiagnosis]

  EpisodeOfCareDiagnosis({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.condition,
    this.role,
    this.rank,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EpisodeOfCareDiagnosis.fromJson(
    Map<String, dynamic> json,
  ) {
    return EpisodeOfCareDiagnosis(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
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
      rank: (json['rank'] != null || json['_rank'] != null)
          ? FhirPositiveInt.fromJson({
              'value': json['rank'],
              '_value': json['_rank'],
            })
          : null,
    );
  }

  /// Deserialize [EpisodeOfCareDiagnosis]
  /// from a [String] or [YamlMap] object
  factory EpisodeOfCareDiagnosis.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EpisodeOfCareDiagnosis.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EpisodeOfCareDiagnosis.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EpisodeOfCareDiagnosis '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EpisodeOfCareDiagnosis]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EpisodeOfCareDiagnosis.fromJsonString(
    String source,
  ) {
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
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['condition'] = condition.toJson();

    if (role != null) {
      json['role'] = role!.toJson();
    }

    addField('rank', rank);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return EpisodeOfCareDiagnosis(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      condition: condition ?? this.condition,
      role: role ?? this.role,
      rank: rank ?? this.rank,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}
