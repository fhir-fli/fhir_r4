import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Consent]
/// A record of a healthcare consumer’s choices, which permits or denies
/// identified recipient(s) or recipient role(s) to perform one or more
/// actions within a given policy context, for specific purposes and
/// periods of time.
class Consent extends DomainResource {
  /// Primary constructor for
  /// [Consent]

  const Consent({
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
    required this.scope,
    required this.category,
    this.patient,
    this.dateTime,
    this.performer,
    this.organization,
    this.sourceX,
    this.policy,
    this.policyRule,
    this.verification,
    this.provision,
  }) : super(
          resourceType: R4ResourceType.Consent,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Consent.fromJson(
    Map<String, dynamic> json,
  ) {
    return Consent(
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
      status: ConsentState.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      scope: CodeableConcept.fromJson(
        json['scope'] as Map<String, dynamic>,
      ),
      category: ensureNonNullList(
        (json['category'] as List<dynamic>)
            .map<CodeableConcept>(
              (v) => CodeableConcept.fromJson(
                v as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
      patient: json['patient'] != null
          ? Reference.fromJson(
              json['patient'] as Map<String, dynamic>,
            )
          : null,
      dateTime: (json['dateTime'] != null || json['_dateTime'] != null)
          ? FhirDateTime.fromJson({
              'value': json['dateTime'],
              '_value': json['_dateTime'],
            })
          : null,
      performer: json['performer'] != null
          ? (json['performer'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      organization: json['organization'] != null
          ? (json['organization'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      sourceX: json['sourceAttachment'] != null
          ? Attachment.fromJson(
              json['sourceAttachment'] as Map<String, dynamic>,
            )
          : json['sourceReference'] != null
              ? Reference.fromJson(
                  json['sourceReference'] as Map<String, dynamic>,
                )
              : null,
      policy: json['policy'] != null
          ? (json['policy'] as List<dynamic>)
              .map<ConsentPolicy>(
                (v) => ConsentPolicy.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      policyRule: json['policyRule'] != null
          ? CodeableConcept.fromJson(
              json['policyRule'] as Map<String, dynamic>,
            )
          : null,
      verification: json['verification'] != null
          ? (json['verification'] as List<dynamic>)
              .map<ConsentVerification>(
                (v) => ConsentVerification.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      provision: json['provision'] != null
          ? ConsentProvision.fromJson(
              json['provision'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [Consent]
  /// from a [String] or [YamlMap] object
  factory Consent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Consent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Consent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Consent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Consent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Consent.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Consent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Consent';

  /// [identifier]
  /// Unique identifier for this copy of the Consent Statement.
  final List<Identifier>? identifier;

  /// [status]
  /// Indicates the current state of this consent.
  final ConsentState status;

  /// [scope]
  /// A selector of the type of consent being presented: ADR, Privacy,
  /// Treatment, Research. This list is now extensible.
  final CodeableConcept scope;

  /// [category]
  /// A classification of the type of consents found in the statement. This
  /// element supports indexing and retrieval of consent statements.
  final List<CodeableConcept> category;

  /// [patient]
  /// The patient/healthcare consumer to whom this consent applies.
  final Reference? patient;

  /// [dateTime]
  /// When this Consent was issued / created / indexed.
  final FhirDateTime? dateTime;

  /// [performer]
  /// Either the Grantor, which is the entity responsible for granting the
  /// rights listed in a Consent Directive or the Grantee, which is the
  /// entity responsible for complying with the Consent Directive, including
  /// any obligations or limitations on authorizations and enforcement of
  /// prohibitions.
  final List<Reference>? performer;

  /// [organization]
  /// The organization that manages the consent, and the framework within
  /// which it is executed.
  final List<Reference>? organization;

  /// [sourceX]
  /// The source on which this consent statement is based. The source might
  /// be a scanned original paper form, or a reference to a consent that
  /// links back to such a source, a reference to a document repository (e.g.
  /// XDS) that stores the original consent document.
  final SourceXConsent? sourceX;

  /// [policy]
  /// The references to the policies that are included in this consent scope.
  /// Policies may be organizational, but are often defined jurisdictionally,
  /// or in law.
  final List<ConsentPolicy>? policy;

  /// [policyRule]
  /// A reference to the specific base computable regulation or policy.
  final CodeableConcept? policyRule;

  /// [verification]
  /// Whether a treatment instruction (e.g. artificial respiration yes or no)
  /// was verified with the patient, his/her family or another authorized
  /// person.
  final List<ConsentVerification>? verification;

  /// [provision]
  /// An exception to the base policy of this consent. An exception can be an
  /// addition or removal of access permissions.
  final ConsentProvision? provision;
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
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

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
    json['scope'] = scope.toJson();

    if (category.isNotEmpty) {
      json['category'] = category.map((e) => e.toJson()).toList();
    }

    if (patient != null) {
      json['patient'] = patient!.toJson();
    }

    if (dateTime != null) {
      addField('dateTime', dateTime);
    }

    if (performer != null && performer!.isNotEmpty) {
      json['performer'] = performer!.map((e) => e.toJson()).toList();
    }

    if (organization != null && organization!.isNotEmpty) {
      json['organization'] = organization!.map((e) => e.toJson()).toList();
    }

    if (sourceX != null) {
      json['source${sourceX!.fhirType.capitalize()}'] = sourceX!.toJson();
    }

    if (policy != null && policy!.isNotEmpty) {
      json['policy'] = policy!.map((e) => e.toJson()).toList();
    }

    if (policyRule != null) {
      json['policyRule'] = policyRule!.toJson();
    }

    if (verification != null && verification!.isNotEmpty) {
      json['verification'] = verification!.map((e) => e.toJson()).toList();
    }

    if (provision != null) {
      json['provision'] = provision!.toJson();
    }

    return json;
  }

  @override
  Consent clone() => throw UnimplementedError();
  @override
  Consent copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ConsentState? status,
    CodeableConcept? scope,
    List<CodeableConcept>? category,
    Reference? patient,
    FhirDateTime? dateTime,
    List<Reference>? performer,
    List<Reference>? organization,
    SourceXConsent? sourceX,
    List<ConsentPolicy>? policy,
    CodeableConcept? policyRule,
    List<ConsentVerification>? verification,
    ConsentProvision? provision,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Consent(
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
      scope: scope ?? this.scope,
      category: category ?? this.category,
      patient: patient ?? this.patient,
      dateTime: dateTime ?? this.dateTime,
      performer: performer ?? this.performer,
      organization: organization ?? this.organization,
      sourceX: sourceX ?? this.sourceX,
      policy: policy ?? this.policy,
      policyRule: policyRule ?? this.policyRule,
      verification: verification ?? this.verification,
      provision: provision ?? this.provision,
    );
  }
}

/// [ConsentPolicy]
/// The references to the policies that are included in this consent scope.
/// Policies may be organizational, but are often defined jurisdictionally,
/// or in law.
class ConsentPolicy extends BackboneElement {
  /// Primary constructor for
  /// [ConsentPolicy]

  const ConsentPolicy({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.authority,
    this.uri,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentPolicy.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConsentPolicy(
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
      authority: (json['authority'] != null || json['_authority'] != null)
          ? FhirUri.fromJson({
              'value': json['authority'],
              '_value': json['_authority'],
            })
          : null,
      uri: (json['uri'] != null || json['_uri'] != null)
          ? FhirUri.fromJson({
              'value': json['uri'],
              '_value': json['_uri'],
            })
          : null,
    );
  }

  /// Deserialize [ConsentPolicy]
  /// from a [String] or [YamlMap] object
  factory ConsentPolicy.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConsentPolicy.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConsentPolicy.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConsentPolicy '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConsentPolicy]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentPolicy.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConsentPolicy.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConsentPolicy';

  /// [authority]
  /// Entity or Organization having regulatory jurisdiction or accountability
  /// for enforcing policies pertaining to Consent Directives.
  final FhirUri? authority;

  /// [uri]
  /// The references to the policies that are included in this consent scope.
  /// Policies may be organizational, but are often defined jurisdictionally,
  /// or in law.
  final FhirUri? uri;
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

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (authority != null) {
      addField('authority', authority);
    }

    if (uri != null) {
      addField('uri', uri);
    }

    return json;
  }

  @override
  ConsentPolicy clone() => throw UnimplementedError();
  @override
  ConsentPolicy copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? authority,
    FhirUri? uri,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ConsentPolicy(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      authority: authority ?? this.authority,
      uri: uri ?? this.uri,
    );
  }
}

/// [ConsentVerification]
/// Whether a treatment instruction (e.g. artificial respiration yes or no)
/// was verified with the patient, his/her family or another authorized
/// person.
class ConsentVerification extends BackboneElement {
  /// Primary constructor for
  /// [ConsentVerification]

  const ConsentVerification({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.verified,
    this.verifiedWith,
    this.verificationDate,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentVerification.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConsentVerification(
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
      verified: FhirBoolean.fromJson({
        'value': json['verified'],
        '_value': json['_verified'],
      }),
      verifiedWith: json['verifiedWith'] != null
          ? Reference.fromJson(
              json['verifiedWith'] as Map<String, dynamic>,
            )
          : null,
      verificationDate: (json['verificationDate'] != null ||
              json['_verificationDate'] != null)
          ? FhirDateTime.fromJson({
              'value': json['verificationDate'],
              '_value': json['_verificationDate'],
            })
          : null,
    );
  }

  /// Deserialize [ConsentVerification]
  /// from a [String] or [YamlMap] object
  factory ConsentVerification.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConsentVerification.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConsentVerification.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConsentVerification '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConsentVerification]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentVerification.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConsentVerification.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConsentVerification';

  /// [verified]
  /// Has the instruction been verified.
  final FhirBoolean verified;

  /// [verifiedWith]
  /// Who verified the instruction (Patient, Relative or other Authorized
  /// Person).
  final Reference? verifiedWith;

  /// [verificationDate]
  /// Date verification was collected.
  final FhirDateTime? verificationDate;
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

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('verified', verified);
    if (verifiedWith != null) {
      json['verifiedWith'] = verifiedWith!.toJson();
    }

    if (verificationDate != null) {
      addField('verificationDate', verificationDate);
    }

    return json;
  }

  @override
  ConsentVerification clone() => throw UnimplementedError();
  @override
  ConsentVerification copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? verified,
    Reference? verifiedWith,
    FhirDateTime? verificationDate,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ConsentVerification(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      verified: verified ?? this.verified,
      verifiedWith: verifiedWith ?? this.verifiedWith,
      verificationDate: verificationDate ?? this.verificationDate,
    );
  }
}

/// [ConsentProvision]
/// An exception to the base policy of this consent. An exception can be an
/// addition or removal of access permissions.
class ConsentProvision extends BackboneElement {
  /// Primary constructor for
  /// [ConsentProvision]

  const ConsentProvision({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.period,
    this.actor,
    this.action,
    this.securityLabel,
    this.purpose,
    this.class_,
    this.code,
    this.dataPeriod,
    this.data,
    this.provision,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentProvision.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConsentProvision(
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
      type: (json['type'] != null || json['_type'] != null)
          ? ConsentProvisionType.fromJson({
              'value': json['type'],
              '_value': json['_type'],
            })
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
      actor: json['actor'] != null
          ? (json['actor'] as List<dynamic>)
              .map<ConsentActor>(
                (v) => ConsentActor.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      action: json['action'] != null
          ? (json['action'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      securityLabel: json['securityLabel'] != null
          ? (json['securityLabel'] as List<dynamic>)
              .map<Coding>(
                (v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      purpose: json['purpose'] != null
          ? (json['purpose'] as List<dynamic>)
              .map<Coding>(
                (v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      class_: json['class'] != null
          ? (json['class'] as List<dynamic>)
              .map<Coding>(
                (v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      dataPeriod: json['dataPeriod'] != null
          ? Period.fromJson(
              json['dataPeriod'] as Map<String, dynamic>,
            )
          : null,
      data: json['data'] != null
          ? (json['data'] as List<dynamic>)
              .map<ConsentData>(
                (v) => ConsentData.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      provision: json['provision'] != null
          ? (json['provision'] as List<dynamic>)
              .map<ConsentProvision>(
                (v) => ConsentProvision.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ConsentProvision]
  /// from a [String] or [YamlMap] object
  factory ConsentProvision.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConsentProvision.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConsentProvision.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConsentProvision '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConsentProvision]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentProvision.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConsentProvision.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConsentProvision';

  /// [type]
  /// Action to take - permit or deny - when the rule conditions are met. Not
  /// permitted in root rule, required in all nested rules.
  final ConsentProvisionType? type;

  /// [period]
  /// The timeframe in this rule is valid.
  final Period? period;

  /// [actor]
  /// Who or what is controlled by this rule. Use group to identify a set of
  /// actors by some property they share (e.g. 'admitting officers').
  final List<ConsentActor>? actor;

  /// [action]
  /// Actions controlled by this Rule.
  final List<CodeableConcept>? action;

  /// [securityLabel]
  /// A security label, comprised of 0..* security label fields (Privacy
  /// tags), which define which resources are controlled by this exception.
  final List<Coding>? securityLabel;

  /// [purpose]
  /// The context of the activities a user is taking - why the user is
  /// accessing the data - that are controlled by this rule.
  final List<Coding>? purpose;

  /// [class_]
  /// The class of information covered by this rule. The type can be a FHIR
  /// resource type, a profile on a type, or a CDA document, or some other
  /// type that indicates what sort of information the consent relates to.
  final List<Coding>? class_;

  /// [code]
  /// If this code is found in an instance, then the rule applies.
  final List<CodeableConcept>? code;

  /// [dataPeriod]
  /// Clinical or Operational Relevant period of time that bounds the data
  /// controlled by this rule.
  final Period? dataPeriod;

  /// [data]
  /// The resources controlled by this rule if specific resources are
  /// referenced.
  final List<ConsentData>? data;

  /// [provision]
  /// Rules which provide exceptions to the base rule or subrules.
  final List<ConsentProvision>? provision;
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

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (type != null) {
      addField('type', type);
    }

    if (period != null) {
      json['period'] = period!.toJson();
    }

    if (actor != null && actor!.isNotEmpty) {
      json['actor'] = actor!.map((e) => e.toJson()).toList();
    }

    if (action != null && action!.isNotEmpty) {
      json['action'] = action!.map((e) => e.toJson()).toList();
    }

    if (securityLabel != null && securityLabel!.isNotEmpty) {
      json['securityLabel'] = securityLabel!.map((e) => e.toJson()).toList();
    }

    if (purpose != null && purpose!.isNotEmpty) {
      json['purpose'] = purpose!.map((e) => e.toJson()).toList();
    }

    if (class_ != null && class_!.isNotEmpty) {
      json['class'] = class_!.map((e) => e.toJson()).toList();
    }

    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map((e) => e.toJson()).toList();
    }

    if (dataPeriod != null) {
      json['dataPeriod'] = dataPeriod!.toJson();
    }

    if (data != null && data!.isNotEmpty) {
      json['data'] = data!.map((e) => e.toJson()).toList();
    }

    if (provision != null && provision!.isNotEmpty) {
      json['provision'] = provision!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ConsentProvision clone() => throw UnimplementedError();
  @override
  ConsentProvision copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ConsentProvisionType? type,
    Period? period,
    List<ConsentActor>? actor,
    List<CodeableConcept>? action,
    List<Coding>? securityLabel,
    List<Coding>? purpose,
    List<Coding>? class_,
    List<CodeableConcept>? code,
    Period? dataPeriod,
    List<ConsentData>? data,
    List<ConsentProvision>? provision,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ConsentProvision(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      period: period ?? this.period,
      actor: actor ?? this.actor,
      action: action ?? this.action,
      securityLabel: securityLabel ?? this.securityLabel,
      purpose: purpose ?? this.purpose,
      class_: class_ ?? this.class_,
      code: code ?? this.code,
      dataPeriod: dataPeriod ?? this.dataPeriod,
      data: data ?? this.data,
      provision: provision ?? this.provision,
    );
  }
}

/// [ConsentActor]
/// Who or what is controlled by this rule. Use group to identify a set of
/// actors by some property they share (e.g. 'admitting officers').
class ConsentActor extends BackboneElement {
  /// Primary constructor for
  /// [ConsentActor]

  const ConsentActor({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.role,
    required this.reference,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentActor.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConsentActor(
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
      role: CodeableConcept.fromJson(
        json['role'] as Map<String, dynamic>,
      ),
      reference: Reference.fromJson(
        json['reference'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [ConsentActor]
  /// from a [String] or [YamlMap] object
  factory ConsentActor.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConsentActor.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConsentActor.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConsentActor '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConsentActor]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentActor.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConsentActor.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConsentActor';

  /// [role]
  /// How the individual is involved in the resources content that is
  /// described in the exception.
  final CodeableConcept role;

  /// [reference]
  /// The resource that identifies the actor. To identify actors by type, use
  /// group to identify a set of actors by some property they share (e.g.
  /// 'admitting officers').
  final Reference reference;
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

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['role'] = role.toJson();

    json['reference'] = reference.toJson();

    return json;
  }

  @override
  ConsentActor clone() => throw UnimplementedError();
  @override
  ConsentActor copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? role,
    Reference? reference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ConsentActor(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      reference: reference ?? this.reference,
    );
  }
}

/// [ConsentData]
/// The resources controlled by this rule if specific resources are
/// referenced.
class ConsentData extends BackboneElement {
  /// Primary constructor for
  /// [ConsentData]

  const ConsentData({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.meaning,
    required this.reference,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentData.fromJson(
    Map<String, dynamic> json,
  ) {
    return ConsentData(
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
      meaning: ConsentDataMeaning.fromJson({
        'value': json['meaning'],
        '_value': json['_meaning'],
      }),
      reference: Reference.fromJson(
        json['reference'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [ConsentData]
  /// from a [String] or [YamlMap] object
  factory ConsentData.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConsentData.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConsentData.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConsentData '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConsentData]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentData.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConsentData.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ConsentData';

  /// [meaning]
  /// How the resource reference is interpreted when testing consent
  /// restrictions.
  final ConsentDataMeaning meaning;

  /// [reference]
  /// A reference to a specific resource that defines which resources are
  /// covered by this consent.
  final Reference reference;
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

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('meaning', meaning);
    json['reference'] = reference.toJson();

    return json;
  }

  @override
  ConsentData clone() => throw UnimplementedError();
  @override
  ConsentData copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ConsentDataMeaning? meaning,
    Reference? reference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ConsentData(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      meaning: meaning ?? this.meaning,
      reference: reference ?? this.reference,
    );
  }
}
