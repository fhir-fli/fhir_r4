import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Consent {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept scope;
  final List<CodeableConcept> category;
  final Reference patient;
  final FhirDateTime dateTime;
  final PrimitiveElement dateTimeElement;
  final List<Reference> performer;
  final List<Reference> organization;
  final Attachment sourceAttachment;
  final Reference sourceReference;
  final List<ConsentPolicy> policy;
  final CodeableConcept policyRule;
  final List<ConsentVerification> verification;
  final ConsentProvision provision;
  const Consent({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.status,
    required this.statusElement,
    required this.scope,
    required this.category,
    required this.patient,
    required this.dateTime,
    required this.dateTimeElement,
    required this.performer,
    required this.organization,
    required this.sourceAttachment,
    required this.sourceReference,
    required this.policy,
    required this.policyRule,
    required this.verification,
    required this.provision,
  });
}

@Data()
@JsonCodable()
class ConsentPolicy {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirUri authority;
  final PrimitiveElement authorityElement;
  final FhirUri uri;
  final PrimitiveElement uriElement;
  const ConsentPolicy({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.authority,
    required this.authorityElement,
    required this.uri,
    required this.uriElement,
  });
}

@Data()
@JsonCodable()
class ConsentVerification {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean verified;
  final PrimitiveElement verifiedElement;
  final Reference verifiedWith;
  final FhirDateTime verificationDate;
  final PrimitiveElement verificationDateElement;
  const ConsentVerification({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.verified,
    required this.verifiedElement,
    required this.verifiedWith,
    required this.verificationDate,
    required this.verificationDateElement,
  });
}

@Data()
@JsonCodable()
class ConsentProvision {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final Period period;
  final List<ConsentActor> actor;
  final List<CodeableConcept> action;
  final List<Coding> securityLabel;
  final List<Coding> purpose;
  final List<Coding> class_;
  final List<CodeableConcept> code;
  final Period dataPeriod;
  final List<ConsentData> data;
  final List<ConsentProvision> provision;
  const ConsentProvision({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.typeElement,
    required this.period,
    required this.actor,
    required this.action,
    required this.securityLabel,
    required this.purpose,
    required this.class_,
    required this.code,
    required this.dataPeriod,
    required this.data,
    required this.provision,
  });
}

@Data()
@JsonCodable()
class ConsentActor {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept role;
  final Reference reference;
  const ConsentActor({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.role,
    required this.reference,
  });
}

@Data()
@JsonCodable()
class ConsentData {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode meaning;
  final PrimitiveElement meaningElement;
  final Reference reference;
  const ConsentData({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.meaning,
    required this.meaningElement,
    required this.reference,
  });
}


