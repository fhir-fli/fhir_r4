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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Reference> target;
  final List<String> targetLocation;
  final List<PrimitiveElement> TargetLocation;
  final CodeableConcept need;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirDateTime statusDate;
  final PrimitiveElement StatusDate;
  final CodeableConcept validationType;
  final List<CodeableConcept> validationProcess;
  final Timing frequency;
  final FhirDateTime lastPerformed;
  final PrimitiveElement LastPerformed;
  final FhirDate nextScheduled;
  final PrimitiveElement NextScheduled;
  final CodeableConcept failureAction;
  final List<VerificationResultPrimarySource> primarySource;
  final VerificationResultAttestation attestation;
  final List<VerificationResultValidator> validator;
}

@Data()
@JsonCodable()
class VerificationResultPrimarySource {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Reference who;
  final List<CodeableConcept> type;
  final List<CodeableConcept> communicationMethod;
  final CodeableConcept validationStatus;
  final FhirDateTime validationDate;
  final PrimitiveElement ValidationDate;
  final CodeableConcept canPushUpdates;
  final List<CodeableConcept> pushTypeAvailable;
}

@Data()
@JsonCodable()
class VerificationResultAttestation {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Reference who;
  final Reference onBehalfOf;
  final CodeableConcept communicationMethod;
  final FhirDate date;
  final PrimitiveElement Date;
  final String sourceIdentityCertificate;
  final PrimitiveElement SourceIdentityCertificate;
  final String proxyIdentityCertificate;
  final PrimitiveElement ProxyIdentityCertificate;
  final Signature proxySignature;
  final Signature sourceSignature;
}

@Data()
@JsonCodable()
class VerificationResultValidator {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Reference organization;
  final String identityCertificate;
  final PrimitiveElement IdentityCertificate;
  final Signature attestationSignature;
}


