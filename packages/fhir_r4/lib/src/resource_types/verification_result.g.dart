// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'verification_result.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $VerificationResultCopyWith<T>
    extends $DomainResourceCopyWith<T> {
  @override
  T call({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Reference>? target,
    List<FhirString>? targetLocation,
    CodeableConcept? need,
    Status? status,
    FhirDateTime? statusDate,
    CodeableConcept? validationType,
    List<CodeableConcept>? validationProcess,
    Timing? frequency,
    FhirDateTime? lastPerformed,
    FhirDate? nextScheduled,
    CodeableConcept? failureAction,
    List<VerificationResultPrimarySource>? primarySource,
    VerificationResultAttestation? attestation,
    List<VerificationResultValidator>? validator,
    bool? disallowExtensions,
  });
}

class _$VerificationResultCopyWithImpl<T>
    implements $VerificationResultCopyWith<T> {
  final VerificationResult _value;
  final T Function(VerificationResult) _then;

  _$VerificationResultCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? meta = fhirSentinel,
    Object? implicitRules = fhirSentinel,
    Object? language = fhirSentinel,
    Object? text = fhirSentinel,
    Object? contained = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? target = fhirSentinel,
    Object? targetLocation = fhirSentinel,
    Object? need = fhirSentinel,
    Object? status = fhirSentinel,
    Object? statusDate = fhirSentinel,
    Object? validationType = fhirSentinel,
    Object? validationProcess = fhirSentinel,
    Object? frequency = fhirSentinel,
    Object? lastPerformed = fhirSentinel,
    Object? nextScheduled = fhirSentinel,
    Object? failureAction = fhirSentinel,
    Object? primarySource = fhirSentinel,
    Object? attestation = fhirSentinel,
    Object? validator = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      VerificationResult(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        meta: identical(meta, fhirSentinel) ? _value.meta : meta as FhirMeta?,
        implicitRules: identical(implicitRules, fhirSentinel)
            ? _value.implicitRules
            : implicitRules as FhirUri?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CommonLanguages?,
        text: identical(text, fhirSentinel) ? _value.text : text as Narrative?,
        contained: identical(contained, fhirSentinel)
            ? _value.contained
            : contained as List<Resource>?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        target: identical(target, fhirSentinel)
            ? _value.target
            : target as List<Reference>?,
        targetLocation: identical(targetLocation, fhirSentinel)
            ? _value.targetLocation
            : targetLocation as List<FhirString>?,
        need: identical(need, fhirSentinel)
            ? _value.need
            : need as CodeableConcept?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as Status?) ?? _value.status,
        statusDate: identical(statusDate, fhirSentinel)
            ? _value.statusDate
            : statusDate as FhirDateTime?,
        validationType: identical(validationType, fhirSentinel)
            ? _value.validationType
            : validationType as CodeableConcept?,
        validationProcess: identical(validationProcess, fhirSentinel)
            ? _value.validationProcess
            : validationProcess as List<CodeableConcept>?,
        frequency: identical(frequency, fhirSentinel)
            ? _value.frequency
            : frequency as Timing?,
        lastPerformed: identical(lastPerformed, fhirSentinel)
            ? _value.lastPerformed
            : lastPerformed as FhirDateTime?,
        nextScheduled: identical(nextScheduled, fhirSentinel)
            ? _value.nextScheduled
            : nextScheduled as FhirDate?,
        failureAction: identical(failureAction, fhirSentinel)
            ? _value.failureAction
            : failureAction as CodeableConcept?,
        primarySource: identical(primarySource, fhirSentinel)
            ? _value.primarySource
            : primarySource as List<VerificationResultPrimarySource>?,
        attestation: identical(attestation, fhirSentinel)
            ? _value.attestation
            : attestation as VerificationResultAttestation?,
        validator: identical(validator, fhirSentinel)
            ? _value.validator
            : validator as List<VerificationResultValidator>?,
      ),
    );
  }
}

extension VerificationResultCopyWithExtension on VerificationResult {
  $VerificationResultCopyWith<VerificationResult> get copyWith =>
      _$VerificationResultCopyWithImpl<VerificationResult>(
        this,
        (value) => value,
      );
}

abstract class $VerificationResultPrimarySourceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? who,
    List<CodeableConcept>? type,
    List<CodeableConcept>? communicationMethod,
    CodeableConcept? validationStatus,
    FhirDateTime? validationDate,
    CodeableConcept? canPushUpdates,
    List<CodeableConcept>? pushTypeAvailable,
    bool? disallowExtensions,
  });
}

class _$VerificationResultPrimarySourceCopyWithImpl<T>
    implements $VerificationResultPrimarySourceCopyWith<T> {
  final VerificationResultPrimarySource _value;
  final T Function(VerificationResultPrimarySource) _then;

  _$VerificationResultPrimarySourceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? who = fhirSentinel,
    Object? type = fhirSentinel,
    Object? communicationMethod = fhirSentinel,
    Object? validationStatus = fhirSentinel,
    Object? validationDate = fhirSentinel,
    Object? canPushUpdates = fhirSentinel,
    Object? pushTypeAvailable = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      VerificationResultPrimarySource(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        who: identical(who, fhirSentinel) ? _value.who : who as Reference?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        communicationMethod: identical(communicationMethod, fhirSentinel)
            ? _value.communicationMethod
            : communicationMethod as List<CodeableConcept>?,
        validationStatus: identical(validationStatus, fhirSentinel)
            ? _value.validationStatus
            : validationStatus as CodeableConcept?,
        validationDate: identical(validationDate, fhirSentinel)
            ? _value.validationDate
            : validationDate as FhirDateTime?,
        canPushUpdates: identical(canPushUpdates, fhirSentinel)
            ? _value.canPushUpdates
            : canPushUpdates as CodeableConcept?,
        pushTypeAvailable: identical(pushTypeAvailable, fhirSentinel)
            ? _value.pushTypeAvailable
            : pushTypeAvailable as List<CodeableConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension VerificationResultPrimarySourceCopyWithExtension
    on VerificationResultPrimarySource {
  $VerificationResultPrimarySourceCopyWith<VerificationResultPrimarySource>
      get copyWith => _$VerificationResultPrimarySourceCopyWithImpl<
              VerificationResultPrimarySource>(
            this,
            (value) => value,
          );
}

abstract class $VerificationResultAttestationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? who,
    Reference? onBehalfOf,
    CodeableConcept? communicationMethod,
    FhirDate? date,
    FhirString? sourceIdentityCertificate,
    FhirString? proxyIdentityCertificate,
    Signature? proxySignature,
    Signature? sourceSignature,
    bool? disallowExtensions,
  });
}

class _$VerificationResultAttestationCopyWithImpl<T>
    implements $VerificationResultAttestationCopyWith<T> {
  final VerificationResultAttestation _value;
  final T Function(VerificationResultAttestation) _then;

  _$VerificationResultAttestationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? who = fhirSentinel,
    Object? onBehalfOf = fhirSentinel,
    Object? communicationMethod = fhirSentinel,
    Object? date = fhirSentinel,
    Object? sourceIdentityCertificate = fhirSentinel,
    Object? proxyIdentityCertificate = fhirSentinel,
    Object? proxySignature = fhirSentinel,
    Object? sourceSignature = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      VerificationResultAttestation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        who: identical(who, fhirSentinel) ? _value.who : who as Reference?,
        onBehalfOf: identical(onBehalfOf, fhirSentinel)
            ? _value.onBehalfOf
            : onBehalfOf as Reference?,
        communicationMethod: identical(communicationMethod, fhirSentinel)
            ? _value.communicationMethod
            : communicationMethod as CodeableConcept?,
        date: identical(date, fhirSentinel) ? _value.date : date as FhirDate?,
        sourceIdentityCertificate:
            identical(sourceIdentityCertificate, fhirSentinel)
                ? _value.sourceIdentityCertificate
                : sourceIdentityCertificate as FhirString?,
        proxyIdentityCertificate:
            identical(proxyIdentityCertificate, fhirSentinel)
                ? _value.proxyIdentityCertificate
                : proxyIdentityCertificate as FhirString?,
        proxySignature: identical(proxySignature, fhirSentinel)
            ? _value.proxySignature
            : proxySignature as Signature?,
        sourceSignature: identical(sourceSignature, fhirSentinel)
            ? _value.sourceSignature
            : sourceSignature as Signature?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension VerificationResultAttestationCopyWithExtension
    on VerificationResultAttestation {
  $VerificationResultAttestationCopyWith<VerificationResultAttestation>
      get copyWith => _$VerificationResultAttestationCopyWithImpl<
              VerificationResultAttestation>(
            this,
            (value) => value,
          );
}

abstract class $VerificationResultValidatorCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? organization,
    FhirString? identityCertificate,
    Signature? attestationSignature,
    bool? disallowExtensions,
  });
}

class _$VerificationResultValidatorCopyWithImpl<T>
    implements $VerificationResultValidatorCopyWith<T> {
  final VerificationResultValidator _value;
  final T Function(VerificationResultValidator) _then;

  _$VerificationResultValidatorCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? organization = fhirSentinel,
    Object? identityCertificate = fhirSentinel,
    Object? attestationSignature = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      VerificationResultValidator(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        organization: identical(organization, fhirSentinel)
            ? _value.organization
            : (organization as Reference?) ?? _value.organization,
        identityCertificate: identical(identityCertificate, fhirSentinel)
            ? _value.identityCertificate
            : identityCertificate as FhirString?,
        attestationSignature: identical(attestationSignature, fhirSentinel)
            ? _value.attestationSignature
            : attestationSignature as Signature?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension VerificationResultValidatorCopyWithExtension
    on VerificationResultValidator {
  $VerificationResultValidatorCopyWith<VerificationResultValidator>
      get copyWith => _$VerificationResultValidatorCopyWithImpl<
              VerificationResultValidator>(
            this,
            (value) => value,
          );
}
