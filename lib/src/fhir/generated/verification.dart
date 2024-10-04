import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class VerificationResult {
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
  final List<Reference> target;
  final List<String> targetLocation;
  final List<PrimitiveElement> targetLocationElement;
  final CodeableConcept need;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirDateTime statusDate;
  final PrimitiveElement statusDateElement;
  final CodeableConcept validationType;
  final List<CodeableConcept> validationProcess;
  final Timing frequency;
  final FhirDateTime lastPerformed;
  final PrimitiveElement lastPerformedElement;
  final FhirDate nextScheduled;
  final PrimitiveElement nextScheduledElement;
  final CodeableConcept failureAction;
  final List<VerificationResultPrimarySource> primarySource;
  final VerificationResultAttestation attestation;
  final List<VerificationResultValidator> validator;
  const VerificationResult({
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
    required this.target,
    required this.targetLocation,
    required this.targetLocationElement,
    required this.need,
    required this.status,
    required this.statusElement,
    required this.statusDate,
    required this.statusDateElement,
    required this.validationType,
    required this.validationProcess,
    required this.frequency,
    required this.lastPerformed,
    required this.lastPerformedElement,
    required this.nextScheduled,
    required this.nextScheduledElement,
    required this.failureAction,
    required this.primarySource,
    required this.attestation,
    required this.validator,
  });
}

@Data()
@JsonCodable()
class VerificationResultPrimarySource {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference who;
  final List<CodeableConcept> type;
  final List<CodeableConcept> communicationMethod;
  final CodeableConcept validationStatus;
  final FhirDateTime validationDate;
  final PrimitiveElement validationDateElement;
  final CodeableConcept canPushUpdates;
  final List<CodeableConcept> pushTypeAvailable;
  const VerificationResultPrimarySource({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.who,
    required this.type,
    required this.communicationMethod,
    required this.validationStatus,
    required this.validationDate,
    required this.validationDateElement,
    required this.canPushUpdates,
    required this.pushTypeAvailable,
  });
}

@Data()
@JsonCodable()
class VerificationResultAttestation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference who;
  final Reference onBehalfOf;
  final CodeableConcept communicationMethod;
  final FhirDate date;
  final PrimitiveElement dateElement;
  final String sourceIdentityCertificate;
  final PrimitiveElement sourceIdentityCertificateElement;
  final String proxyIdentityCertificate;
  final PrimitiveElement proxyIdentityCertificateElement;
  final Signature proxySignature;
  final Signature sourceSignature;
  const VerificationResultAttestation({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.who,
    required this.onBehalfOf,
    required this.communicationMethod,
    required this.date,
    required this.dateElement,
    required this.sourceIdentityCertificate,
    required this.sourceIdentityCertificateElement,
    required this.proxyIdentityCertificate,
    required this.proxyIdentityCertificateElement,
    required this.proxySignature,
    required this.sourceSignature,
  });
}

@Data()
@JsonCodable()
class VerificationResultValidator {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference organization;
  final String identityCertificate;
  final PrimitiveElement identityCertificateElement;
  final Signature attestationSignature;
  const VerificationResultValidator({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.organization,
    required this.identityCertificate,
    required this.identityCertificateElement,
    required this.attestationSignature,
  });
}


