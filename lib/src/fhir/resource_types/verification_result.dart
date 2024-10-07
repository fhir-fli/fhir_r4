import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class VerificationResult extends DomainResource {
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
    required this.status,
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
  }) : super(resourceType: R4ResourceType.VerificationResult);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Reference>? target;
  final List<FhirString>? targetLocation;
  final List<Element>? targetLocationElement;
  final CodeableConcept? need;
  final FhirCode status;
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
  @override
  VerificationResult clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class VerificationResultPrimarySource extends BackboneElement {
  VerificationResultPrimarySource({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.who,
    this.type,
    this.communicationMethod,
    this.validationStatus,
    this.validationDate,
    this.validationDateElement,
    this.canPushUpdates,
    this.pushTypeAvailable,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Reference? who;
  final List<CodeableConcept>? type;
  final List<CodeableConcept>? communicationMethod;
  final CodeableConcept? validationStatus;
  final FhirDateTime? validationDate;
  final Element? validationDateElement;
  final CodeableConcept? canPushUpdates;
  final List<CodeableConcept>? pushTypeAvailable;
  @override
  VerificationResultPrimarySource clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class VerificationResultAttestation extends BackboneElement {
  VerificationResultAttestation({
    super.id,
    super.extension_,
    super.modifierExtension,
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  VerificationResultAttestation clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class VerificationResultValidator extends BackboneElement {
  VerificationResultValidator({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.organization,
    this.identityCertificate,
    this.identityCertificateElement,
    this.attestationSignature,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Reference organization;
  final FhirString? identityCertificate;
  final Element? identityCertificateElement;
  final Signature? attestationSignature;
  @override
  VerificationResultValidator clone() => throw UnimplementedError();
}
