import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Consent extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode? status;
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
  final CodeableConcept? policyRule;
  final List<ConsentVerification>? verification;
  final ConsentProvision? provision;

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
    this.status,
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
    this.policyRule,
    this.verification,
    this.provision,
  }): super(resourceType: R4ResourceType.Consent);

@override
Consent clone() => this;

}


@Data()
@JsonCodable()
class ConsentPolicy {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirUri? authority;
  final Element? authorityElement;
  final FhirUri? uri;
  final Element? uriElement;

  ConsentPolicy({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.authority,
    this.authorityElement,
    this.uri,
    this.uriElement,
  });

}


@Data()
@JsonCodable()
class ConsentVerification {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirBoolean? verified;
  final Element? verifiedElement;
  final Reference? verifiedWith;
  final FhirDateTime? verificationDate;
  final Element? verificationDateElement;

  ConsentVerification({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.verified,
    this.verifiedElement,
    this.verifiedWith,
    this.verificationDate,
    this.verificationDateElement,
  });

}


@Data()
@JsonCodable()
class ConsentProvision {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
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

  ConsentProvision({
    this.id,
    this.extension_,
    this.modifierExtension,
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

}


@Data()
@JsonCodable()
class ConsentActor {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept role;
  final Reference reference;

  ConsentActor({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.role,
    required this.reference,
  });

}


@Data()
@JsonCodable()
class ConsentData {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? meaning;
  final Element? meaningElement;
  final Reference reference;

  ConsentData({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.meaning,
    this.meaningElement,
    required this.reference,
  });

}



