import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'consent.g.dart';

/// [Consent] /// A record of a healthcare consumer’s choices, which permits or denies
/// identified recipient(s) or recipient role(s) to perform one or more actions
/// within a given policy context, for specific purposes and periods of time.
@JsonSerializable()
class Consent extends DomainResource {
  Consent({
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
    required this.scope,
    required this.category,
    this.patient,
    this.dateTime,
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
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.Consent);
  @override
  String get fhirType => 'Consent';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique identifier for this copy of the Consent Statement.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// Indicates the current state of this consent.
  @JsonKey(name: 'status')
  final ConsentState status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [scope] /// A selector of the type of consent being presented: ADR, Privacy, Treatment,
  /// Research. This list is now extensible.
  @JsonKey(name: 'scope')
  final ConsentScopeCodes scope;

  /// [category] /// A classification of the type of consents found in the statement. This
  /// element supports indexing and retrieval of consent statements.
  @JsonKey(name: 'category')
  final List<ConsentCategoryCodes> category;

  /// [patient] /// The patient/healthcare consumer to whom this consent applies.
  @JsonKey(name: 'patient')
  final Reference? patient;

  /// [dateTime] /// When this Consent was issued / created / indexed.
  @JsonKey(name: 'dateTime')
  final FhirDateTime? dateTime;
  @JsonKey(name: '_dateTime')
  final Element? dateTimeElement;

  /// [performer] /// Either the Grantor, which is the entity responsible for granting the rights
  /// listed in a Consent Directive or the Grantee, which is the entity
  /// responsible for complying with the Consent Directive, including any
  /// obligations or limitations on authorizations and enforcement of
  /// prohibitions.
  @JsonKey(name: 'performer')
  final List<Reference>? performer;

  /// [organization] /// The organization that manages the consent, and the framework within which
  /// it is executed.
  @JsonKey(name: 'organization')
  final List<Reference>? organization;

  /// [sourceAttachment] /// The source on which this consent statement is based. The source might be a
  /// scanned original paper form, or a reference to a consent that links back to
  /// such a source, a reference to a document repository (e.g. XDS) that stores
  /// the original consent document.
  @JsonKey(name: 'sourceAttachment')
  final Attachment? sourceAttachment;

  /// [sourceReference] /// The source on which this consent statement is based. The source might be a
  /// scanned original paper form, or a reference to a consent that links back to
  /// such a source, a reference to a document repository (e.g. XDS) that stores
  /// the original consent document.
  @JsonKey(name: 'sourceReference')
  final Reference? sourceReference;

  /// [policy] /// The references to the policies that are included in this consent scope.
  /// Policies may be organizational, but are often defined jurisdictionally, or
  /// in law.
  @JsonKey(name: 'policy')
  final List<ConsentPolicy>? policy;

  /// [verification] /// Whether a treatment instruction (e.g. artificial respiration yes or no) was
  /// verified with the patient, his/her family or another authorized person.
  @JsonKey(name: 'verification')
  final List<ConsentVerification>? verification;

  /// [provision] /// An exception to the base policy of this consent. An exception can be an
  /// addition or removal of access permissions.
  @JsonKey(name: 'provision')
  final ConsentProvision? provision;
  factory Consent.fromJson(Map<String, dynamic> json) =>
      _$ConsentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ConsentToJson(this);

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
    ConsentScopeCodes? scope,
    List<ConsentCategoryCodes>? category,
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

  factory Consent.fromYaml(dynamic yaml) => yaml is String
      ? Consent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Consent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Consent cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Consent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Consent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ConsentPolicy] /// The references to the policies that are included in this consent scope.
/// Policies may be organizational, but are often defined jurisdictionally, or
/// in law.
@JsonSerializable()
class ConsentPolicy extends BackboneElement {
  ConsentPolicy({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.authority,
    this.authorityElement,
    this.uri,
    this.uriElement,
    this.policyRule,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ConsentPolicy';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [authority] /// Entity or Organization having regulatory jurisdiction or accountability for
  /// enforcing policies pertaining to Consent Directives.
  @JsonKey(name: 'authority')
  final FhirUri? authority;
  @JsonKey(name: '_authority')
  final Element? authorityElement;

  /// [uri] /// The references to the policies that are included in this consent scope.
  /// Policies may be organizational, but are often defined jurisdictionally, or
  /// in law.
  @JsonKey(name: 'uri')
  final FhirUri? uri;
  @JsonKey(name: '_uri')
  final Element? uriElement;

  /// [policyRule] /// A reference to the specific base computable regulation or policy.
  @JsonKey(name: 'policyRule')
  final ConsentPolicyRuleCodes? policyRule;
  factory ConsentPolicy.fromJson(Map<String, dynamic> json) =>
      _$ConsentPolicyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ConsentPolicyToJson(this);

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
    ConsentPolicyRuleCodes? policyRule,
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

  factory ConsentPolicy.fromYaml(dynamic yaml) => yaml is String
      ? ConsentPolicy.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ConsentPolicy.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ConsentPolicy cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ConsentPolicy.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConsentPolicy.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ConsentVerification] /// Whether a treatment instruction (e.g. artificial respiration yes or no) was
/// verified with the patient, his/her family or another authorized person.
@JsonSerializable()
class ConsentVerification extends BackboneElement {
  ConsentVerification({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.verified,
    this.verifiedElement,
    this.verifiedWith,
    this.verificationDate,
    this.verificationDateElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ConsentVerification';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [verified] /// Has the instruction been verified.
  @JsonKey(name: 'verified')
  final FhirBoolean verified;
  @JsonKey(name: '_verified')
  final Element? verifiedElement;

  /// [verifiedWith] /// Who verified the instruction (Patient, Relative or other Authorized
  /// Person).
  @JsonKey(name: 'verifiedWith')
  final Reference? verifiedWith;

  /// [verificationDate] /// Date verification was collected.
  @JsonKey(name: 'verificationDate')
  final FhirDateTime? verificationDate;
  @JsonKey(name: '_verificationDate')
  final Element? verificationDateElement;
  factory ConsentVerification.fromJson(Map<String, dynamic> json) =>
      _$ConsentVerificationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ConsentVerificationToJson(this);

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

  factory ConsentVerification.fromYaml(dynamic yaml) => yaml is String
      ? ConsentVerification.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ConsentVerification.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ConsentVerification cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ConsentVerification.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConsentVerification.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ConsentProvision] /// An exception to the base policy of this consent. An exception can be an
/// addition or removal of access permissions.
@JsonSerializable()
class ConsentProvision extends BackboneElement {
  ConsentProvision({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
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
  @override
  String get fhirType => 'ConsentProvision';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Action to take - permit or deny - when the rule conditions are met. Not
  /// permitted in root rule, required in all nested rules.
  @JsonKey(name: 'type')
  final ConsentProvisionType? type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [period] /// The timeframe in this rule is valid.
  @JsonKey(name: 'period')
  final Period? period;

  /// [actor] /// Who or what is controlled by this rule. Use group to identify a set of
  /// actors by some property they share (e.g. 'admitting officers').
  @JsonKey(name: 'actor')
  final List<ConsentActor>? actor;

  /// [action] /// Actions controlled by this Rule.
  @JsonKey(name: 'action')
  final List<ConsentActionCodes>? action;

  /// [securityLabel] /// A security label, comprised of 0..* security label fields (Privacy tags),
  /// which define which resources are controlled by this exception.
  @JsonKey(name: 'securityLabel')
  final List<Coding>? securityLabel;

  /// [purpose] /// The context of the activities a user is taking - why the user is accessing
  /// the data - that are controlled by this rule.
  @JsonKey(name: 'purpose')
  final List<Coding>? purpose;

  /// [class_] /// The class of information covered by this rule. The type can be a FHIR
  /// resource type, a profile on a type, or a CDA document, or some other type
  /// that indicates what sort of information the consent relates to.
  @JsonKey(name: 'class')
  final List<ConsentContentClass>? class_;

  /// [code] /// If this code is found in an instance, then the rule applies.
  @JsonKey(name: 'code')
  final List<CodeableConcept>? code;

  /// [dataPeriod] /// Clinical or Operational Relevant period of time that bounds the data
  /// controlled by this rule.
  @JsonKey(name: 'dataPeriod')
  final Period? dataPeriod;

  /// [data] /// The resources controlled by this rule if specific resources are referenced.
  @JsonKey(name: 'data')
  final List<ConsentData>? data;

  /// [provision] /// Rules which provide exceptions to the base rule or subrules.
  @JsonKey(name: 'provision')
  final List<ConsentProvision>? provision;
  factory ConsentProvision.fromJson(Map<String, dynamic> json) =>
      _$ConsentProvisionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ConsentProvisionToJson(this);

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
    List<ConsentActionCodes>? action,
    List<Coding>? securityLabel,
    List<Coding>? purpose,
    List<ConsentContentClass>? class_,
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

  factory ConsentProvision.fromYaml(dynamic yaml) => yaml is String
      ? ConsentProvision.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ConsentProvision.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ConsentProvision cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ConsentProvision.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConsentProvision.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ConsentActor] /// Who or what is controlled by this rule. Use group to identify a set of
/// actors by some property they share (e.g. 'admitting officers').
@JsonSerializable()
class ConsentActor extends BackboneElement {
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
  @override
  String get fhirType => 'ConsentActor';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [role] /// How the individual is involved in the resources content that is described
  /// in the exception.
  @JsonKey(name: 'role')
  final SecurityRoleType role;

  /// [reference] /// The resource that identifies the actor. To identify actors by type, use
  /// group to identify a set of actors by some property they share (e.g.
  /// 'admitting officers').
  @JsonKey(name: 'reference')
  final Reference reference;
  factory ConsentActor.fromJson(Map<String, dynamic> json) =>
      _$ConsentActorFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ConsentActorToJson(this);

  @override
  ConsentActor clone() => throw UnimplementedError();
  @override
  ConsentActor copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    SecurityRoleType? role,
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

  factory ConsentActor.fromYaml(dynamic yaml) => yaml is String
      ? ConsentActor.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ConsentActor.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ConsentActor cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ConsentActor.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConsentActor.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ConsentData] /// The resources controlled by this rule if specific resources are referenced.
@JsonSerializable()
class ConsentData extends BackboneElement {
  ConsentData({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.meaning,
    this.meaningElement,
    required this.reference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ConsentData';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [meaning] /// How the resource reference is interpreted when testing consent
  /// restrictions.
  @JsonKey(name: 'meaning')
  final ConsentDataMeaning meaning;
  @JsonKey(name: '_meaning')
  final Element? meaningElement;

  /// [reference] /// A reference to a specific resource that defines which resources are covered
  /// by this consent.
  @JsonKey(name: 'reference')
  final Reference reference;
  factory ConsentData.fromJson(Map<String, dynamic> json) =>
      _$ConsentDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ConsentDataToJson(this);

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

  factory ConsentData.fromYaml(dynamic yaml) => yaml is String
      ? ConsentData.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ConsentData.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ConsentData cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ConsentData.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ConsentData.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
