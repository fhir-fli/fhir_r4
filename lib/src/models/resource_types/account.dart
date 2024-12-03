import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Account]
/// A financial tool for tracking value accrued for a particular purpose.
/// In the healthcare field, used to track charges for a patient, cost
/// centers, etc.
class Account extends DomainResource {
  /// Primary constructor for
  /// [Account]

  Account({
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
    this.type,
    this.name,
    this.subject,
    this.servicePeriod,
    this.coverage,
    this.owner,
    this.description,
    this.guarantor,
    this.partOf,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Account,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Account.fromJson(
    Map<String, dynamic> json,
  ) {
    return Account(
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
      status: AccountStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      name: (json['name'] != null || json['_name'] != null)
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      subject: json['subject'] != null
          ? (json['subject'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      servicePeriod: json['servicePeriod'] != null
          ? Period.fromJson(
              json['servicePeriod'] as Map<String, dynamic>,
            )
          : null,
      coverage: json['coverage'] != null
          ? (json['coverage'] as List<dynamic>)
              .map<AccountCoverage>(
                (v) => AccountCoverage.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      owner: json['owner'] != null
          ? Reference.fromJson(
              json['owner'] as Map<String, dynamic>,
            )
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      guarantor: json['guarantor'] != null
          ? (json['guarantor'] as List<dynamic>)
              .map<AccountGuarantor>(
                (v) => AccountGuarantor.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      partOf: json['partOf'] != null
          ? Reference.fromJson(
              json['partOf'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [Account]
  /// from a [String] or [YamlMap] object
  factory Account.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Account.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Account.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Account '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Account]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Account.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Account.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Account';

  /// [identifier]
  /// Unique identifier used to reference the account. Might or might not be
  /// intended for human use (e.g. credit card number).
  final List<Identifier>? identifier;

  /// [status]
  /// Indicates whether the account is presently used/usable or not.
  final AccountStatus status;

  /// [type]
  /// Categorizes the account for reporting and searching purposes.
  final CodeableConcept? type;

  /// [name]
  /// Name used for the account when displaying it to humans in reports, etc.
  final FhirString? name;

  /// [subject]
  /// Identifies the entity which incurs the expenses. While the immediate
  /// recipients of services or goods might be entities related to the
  /// subject, the expenses were ultimately incurred by the subject of the
  /// Account.
  final List<Reference>? subject;

  /// [servicePeriod]
  /// The date range of services associated with this account.
  final Period? servicePeriod;

  /// [coverage]
  /// The party(s) that are responsible for covering the payment of this
  /// account, and what order should they be applied to the account.
  final List<AccountCoverage>? coverage;

  /// [owner]
  /// Indicates the service area, hospital, department, etc. with
  /// responsibility for managing the Account.
  final Reference? owner;

  /// [description]
  /// Provides additional information about what the account tracks and how
  /// it is used.
  final FhirString? description;

  /// [guarantor]
  /// The parties responsible for balancing the account if other payment
  /// options fall short.
  final List<AccountGuarantor>? guarantor;

  /// [partOf]
  /// Reference to a parent Account.
  final Reference? partOf;
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
    if (type != null) {
      json['type'] = type!.toJson();
    }

    addField('name', name);
    if (subject != null && subject!.isNotEmpty) {
      json['subject'] = subject!.map((e) => e.toJson()).toList();
    }

    if (servicePeriod != null) {
      json['servicePeriod'] = servicePeriod!.toJson();
    }

    if (coverage != null && coverage!.isNotEmpty) {
      json['coverage'] = coverage!.map((e) => e.toJson()).toList();
    }

    if (owner != null) {
      json['owner'] = owner!.toJson();
    }

    addField('description', description);
    if (guarantor != null && guarantor!.isNotEmpty) {
      json['guarantor'] = guarantor!.map((e) => e.toJson()).toList();
    }

    if (partOf != null) {
      json['partOf'] = partOf!.toJson();
    }

    return json;
  }

  @override
  Account clone() => throw UnimplementedError();
  @override
  Account copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    AccountStatus? status,
    CodeableConcept? type,
    FhirString? name,
    List<Reference>? subject,
    Period? servicePeriod,
    List<AccountCoverage>? coverage,
    Reference? owner,
    FhirString? description,
    List<AccountGuarantor>? guarantor,
    Reference? partOf,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Account(
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
      type: type ?? this.type,
      name: name ?? this.name,
      subject: subject ?? this.subject,
      servicePeriod: servicePeriod ?? this.servicePeriod,
      coverage: coverage ?? this.coverage,
      owner: owner ?? this.owner,
      description: description ?? this.description,
      guarantor: guarantor ?? this.guarantor,
      partOf: partOf ?? this.partOf,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [AccountCoverage]
/// The party(s) that are responsible for covering the payment of this
/// account, and what order should they be applied to the account.
class AccountCoverage extends BackboneElement {
  /// Primary constructor for
  /// [AccountCoverage]

  AccountCoverage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.coverage,
    this.priority,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AccountCoverage.fromJson(
    Map<String, dynamic> json,
  ) {
    return AccountCoverage(
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
      coverage: Reference.fromJson(
        json['coverage'] as Map<String, dynamic>,
      ),
      priority: (json['priority'] != null || json['_priority'] != null)
          ? FhirPositiveInt.fromJson({
              'value': json['priority'],
              '_value': json['_priority'],
            })
          : null,
    );
  }

  /// Deserialize [AccountCoverage]
  /// from a [String] or [YamlMap] object
  factory AccountCoverage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AccountCoverage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AccountCoverage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AccountCoverage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AccountCoverage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AccountCoverage.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AccountCoverage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'AccountCoverage';

  /// [coverage]
  /// The party(s) that contribute to payment (or part of) of the charges
  /// applied to this account (including self-pay).
  ///
  /// A coverage may only be responsible for specific types of charges, and
  /// the sequence of the coverages in the account could be important when
  /// processing billing.
  final Reference coverage;

  /// [priority]
  /// The priority of the coverage in the context of this account.
  final FhirPositiveInt? priority;
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

    json['coverage'] = coverage.toJson();

    addField('priority', priority);
    return json;
  }

  @override
  AccountCoverage clone() => throw UnimplementedError();
  @override
  AccountCoverage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? coverage,
    FhirPositiveInt? priority,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return AccountCoverage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      coverage: coverage ?? this.coverage,
      priority: priority ?? this.priority,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [AccountGuarantor]
/// The parties responsible for balancing the account if other payment
/// options fall short.
class AccountGuarantor extends BackboneElement {
  /// Primary constructor for
  /// [AccountGuarantor]

  AccountGuarantor({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.party,
    this.onHold,
    this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AccountGuarantor.fromJson(
    Map<String, dynamic> json,
  ) {
    return AccountGuarantor(
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
      party: Reference.fromJson(
        json['party'] as Map<String, dynamic>,
      ),
      onHold: (json['onHold'] != null || json['_onHold'] != null)
          ? FhirBoolean.fromJson({
              'value': json['onHold'],
              '_value': json['_onHold'],
            })
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [AccountGuarantor]
  /// from a [String] or [YamlMap] object
  factory AccountGuarantor.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AccountGuarantor.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AccountGuarantor.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AccountGuarantor '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AccountGuarantor]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AccountGuarantor.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AccountGuarantor.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'AccountGuarantor';

  /// [party]
  /// The entity who is responsible.
  final Reference party;

  /// [onHold]
  /// A guarantor may be placed on credit hold or otherwise have their role
  /// temporarily suspended.
  final FhirBoolean? onHold;

  /// [period]
  /// The timeframe during which the guarantor accepts responsibility for the
  /// account.
  final Period? period;
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

    json['party'] = party.toJson();

    addField('onHold', onHold);
    if (period != null) {
      json['period'] = period!.toJson();
    }

    return json;
  }

  @override
  AccountGuarantor clone() => throw UnimplementedError();
  @override
  AccountGuarantor copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? party,
    FhirBoolean? onHold,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return AccountGuarantor(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      party: party ?? this.party,
      onHold: onHold ?? this.onHold,
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
