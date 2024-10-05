import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class VerificationResult extends DomainResource {
  final List<Reference>? target;
  final List<FhirString>? targetLocation;
  final List<Element>? targetLocationElement;
  final CodeableConcept? need;
  final FhirCode? status;
  final Element? statusElement;
  final FhirDateTime? statusDate;
  final Element? statusDateElement;
  final CodeableConcept? validationType;
  final List<CodeableConcept>? validationProcess;
  final Timing? frequency;
  final FhirDateTime? lastPerformed;
  final Element? lastPerformedElement;
  final FhirDate? nextScheduled;
  final Element? nextScheduledElement;
  final CodeableConcept? failureAction;
  final List<VerificationResultPrimarySource>? primarySource;
  final VerificationResultAttestation? attestation;
  final List<VerificationResultValidator>? validator;

  VerificationResult({
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
    this.target,
    this.targetLocation,
    this.targetLocationElement,
    this.need,
    this.status,
    this.statusElement,
    this.statusDate,
    this.statusDateElement,
    this.validationType,
    this.validationProcess,
    this.frequency,
    this.lastPerformed,
    this.lastPerformedElement,
    this.nextScheduled,
    this.nextScheduledElement,
    this.failureAction,
    this.primarySource,
    this.attestation,
    this.validator,
  }): super(resourceType: R4ResourceType.VerificationResult);

@override
VerificationResult clone() => this;

}


@Data()
@JsonCodable()
class VerificationResultPrimarySource {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Reference? who;
  final List<CodeableConcept>? type;
  final List<CodeableConcept>? communicationMethod;
  final CodeableConcept? validationStatus;
  final FhirDateTime? validationDate;
  final Element? validationDateElement;
  final CodeableConcept? canPushUpdates;
  final List<CodeableConcept>? pushTypeAvailable;

  VerificationResultPrimarySource({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.who,
    this.type,
    this.communicationMethod,
    this.validationStatus,
    this.validationDate,
    this.validationDateElement,
    this.canPushUpdates,
    this.pushTypeAvailable,
  });

}


@Data()
@JsonCodable()
class VerificationResultAttestation {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Reference? who;
  final Reference? onBehalfOf;
  final CodeableConcept? communicationMethod;
  final FhirDate? date;
  final Element? dateElement;
  final FhirString? sourceIdentityCertificate;
  final Element? sourceIdentityCertificateElement;
  final FhirString? proxyIdentityCertificate;
  final Element? proxyIdentityCertificateElement;
  final Signature? proxySignature;
  final Signature? sourceSignature;

  VerificationResultAttestation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.who,
    this.onBehalfOf,
    this.communicationMethod,
    this.date,
    this.dateElement,
    this.sourceIdentityCertificate,
    this.sourceIdentityCertificateElement,
    this.proxyIdentityCertificate,
    this.proxyIdentityCertificateElement,
    this.proxySignature,
    this.sourceSignature,
  });

}


@Data()
@JsonCodable()
class VerificationResultValidator {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Reference organization;
  final FhirString? identityCertificate;
  final Element? identityCertificateElement;
  final Signature? attestationSignature;

  VerificationResultValidator({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.organization,
    this.identityCertificate,
    this.identityCertificateElement,
    this.attestationSignature,
  });

}



