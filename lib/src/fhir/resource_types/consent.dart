import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Consent] /// A record of a healthcare consumer’s choices, which permits or denies
/// identified recipient(s) or recipient role(s) to perform one or more actions
/// within a given policy context, for specific purposes and periods of time.
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
  }) : super(resourceType: R4ResourceType.Consent);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique identifier for this copy of the Consent Statement.
  final List<Identifier>? identifier;

  /// [status] /// Indicates the current state of this consent.
  final FhirCode status;
  final Element? statusElement;

  /// [scope] /// A selector of the type of consent being presented: ADR, Privacy, Treatment,
  /// Research. This list is now extensible.
  final CodeableConcept scope;

  /// [category] /// A classification of the type of consents found in the statement. This
  /// element supports indexing and retrieval of consent statements.
  final List<CodeableConcept> category;

  /// [patient] /// The patient/healthcare consumer to whom this consent applies.
  final Reference? patient;

  /// [dateTime] /// When this Consent was issued / created / indexed.
  final FhirDateTime? dateTime;
  final Element? dateTimeElement;

  /// [performer] /// Either the Grantor, which is the entity responsible for granting the rights
  /// listed in a Consent Directive or the Grantee, which is the entity
  /// responsible for complying with the Consent Directive, including any
  /// obligations or limitations on authorizations and enforcement of
  /// prohibitions.
  final List<Reference>? performer;

  /// [organization] /// The organization that manages the consent, and the framework within which
  /// it is executed.
  final List<Reference>? organization;

  /// [sourceAttachment] /// The source on which this consent statement is based. The source might be a
  /// scanned original paper form, or a reference to a consent that links back to
  /// such a source, a reference to a document repository (e.g. XDS) that stores
  /// the original consent document.
  final Attachment? sourceAttachment;

  /// [sourceReference] /// The source on which this consent statement is based. The source might be a
  /// scanned original paper form, or a reference to a consent that links back to
  /// such a source, a reference to a document repository (e.g. XDS) that stores
  /// the original consent document.
  final Reference? sourceReference;

  /// [policy] /// The references to the policies that are included in this consent scope.
  /// Policies may be organizational, but are often defined jurisdictionally, or
  /// in law.
  final List<ConsentPolicy>? policy;

  /// [verification] /// Whether a treatment instruction (e.g. artificial respiration yes or no) was
  /// verified with the patient, his/her family or another authorized person.
  final List<ConsentVerification>? verification;

  /// [provision] /// An exception to the base policy of this consent. An exception can be an
  /// addition or removal of access permissions.
  final ConsentProvision? provision;
  @override
  Consent clone() => throw UnimplementedError();
  Consent copy({
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ConsentPolicy] /// The references to the policies that are included in this consent scope.
/// Policies may be organizational, but are often defined jurisdictionally, or
/// in law.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [authority] /// Entity or Organization having regulatory jurisdiction or accountability for
  /// enforcing policies pertaining to Consent Directives.
  final FhirUri? authority;
  final Element? authorityElement;

  /// [uri] /// The references to the policies that are included in this consent scope.
  /// Policies may be organizational, but are often defined jurisdictionally, or
  /// in law.
  final FhirUri? uri;
  final Element? uriElement;

  /// [policyRule] /// A reference to the specific base computable regulation or policy.
  final CodeableConcept? policyRule;
  @override
  ConsentPolicy clone() => throw UnimplementedError();
  ConsentPolicy copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? authority,
    Element? authorityElement,
    FhirUri? uri,
    Element? uriElement,
    CodeableConcept? policyRule,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ConsentVerification] /// Whether a treatment instruction (e.g. artificial respiration yes or no) was
/// verified with the patient, his/her family or another authorized person.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [verified] /// Has the instruction been verified.
  final FhirBoolean verified;
  final Element? verifiedElement;

  /// [verifiedWith] /// Who verified the instruction (Patient, Relative or other Authorized
  /// Person).
  final Reference? verifiedWith;

  /// [verificationDate] /// Date verification was collected.
  final FhirDateTime? verificationDate;
  final Element? verificationDateElement;
  @override
  ConsentVerification clone() => throw UnimplementedError();
  ConsentVerification copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? verified,
    Element? verifiedElement,
    Reference? verifiedWith,
    FhirDateTime? verificationDate,
    Element? verificationDateElement,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ConsentProvision] /// An exception to the base policy of this consent. An exception can be an
/// addition or removal of access permissions.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Action to take - permit or deny - when the rule conditions are met. Not
  /// permitted in root rule, required in all nested rules.
  final FhirCode? type;
  final Element? typeElement;

  /// [period] /// The timeframe in this rule is valid.
  final Period? period;

  /// [actor] /// Who or what is controlled by this rule. Use group to identify a set of
  /// actors by some property they share (e.g. 'admitting officers').
  final List<ConsentActor>? actor;

  /// [action] /// Actions controlled by this Rule.
  final List<CodeableConcept>? action;

  /// [securityLabel] /// A security label, comprised of 0..* security label fields (Privacy tags),
  /// which define which resources are controlled by this exception.
  final List<Coding>? securityLabel;

  /// [purpose] /// The context of the activities a user is taking - why the user is accessing
  /// the data - that are controlled by this rule.
  final List<Coding>? purpose;

  /// [class_] /// The class of information covered by this rule. The type can be a FHIR
  /// resource type, a profile on a type, or a CDA document, or some other type
  /// that indicates what sort of information the consent relates to.
  final List<Coding>? class_;

  /// [code] /// If this code is found in an instance, then the rule applies.
  final List<CodeableConcept>? code;

  /// [dataPeriod] /// Clinical or Operational Relevant period of time that bounds the data
  /// controlled by this rule.
  final Period? dataPeriod;

  /// [data] /// The resources controlled by this rule if specific resources are referenced.
  final List<ConsentData>? data;

  /// [provision] /// Rules which provide exceptions to the base rule or subrules.
  final List<ConsentProvision>? provision;
  @override
  ConsentProvision clone() => throw UnimplementedError();
  ConsentProvision copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ConsentActor] /// Who or what is controlled by this rule. Use group to identify a set of
/// actors by some property they share (e.g. 'admitting officers').
class ConsentActor extends BackboneElement {
  ConsentActor({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.role,
    required this.reference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [role] /// How the individual is involved in the resources content that is described
  /// in the exception.
  final CodeableConcept role;

  /// [reference] /// The resource that identifies the actor. To identify actors by type, use
  /// group to identify a set of actors by some property they share (e.g.
  /// 'admitting officers').
  final Reference reference;
  @override
  ConsentActor clone() => throw UnimplementedError();
  ConsentActor copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? role,
    Reference? reference,
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

@JsonCodable()
@Data()
@Entity()

/// [ConsentData] /// The resources controlled by this rule if specific resources are referenced.
class ConsentData extends BackboneElement {
  ConsentData({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.meaning,
    this.meaningElement,
    required this.reference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [meaning] /// How the resource reference is interpreted when testing consent
  /// restrictions.
  final FhirCode meaning;
  final Element? meaningElement;

  /// [reference] /// A reference to a specific resource that defines which resources are covered
  /// by this consent.
  final Reference reference;
  @override
  ConsentData clone() => throw UnimplementedError();
  ConsentData copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? meaning,
    Element? meaningElement,
    Reference? reference,
  }) {
    return ConsentData(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      meaning: meaning ?? this.meaning,
      meaningElement: meaningElement ?? this.meaningElement,
      reference: reference ?? this.reference,
    );
  }
}
