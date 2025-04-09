// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'consent.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ConsentCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<Identifier>? identifier,
    ConsentState? status,
    CodeableConcept? scope,
    List<CodeableConcept>? category,
    Reference? patient,
    FhirDateTime? dateTime,
    List<Reference>? performer,
    List<Reference>? organization,
    Attachment? sourceX,
    List<ConsentPolicy>? policy,
    CodeableConcept? policyRule,
    List<ConsentVerification>? verification,
    ConsentProvision? provision,
    bool? disallowExtensions,
  });
}

class _$ConsentCopyWithImpl<T> implements $ConsentCopyWith<T> {
  final Consent _value;
  final T Function(Consent) _then;

  _$ConsentCopyWithImpl(this._value, this._then);

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
    Object? identifier = fhirSentinel,
    Object? status = fhirSentinel,
    Object? scope = fhirSentinel,
    Object? category = fhirSentinel,
    Object? patient = fhirSentinel,
    Object? dateTime = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? organization = fhirSentinel,
    Object? sourceX = fhirSentinel,
    Object? policy = fhirSentinel,
    Object? policyRule = fhirSentinel,
    Object? verification = fhirSentinel,
    Object? provision = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Consent(
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
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        status: status as ConsentState? ?? _value.status,
        scope: scope as CodeableConcept? ?? _value.scope,
        category: category as List<CodeableConcept>? ?? _value.category,
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : patient as Reference?,
        dateTime: identical(dateTime, fhirSentinel)
            ? _value.dateTime
            : dateTime as FhirDateTime?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as List<Reference>?,
        organization: identical(organization, fhirSentinel)
            ? _value.organization
            : organization as List<Reference>?,
        sourceX: identical(sourceX, fhirSentinel)
            ? _value.sourceX
            : sourceX as Attachment?,
        policy: identical(policy, fhirSentinel)
            ? _value.policy
            : policy as List<ConsentPolicy>?,
        policyRule: identical(policyRule, fhirSentinel)
            ? _value.policyRule
            : policyRule as CodeableConcept?,
        verification: identical(verification, fhirSentinel)
            ? _value.verification
            : verification as List<ConsentVerification>?,
        provision: identical(provision, fhirSentinel)
            ? _value.provision
            : provision as ConsentProvision?,
      ),
    );
  }
}

extension ConsentCopyWithExtension on Consent {
  $ConsentCopyWith<Consent> get copyWith => _$ConsentCopyWithImpl<Consent>(
        this,
        (value) => value,
      );
}

abstract class $ConsentPolicyCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? authority,
    FhirUri? uri,
    bool? disallowExtensions,
  });
}

class _$ConsentPolicyCopyWithImpl<T> implements $ConsentPolicyCopyWith<T> {
  final ConsentPolicy _value;
  final T Function(ConsentPolicy) _then;

  _$ConsentPolicyCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? authority = fhirSentinel,
    Object? uri = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConsentPolicy(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        authority: identical(authority, fhirSentinel)
            ? _value.authority
            : authority as FhirUri?,
        uri: identical(uri, fhirSentinel) ? _value.uri : uri as FhirUri?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConsentPolicyCopyWithExtension on ConsentPolicy {
  $ConsentPolicyCopyWith<ConsentPolicy> get copyWith =>
      _$ConsentPolicyCopyWithImpl<ConsentPolicy>(
        this,
        (value) => value,
      );
}

abstract class $ConsentVerificationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? verified,
    Reference? verifiedWith,
    FhirDateTime? verificationDate,
    bool? disallowExtensions,
  });
}

class _$ConsentVerificationCopyWithImpl<T>
    implements $ConsentVerificationCopyWith<T> {
  final ConsentVerification _value;
  final T Function(ConsentVerification) _then;

  _$ConsentVerificationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? verified = fhirSentinel,
    Object? verifiedWith = fhirSentinel,
    Object? verificationDate = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConsentVerification(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        verified: verified as FhirBoolean? ?? _value.verified,
        verifiedWith: identical(verifiedWith, fhirSentinel)
            ? _value.verifiedWith
            : verifiedWith as Reference?,
        verificationDate: identical(verificationDate, fhirSentinel)
            ? _value.verificationDate
            : verificationDate as FhirDateTime?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConsentVerificationCopyWithExtension on ConsentVerification {
  $ConsentVerificationCopyWith<ConsentVerification> get copyWith =>
      _$ConsentVerificationCopyWithImpl<ConsentVerification>(
        this,
        (value) => value,
      );
}

abstract class $ConsentProvisionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ConsentProvisionType? type,
    Period? period,
    List<ConsentActor>? actor,
    List<CodeableConcept>? action,
    List<Coding>? securityLabel,
    List<Coding>? purpose,
    List<Coding>? class_,
    List<CodeableConcept>? code,
    Period? dataPeriod,
    List<ConsentData>? data,
    List<ConsentProvision>? provision,
    bool? disallowExtensions,
  });
}

class _$ConsentProvisionCopyWithImpl<T>
    implements $ConsentProvisionCopyWith<T> {
  final ConsentProvision _value;
  final T Function(ConsentProvision) _then;

  _$ConsentProvisionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? period = fhirSentinel,
    Object? actor = fhirSentinel,
    Object? action = fhirSentinel,
    Object? securityLabel = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? class_ = fhirSentinel,
    Object? code = fhirSentinel,
    Object? dataPeriod = fhirSentinel,
    Object? data = fhirSentinel,
    Object? provision = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConsentProvision(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as ConsentProvisionType?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        actor: identical(actor, fhirSentinel)
            ? _value.actor
            : actor as List<ConsentActor>?,
        action: identical(action, fhirSentinel)
            ? _value.action
            : action as List<CodeableConcept>?,
        securityLabel: identical(securityLabel, fhirSentinel)
            ? _value.securityLabel
            : securityLabel as List<Coding>?,
        purpose: identical(purpose, fhirSentinel)
            ? _value.purpose
            : purpose as List<Coding>?,
        class_: identical(class_, fhirSentinel)
            ? _value.class_
            : class_ as List<Coding>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as List<CodeableConcept>?,
        dataPeriod: identical(dataPeriod, fhirSentinel)
            ? _value.dataPeriod
            : dataPeriod as Period?,
        data: identical(data, fhirSentinel)
            ? _value.data
            : data as List<ConsentData>?,
        provision: identical(provision, fhirSentinel)
            ? _value.provision
            : provision as List<ConsentProvision>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConsentProvisionCopyWithExtension on ConsentProvision {
  $ConsentProvisionCopyWith<ConsentProvision> get copyWith =>
      _$ConsentProvisionCopyWithImpl<ConsentProvision>(
        this,
        (value) => value,
      );
}

abstract class $ConsentActorCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? role,
    Reference? reference,
    bool? disallowExtensions,
  });
}

class _$ConsentActorCopyWithImpl<T> implements $ConsentActorCopyWith<T> {
  final ConsentActor _value;
  final T Function(ConsentActor) _then;

  _$ConsentActorCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? role = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConsentActor(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        role: role as CodeableConcept? ?? _value.role,
        reference: reference as Reference? ?? _value.reference,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConsentActorCopyWithExtension on ConsentActor {
  $ConsentActorCopyWith<ConsentActor> get copyWith =>
      _$ConsentActorCopyWithImpl<ConsentActor>(
        this,
        (value) => value,
      );
}

abstract class $ConsentDataCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ConsentDataMeaning? meaning,
    Reference? reference,
    bool? disallowExtensions,
  });
}

class _$ConsentDataCopyWithImpl<T> implements $ConsentDataCopyWith<T> {
  final ConsentData _value;
  final T Function(ConsentData) _then;

  _$ConsentDataCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? meaning = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ConsentData(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        meaning: meaning as ConsentDataMeaning? ?? _value.meaning,
        reference: reference as Reference? ?? _value.reference,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ConsentDataCopyWithExtension on ConsentData {
  $ConsentDataCopyWith<ConsentData> get copyWith =>
      _$ConsentDataCopyWithImpl<ConsentData>(
        this,
        (value) => value,
      );
}
