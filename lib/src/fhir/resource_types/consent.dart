import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Consent]
/// A record of a healthcare consumer’s choices, which permits or denies
/// identified recipient(s) or recipient role(s) to perform one or more
/// actions within a given policy context, for specific purposes and
/// periods of time.
class Consent extends DomainResource {
  /// Primary constructor for [Consent]

  Consent({
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
    required this.scope,
    required this.category,
    this.patient,
    this.dateTime,

    /// Extensions for [dateTime]
    this.dateTimeElement,
    this.performer,
    this.organization,
    this.sourceAttachment,
    this.sourceReference,
    this.policy,
    this.verification,
    this.provision,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Consent,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Consent.fromJson(Map<String, dynamic> json) {
    return Consent(
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
      status: ConsentState.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(
              json['_status'] as Map<String, dynamic>,
            )
          : null,
      scope: CodeableConcept.fromJson(
        json['scope'] as Map<String, dynamic>,
      ),
      category: (json['category'] as List<dynamic>)
          .map<CodeableConcept>((dynamic v) =>
              CodeableConcept.fromJson(v as Map<String, dynamic>))
          .toList(),
      patient: json['patient'] != null
          ? Reference.fromJson(
              json['patient'] as Map<String, dynamic>,
            )
          : null,
      dateTime: json['dateTime'] != null
          ? FhirDateTime.fromJson(json['dateTime'])
          : null,
      dateTimeElement: json['_dateTime'] != null
          ? Element.fromJson(
              json['_dateTime'] as Map<String, dynamic>,
            )
          : null,
      performer: json['performer'] != null
          ? (json['performer'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      organization: json['organization'] != null
          ? (json['organization'] as List<dynamic>)
              .map<Reference>(
                (dynamic v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      sourceAttachment: json['sourceAttachment'] != null
          ? Attachment.fromJson(
              json['sourceAttachment'] as Map<String, dynamic>,
            )
          : null,
      sourceReference: json['sourceReference'] != null
          ? Reference.fromJson(
              json['sourceReference'] as Map<String, dynamic>,
            )
          : null,
      policy: json['policy'] != null
          ? (json['policy'] as List<dynamic>)
              .map<ConsentPolicy>(
                (dynamic v) => ConsentPolicy.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      verification: json['verification'] != null
          ? (json['verification'] as List<dynamic>)
              .map<ConsentVerification>(
                (dynamic v) => ConsentVerification.fromJson(
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

  /// Deserialize [Consent] from a [String] or [YamlMap] object
  factory Consent.fromYaml(dynamic yaml) => yaml is String
      ? Consent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Consent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Consent cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Consent] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Consent.fromJsonString(String source) {
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

  /// Extensions for [status]
  final Element? statusElement;

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

  /// Extensions for [dateTime]
  final Element? dateTimeElement;

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

  /// [sourceAttachment]
  /// The source on which this consent statement is based. The source might
  /// be a scanned original paper form, or a reference to a consent that
  /// links back to such a source, a reference to a document repository (e.g.
  /// XDS) that stores the original consent document.
  final Attachment? sourceAttachment;

  /// [sourceReference]
  /// The source on which this consent statement is based. The source might
  /// be a scanned original paper form, or a reference to a consent that
  /// links back to such a source, a reference to a document repository (e.g.
  /// XDS) that stores the original consent document.
  final Reference? sourceReference;

  /// [policy]
  /// The references to the policies that are included in this consent scope.
  /// Policies may be organizational, but are often defined jurisdictionally,
  /// or in law.
  final List<ConsentPolicy>? policy;

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
    json['scope'] = scope.toJson();
    json['category'] =
        category.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    if (patient != null) {
      json['patient'] = patient!.toJson();
    }
    if (dateTime?.value != null) {
      json['dateTime'] = dateTime!.toJson();
    }
    if (dateTimeElement != null) {
      json['_dateTime'] = dateTimeElement!.toJson();
    }
    if (performer != null && performer!.isNotEmpty) {
      json['performer'] = performer!.map((Reference v) => v.toJson()).toList();
    }
    if (organization != null && organization!.isNotEmpty) {
      json['organization'] =
          organization!.map((Reference v) => v.toJson()).toList();
    }
    if (sourceAttachment != null) {
      json['sourceAttachment'] = sourceAttachment!.toJson();
    }
    if (sourceReference != null) {
      json['sourceReference'] = sourceReference!.toJson();
    }
    if (policy != null && policy!.isNotEmpty) {
      json['policy'] = policy!.map((ConsentPolicy v) => v.toJson()).toList();
    }
    if (verification != null && verification!.isNotEmpty) {
      json['verification'] =
          verification!.map((ConsentVerification v) => v.toJson()).toList();
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
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ConsentState? status,
    Element? statusElement,
    CodeableConcept? scope,
    List<CodeableConcept>? category,
    Reference? patient,
    FhirDateTime? dateTime,
    Element? dateTimeElement,
    List<Reference>? performer,
    List<Reference>? organization,
    Attachment? sourceAttachment,
    Reference? sourceReference,
    List<ConsentPolicy>? policy,
    List<ConsentVerification>? verification,
    ConsentProvision? provision,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Consent(
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
      scope: scope ?? this.scope,
      category: category ?? this.category,
      patient: patient ?? this.patient,
      dateTime: dateTime ?? this.dateTime,
      dateTimeElement: dateTimeElement ?? this.dateTimeElement,
      performer: performer ?? this.performer,
      organization: organization ?? this.organization,
      sourceAttachment: sourceAttachment ?? this.sourceAttachment,
      sourceReference: sourceReference ?? this.sourceReference,
      policy: policy ?? this.policy,
      verification: verification ?? this.verification,
      provision: provision ?? this.provision,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ConsentPolicy]
/// The references to the policies that are included in this consent scope.
/// Policies may be organizational, but are often defined jurisdictionally,
/// or in law.
class ConsentPolicy extends BackboneElement {
  /// Primary constructor for [ConsentPolicy]

  ConsentPolicy({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.authority,

    /// Extensions for [authority]
    this.authorityElement,
    this.uri,

    /// Extensions for [uri]
    this.uriElement,
    this.policyRule,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentPolicy.fromJson(Map<String, dynamic> json) {
    return ConsentPolicy(
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
      authority: json['authority'] != null
          ? FhirUri.fromJson(json['authority'])
          : null,
      authorityElement: json['_authority'] != null
          ? Element.fromJson(
              json['_authority'] as Map<String, dynamic>,
            )
          : null,
      uri: json['uri'] != null ? FhirUri.fromJson(json['uri']) : null,
      uriElement: json['_uri'] != null
          ? Element.fromJson(
              json['_uri'] as Map<String, dynamic>,
            )
          : null,
      policyRule: json['policyRule'] != null
          ? CodeableConcept.fromJson(
              json['policyRule'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ConsentPolicy] from a [String] or [YamlMap] object
  factory ConsentPolicy.fromYaml(dynamic yaml) => yaml is String
      ? ConsentPolicy.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ConsentPolicy.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ConsentPolicy cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ConsentPolicy] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentPolicy.fromJsonString(String source) {
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

  /// Extensions for [authority]
  final Element? authorityElement;

  /// [uri]
  /// The references to the policies that are included in this consent scope.
  /// Policies may be organizational, but are often defined jurisdictionally,
  /// or in law.
  final FhirUri? uri;

  /// Extensions for [uri]
  final Element? uriElement;

  /// [policyRule]
  /// A reference to the specific base computable regulation or policy.
  final CodeableConcept? policyRule;
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
    if (authority?.value != null) {
      json['authority'] = authority!.toJson();
    }
    if (authorityElement != null) {
      json['_authority'] = authorityElement!.toJson();
    }
    if (uri?.value != null) {
      json['uri'] = uri!.toJson();
    }
    if (uriElement != null) {
      json['_uri'] = uriElement!.toJson();
    }
    if (policyRule != null) {
      json['policyRule'] = policyRule!.toJson();
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
    Element? authorityElement,
    FhirUri? uri,
    Element? uriElement,
    CodeableConcept? policyRule,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ConsentPolicy(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      authority: authority ?? this.authority,
      authorityElement: authorityElement ?? this.authorityElement,
      uri: uri ?? this.uri,
      uriElement: uriElement ?? this.uriElement,
      policyRule: policyRule ?? this.policyRule,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ConsentVerification]
/// Whether a treatment instruction (e.g. artificial respiration yes or no)
/// was verified with the patient, his/her family or another authorized
/// person.
class ConsentVerification extends BackboneElement {
  /// Primary constructor for [ConsentVerification]

  ConsentVerification({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.verified,

    /// Extensions for [verified]
    this.verifiedElement,
    this.verifiedWith,
    this.verificationDate,

    /// Extensions for [verificationDate]
    this.verificationDateElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentVerification.fromJson(Map<String, dynamic> json) {
    return ConsentVerification(
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
      verified: FhirBoolean.fromJson(json['verified']),
      verifiedElement: json['_verified'] != null
          ? Element.fromJson(
              json['_verified'] as Map<String, dynamic>,
            )
          : null,
      verifiedWith: json['verifiedWith'] != null
          ? Reference.fromJson(
              json['verifiedWith'] as Map<String, dynamic>,
            )
          : null,
      verificationDate: json['verificationDate'] != null
          ? FhirDateTime.fromJson(json['verificationDate'])
          : null,
      verificationDateElement: json['_verificationDate'] != null
          ? Element.fromJson(
              json['_verificationDate'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ConsentVerification] from a [String] or [YamlMap] object
  factory ConsentVerification.fromYaml(dynamic yaml) => yaml is String
      ? ConsentVerification.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ConsentVerification.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ConsentVerification cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ConsentVerification] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentVerification.fromJsonString(String source) {
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

  /// Extensions for [verified]
  final Element? verifiedElement;

  /// [verifiedWith]
  /// Who verified the instruction (Patient, Relative or other Authorized
  /// Person).
  final Reference? verifiedWith;

  /// [verificationDate]
  /// Date verification was collected.
  final FhirDateTime? verificationDate;

  /// Extensions for [verificationDate]
  final Element? verificationDateElement;
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
    json['verified'] = verified.toJson();
    if (verifiedElement != null) {
      json['_verified'] = verifiedElement!.toJson();
    }
    if (verifiedWith != null) {
      json['verifiedWith'] = verifiedWith!.toJson();
    }
    if (verificationDate?.value != null) {
      json['verificationDate'] = verificationDate!.toJson();
    }
    if (verificationDateElement != null) {
      json['_verificationDate'] = verificationDateElement!.toJson();
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
    Element? verifiedElement,
    Reference? verifiedWith,
    FhirDateTime? verificationDate,
    Element? verificationDateElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ConsentVerification(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      verified: verified ?? this.verified,
      verifiedElement: verifiedElement ?? this.verifiedElement,
      verifiedWith: verifiedWith ?? this.verifiedWith,
      verificationDate: verificationDate ?? this.verificationDate,
      verificationDateElement:
          verificationDateElement ?? this.verificationDateElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ConsentProvision]
/// An exception to the base policy of this consent. An exception can be an
/// addition or removal of access permissions.
class ConsentProvision extends BackboneElement {
  /// Primary constructor for [ConsentProvision]

  ConsentProvision({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,

    /// Extensions for [type]
    this.typeElement,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentProvision.fromJson(Map<String, dynamic> json) {
    return ConsentProvision(
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
      type: json['type'] != null
          ? ConsentProvisionType.fromJson(json['type'])
          : null,
      typeElement: json['_type'] != null
          ? Element.fromJson(
              json['_type'] as Map<String, dynamic>,
            )
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
      actor: json['actor'] != null
          ? (json['actor'] as List<dynamic>)
              .map<ConsentActor>(
                (dynamic v) => ConsentActor.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      action: json['action'] != null
          ? (json['action'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      securityLabel: json['securityLabel'] != null
          ? (json['securityLabel'] as List<dynamic>)
              .map<Coding>(
                (dynamic v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      purpose: json['purpose'] != null
          ? (json['purpose'] as List<dynamic>)
              .map<Coding>(
                (dynamic v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      class_: json['class'] != null
          ? (json['class'] as List<dynamic>)
              .map<Coding>(
                (dynamic v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<CodeableConcept>(
                (dynamic v) => CodeableConcept.fromJson(
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
                (dynamic v) => ConsentData.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      provision: json['provision'] != null
          ? (json['provision'] as List<dynamic>)
              .map<ConsentProvision>(
                (dynamic v) => ConsentProvision.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ConsentProvision] from a [String] or [YamlMap] object
  factory ConsentProvision.fromYaml(dynamic yaml) => yaml is String
      ? ConsentProvision.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ConsentProvision.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ConsentProvision cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ConsentProvision] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentProvision.fromJsonString(String source) {
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

  /// Extensions for [type]
  final Element? typeElement;

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
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (period != null) {
      json['period'] = period!.toJson();
    }
    if (actor != null && actor!.isNotEmpty) {
      json['actor'] = actor!.map((ConsentActor v) => v.toJson()).toList();
    }
    if (action != null && action!.isNotEmpty) {
      json['action'] = action!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (securityLabel != null && securityLabel!.isNotEmpty) {
      json['securityLabel'] =
          securityLabel!.map((Coding v) => v.toJson()).toList();
    }
    if (purpose != null && purpose!.isNotEmpty) {
      json['purpose'] = purpose!.map((Coding v) => v.toJson()).toList();
    }
    if (class_ != null && class_!.isNotEmpty) {
      json['class'] = class_!.map((Coding v) => v.toJson()).toList();
    }
    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map((CodeableConcept v) => v.toJson()).toList();
    }
    if (dataPeriod != null) {
      json['dataPeriod'] = dataPeriod!.toJson();
    }
    if (data != null && data!.isNotEmpty) {
      json['data'] = data!.map((ConsentData v) => v.toJson()).toList();
    }
    if (provision != null && provision!.isNotEmpty) {
      json['provision'] =
          provision!.map((ConsentProvision v) => v.toJson()).toList();
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
    Element? typeElement,
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ConsentProvision(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ConsentActor]
/// Who or what is controlled by this rule. Use group to identify a set of
/// actors by some property they share (e.g. 'admitting officers').
class ConsentActor extends BackboneElement {
  /// Primary constructor for [ConsentActor]

  ConsentActor({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.role,
    required this.reference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentActor.fromJson(Map<String, dynamic> json) {
    return ConsentActor(
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
      role: CodeableConcept.fromJson(
        json['role'] as Map<String, dynamic>,
      ),
      reference: Reference.fromJson(
        json['reference'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [ConsentActor] from a [String] or [YamlMap] object
  factory ConsentActor.fromYaml(dynamic yaml) => yaml is String
      ? ConsentActor.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ConsentActor.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ConsentActor cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ConsentActor] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentActor.fromJsonString(String source) {
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ConsentActor(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      reference: reference ?? this.reference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ConsentData]
/// The resources controlled by this rule if specific resources are
/// referenced.
class ConsentData extends BackboneElement {
  /// Primary constructor for [ConsentData]

  ConsentData({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.meaning,

    /// Extensions for [meaning]
    this.meaningElement,
    required this.reference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentData.fromJson(Map<String, dynamic> json) {
    return ConsentData(
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
      meaning: ConsentDataMeaning.fromJson(json['meaning']),
      meaningElement: json['_meaning'] != null
          ? Element.fromJson(
              json['_meaning'] as Map<String, dynamic>,
            )
          : null,
      reference: Reference.fromJson(
        json['reference'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [ConsentData] from a [String] or [YamlMap] object
  factory ConsentData.fromYaml(dynamic yaml) => yaml is String
      ? ConsentData.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ConsentData.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ConsentData cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ConsentData] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentData.fromJsonString(String source) {
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

  /// Extensions for [meaning]
  final Element? meaningElement;

  /// [reference]
  /// A reference to a specific resource that defines which resources are
  /// covered by this consent.
  final Reference reference;
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
    json['meaning'] = meaning.toJson();
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
    Element? meaningElement,
    Reference? reference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ConsentData(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      meaning: meaning ?? this.meaning,
      meaningElement: meaningElement ?? this.meaningElement,
      reference: reference ?? this.reference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
