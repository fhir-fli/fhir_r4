import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
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

  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final CodeableConcept scope;
  final List<CodeableConcept> category;
  final Reference? patient;
  final FhirDateTime? dateTime;
  final Element? dateTimeElement;
  final List<Reference>? performer;
  final List<Reference>? organization;
  final Attachment? sourceAttachment;
  final Reference? sourceReference;
  final List<ConsentPolicy>? policy;
  final List<ConsentVerification>? verification;
  final ConsentProvision? provision;
  @override
  Consent clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
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

  final FhirUri? authority;
  final Element? authorityElement;
  final FhirUri? uri;
  final Element? uriElement;
  final CodeableConcept? policyRule;
  @override
  ConsentPolicy clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
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

  final FhirBoolean verified;
  final Element? verifiedElement;
  final Reference? verifiedWith;
  final FhirDateTime? verificationDate;
  final Element? verificationDateElement;
  @override
  ConsentVerification clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
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

  final FhirCode? type;
  final Element? typeElement;
  final Period? period;
  final List<ConsentActor>? actor;
  final List<CodeableConcept>? action;
  final List<Coding>? securityLabel;
  final List<Coding>? purpose;
  final List<Coding>? class_;
  final List<CodeableConcept>? code;
  final Period? dataPeriod;
  final List<ConsentData>? data;
  final List<ConsentProvision>? provision;
  @override
  ConsentProvision clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class ConsentActor extends BackboneElement {
  ConsentActor({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.role,
    required this.reference,
  });

  final CodeableConcept role;
  final Reference reference;
  @override
  ConsentActor clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class ConsentData extends BackboneElement {
  ConsentData({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.meaning,
    this.meaningElement,
    required this.reference,
  });

  final FhirCode meaning;
  final Element? meaningElement;
  final Reference reference;
  @override
  ConsentData clone() => throw UnimplementedError();
}
