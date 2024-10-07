import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Consent extends DomainResource {
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
  final List<BackboneElement>? policy;
  final List<BackboneElement>? verification;
  final BackboneElement? provision;
  final List<BackboneElement>? actor;
  final List<BackboneElement>? data;

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
    this.actor,
    this.data,
  }) : super(resourceType: R4ResourceType.Consent);

@override
Consent clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ConsentPolicy extends BackboneElement {
  final FhirUri? authority;
  final Element? authorityElement;
  final FhirUri? uri;
  final Element? uriElement;
  final CodeableConcept? policyRule;

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

@override
ConsentPolicy clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ConsentVerification extends BackboneElement {
  final FhirBoolean verified;
  final Element? verifiedElement;
  final Reference? verifiedWith;
  final FhirDateTime? verificationDate;
  final Element? verificationDateElement;

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

@override
ConsentVerification clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ConsentProvision extends BackboneElement {
  final FhirCode? type;
  final Element? typeElement;
  final Period? period;
  final List<CodeableConcept>? action;
  final List<Coding>? securityLabel;
  final List<Coding>? purpose;
  final List<Coding>? class_;
  final List<CodeableConcept>? code;
  final Period? dataPeriod;
  final List<dynamic>? provision;

  ConsentProvision({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
this.typeElement,
    this.period,
    this.action,
    this.securityLabel,
    this.purpose,
    this.class_,
    this.code,
    this.dataPeriod,
    this.provision,
  });

@override
ConsentProvision clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ConsentActor extends BackboneElement {
  final CodeableConcept role;
  final Reference reference;

  ConsentActor({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.role,
    required this.reference,
  });

@override
ConsentActor clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ConsentData extends BackboneElement {
  final FhirCode meaning;
  final Element? meaningElement;
  final Reference reference;

  ConsentData({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.meaning,
this.meaningElement,
    required this.reference,
  });

@override
ConsentData clone() => throw UnimplementedError();
}

