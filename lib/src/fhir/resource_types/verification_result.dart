import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [VerificationResult] /// Describes validation requirements, source(s), status and dates for one or
/// more elements.
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

  /// [target] /// A resource that was validated.
  final List<Reference>? target;

  /// [targetLocation] /// The fhirpath location(s) within the resource that was validated.
  final List<FhirString>? targetLocation;
  final List<Element>? targetLocationElement;

  /// [need] /// The frequency with which the target must be validated (none; initial;
  /// periodic).
  final CodeableConcept? need;

  /// [status] /// The validation status of the target (attested; validated; in process;
  /// requires revalidation; validation failed; revalidation failed).
  final FhirCode status;
  final Element? statusElement;

  /// [statusDate] /// When the validation status was updated.
  final FhirDateTime? statusDate;
  final Element? statusDateElement;

  /// [validationType] /// What the target is validated against (nothing; primary source; multiple
  /// sources).
  final CodeableConcept? validationType;

  /// [validationProcess] /// The primary process by which the target is validated (edit check; value
  /// set; primary source; multiple sources; standalone; in context).
  final List<CodeableConcept>? validationProcess;

  /// [frequency] /// Frequency of revalidation.
  final Timing? frequency;

  /// [lastPerformed] /// The date/time validation was last completed (including failed validations).
  final FhirDateTime? lastPerformed;
  final Element? lastPerformedElement;

  /// [nextScheduled] /// The date when target is next validated, if appropriate.
  final FhirDate? nextScheduled;
  final Element? nextScheduledElement;

  /// [failureAction] /// The result if validation fails (fatal; warning; record only; none).
  final CodeableConcept? failureAction;

  /// [primarySource] /// Information about the primary source(s) involved in validation.
  final List<VerificationResultPrimarySource>? primarySource;

  /// [attestation] /// Information about the entity attesting to information.
  final VerificationResultAttestation? attestation;

  /// [validator] /// Information about the entity validating information.
  final List<VerificationResultValidator>? validator;
  @override
  VerificationResult clone() => throw UnimplementedError();
  VerificationResult copy({
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
    List<Reference>? target,
    List<FhirString>? targetLocation,
    List<Element>? targetLocationElement,
    CodeableConcept? need,
    FhirCode? status,
    Element? statusElement,
    FhirDateTime? statusDate,
    Element? statusDateElement,
    CodeableConcept? validationType,
    List<CodeableConcept>? validationProcess,
    Timing? frequency,
    FhirDateTime? lastPerformed,
    Element? lastPerformedElement,
    FhirDate? nextScheduled,
    Element? nextScheduledElement,
    CodeableConcept? failureAction,
    List<VerificationResultPrimarySource>? primarySource,
    VerificationResultAttestation? attestation,
    List<VerificationResultValidator>? validator,
  }) {
    return VerificationResult(
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
      target: target ?? this.target,
      targetLocation: targetLocation ?? this.targetLocation,
      targetLocationElement:
          targetLocationElement ?? this.targetLocationElement,
      need: need ?? this.need,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      statusDate: statusDate ?? this.statusDate,
      statusDateElement: statusDateElement ?? this.statusDateElement,
      validationType: validationType ?? this.validationType,
      validationProcess: validationProcess ?? this.validationProcess,
      frequency: frequency ?? this.frequency,
      lastPerformed: lastPerformed ?? this.lastPerformed,
      lastPerformedElement: lastPerformedElement ?? this.lastPerformedElement,
      nextScheduled: nextScheduled ?? this.nextScheduled,
      nextScheduledElement: nextScheduledElement ?? this.nextScheduledElement,
      failureAction: failureAction ?? this.failureAction,
      primarySource: primarySource ?? this.primarySource,
      attestation: attestation ?? this.attestation,
      validator: validator ?? this.validator,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [VerificationResultPrimarySource] /// Information about the primary source(s) involved in validation.
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

  /// [who] /// Reference to the primary source.
  final Reference? who;

  /// [type] /// Type of primary source (License Board; Primary Education; Continuing
  /// Education; Postal Service; Relationship owner; Registration Authority;
  /// legal source; issuing source; authoritative source).
  final List<CodeableConcept>? type;

  /// [communicationMethod] /// Method for communicating with the primary source (manual; API; Push).
  final List<CodeableConcept>? communicationMethod;

  /// [validationStatus] /// Status of the validation of the target against the primary source
  /// (successful; failed; unknown).
  final CodeableConcept? validationStatus;

  /// [validationDate] /// When the target was validated against the primary source.
  final FhirDateTime? validationDate;
  final Element? validationDateElement;

  /// [canPushUpdates] /// Ability of the primary source to push updates/alerts (yes; no;
  /// undetermined).
  final CodeableConcept? canPushUpdates;

  /// [pushTypeAvailable] /// Type of alerts/updates the primary source can send (specific requested
  /// changes; any changes; as defined by source).
  final List<CodeableConcept>? pushTypeAvailable;
  @override
  VerificationResultPrimarySource clone() => throw UnimplementedError();
  VerificationResultPrimarySource copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? who,
    List<CodeableConcept>? type,
    List<CodeableConcept>? communicationMethod,
    CodeableConcept? validationStatus,
    FhirDateTime? validationDate,
    Element? validationDateElement,
    CodeableConcept? canPushUpdates,
    List<CodeableConcept>? pushTypeAvailable,
  }) {
    return VerificationResultPrimarySource(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      who: who ?? this.who,
      type: type ?? this.type,
      communicationMethod: communicationMethod ?? this.communicationMethod,
      validationStatus: validationStatus ?? this.validationStatus,
      validationDate: validationDate ?? this.validationDate,
      validationDateElement:
          validationDateElement ?? this.validationDateElement,
      canPushUpdates: canPushUpdates ?? this.canPushUpdates,
      pushTypeAvailable: pushTypeAvailable ?? this.pushTypeAvailable,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [VerificationResultAttestation] /// Information about the entity attesting to information.
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

  /// [who] /// The individual or organization attesting to information.
  final Reference? who;

  /// [onBehalfOf] /// When the who is asserting on behalf of another (organization or
  /// individual).
  final Reference? onBehalfOf;

  /// [communicationMethod] /// The method by which attested information was submitted/retrieved (manual;
  /// API; Push).
  final CodeableConcept? communicationMethod;

  /// [date] /// The date the information was attested to.
  final FhirDate? date;
  final Element? dateElement;

  /// [sourceIdentityCertificate] /// A digital identity certificate associated with the attestation source.
  final FhirString? sourceIdentityCertificate;
  final Element? sourceIdentityCertificateElement;

  /// [proxyIdentityCertificate] /// A digital identity certificate associated with the proxy entity submitting
  /// attested information on behalf of the attestation source.
  final FhirString? proxyIdentityCertificate;
  final Element? proxyIdentityCertificateElement;

  /// [proxySignature] /// Signed assertion by the proxy entity indicating that they have the right to
  /// submit attested information on behalf of the attestation source.
  final Signature? proxySignature;

  /// [sourceSignature] /// Signed assertion by the attestation source that they have attested to the
  /// information.
  final Signature? sourceSignature;
  @override
  VerificationResultAttestation clone() => throw UnimplementedError();
  VerificationResultAttestation copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? who,
    Reference? onBehalfOf,
    CodeableConcept? communicationMethod,
    FhirDate? date,
    Element? dateElement,
    FhirString? sourceIdentityCertificate,
    Element? sourceIdentityCertificateElement,
    FhirString? proxyIdentityCertificate,
    Element? proxyIdentityCertificateElement,
    Signature? proxySignature,
    Signature? sourceSignature,
  }) {
    return VerificationResultAttestation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      who: who ?? this.who,
      onBehalfOf: onBehalfOf ?? this.onBehalfOf,
      communicationMethod: communicationMethod ?? this.communicationMethod,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      sourceIdentityCertificate:
          sourceIdentityCertificate ?? this.sourceIdentityCertificate,
      sourceIdentityCertificateElement: sourceIdentityCertificateElement ??
          this.sourceIdentityCertificateElement,
      proxyIdentityCertificate:
          proxyIdentityCertificate ?? this.proxyIdentityCertificate,
      proxyIdentityCertificateElement: proxyIdentityCertificateElement ??
          this.proxyIdentityCertificateElement,
      proxySignature: proxySignature ?? this.proxySignature,
      sourceSignature: sourceSignature ?? this.sourceSignature,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [VerificationResultValidator] /// Information about the entity validating information.
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

  /// [organization] /// Reference to the organization validating information.
  final Reference organization;

  /// [identityCertificate] /// A digital identity certificate associated with the validator.
  final FhirString? identityCertificate;
  final Element? identityCertificateElement;

  /// [attestationSignature] /// Signed assertion by the validator that they have validated the information.
  final Signature? attestationSignature;
  @override
  VerificationResultValidator clone() => throw UnimplementedError();
  VerificationResultValidator copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? organization,
    FhirString? identityCertificate,
    Element? identityCertificateElement,
    Signature? attestationSignature,
  }) {
    return VerificationResultValidator(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      organization: organization ?? this.organization,
      identityCertificate: identityCertificate ?? this.identityCertificate,
      identityCertificateElement:
          identityCertificateElement ?? this.identityCertificateElement,
      attestationSignature: attestationSignature ?? this.attestationSignature,
    );
  }
}
