// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'regulated_authorization.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $RegulatedAuthorizationCopyWith<T>
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
    List<Identifier>? identifier,
    List<Reference>? subject,
    CodeableConcept? type,
    FhirMarkdown? description,
    List<CodeableConcept>? region,
    CodeableConcept? status,
    FhirDateTime? statusDate,
    Period? validityPeriod,
    CodeableReference? indication,
    CodeableConcept? intendedUse,
    List<CodeableConcept>? basis,
    Reference? holder,
    Reference? regulator,
    RegulatedAuthorizationCase? case_,
    bool? disallowExtensions,
  });
}

class _$RegulatedAuthorizationCopyWithImpl<T>
    implements $RegulatedAuthorizationCopyWith<T> {
  final RegulatedAuthorization _value;
  final T Function(RegulatedAuthorization) _then;

  _$RegulatedAuthorizationCopyWithImpl(this._value, this._then);

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
    Object? subject = fhirSentinel,
    Object? type = fhirSentinel,
    Object? description = fhirSentinel,
    Object? region = fhirSentinel,
    Object? status = fhirSentinel,
    Object? statusDate = fhirSentinel,
    Object? validityPeriod = fhirSentinel,
    Object? indication = fhirSentinel,
    Object? intendedUse = fhirSentinel,
    Object? basis = fhirSentinel,
    Object? holder = fhirSentinel,
    Object? regulator = fhirSentinel,
    Object? case_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      RegulatedAuthorization(
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
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as List<Reference>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        region: identical(region, fhirSentinel)
            ? _value.region
            : region as List<CodeableConcept>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as CodeableConcept?,
        statusDate: identical(statusDate, fhirSentinel)
            ? _value.statusDate
            : statusDate as FhirDateTime?,
        validityPeriod: identical(validityPeriod, fhirSentinel)
            ? _value.validityPeriod
            : validityPeriod as Period?,
        indication: identical(indication, fhirSentinel)
            ? _value.indication
            : indication as CodeableReference?,
        intendedUse: identical(intendedUse, fhirSentinel)
            ? _value.intendedUse
            : intendedUse as CodeableConcept?,
        basis: identical(basis, fhirSentinel)
            ? _value.basis
            : basis as List<CodeableConcept>?,
        holder: identical(holder, fhirSentinel)
            ? _value.holder
            : holder as Reference?,
        regulator: identical(regulator, fhirSentinel)
            ? _value.regulator
            : regulator as Reference?,
        case_: identical(case_, fhirSentinel)
            ? _value.case_
            : case_ as RegulatedAuthorizationCase?,
      ),
    );
  }
}

extension RegulatedAuthorizationCopyWithExtension on RegulatedAuthorization {
  $RegulatedAuthorizationCopyWith<RegulatedAuthorization> get copyWith =>
      _$RegulatedAuthorizationCopyWithImpl<RegulatedAuthorization>(
        this,
        (value) => value,
      );
}

abstract class $RegulatedAuthorizationCaseCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    CodeableConcept? type,
    CodeableConcept? status,
    Period? dateX,
    List<RegulatedAuthorizationCase>? application,
    bool? disallowExtensions,
  });
}

class _$RegulatedAuthorizationCaseCopyWithImpl<T>
    implements $RegulatedAuthorizationCaseCopyWith<T> {
  final RegulatedAuthorizationCase _value;
  final T Function(RegulatedAuthorizationCase) _then;

  _$RegulatedAuthorizationCaseCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? type = fhirSentinel,
    Object? status = fhirSentinel,
    Object? dateX = fhirSentinel,
    Object? application = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      RegulatedAuthorizationCase(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as Identifier?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as CodeableConcept?,
        dateX: identical(dateX, fhirSentinel) ? _value.dateX : dateX as Period?,
        application: identical(application, fhirSentinel)
            ? _value.application
            : application as List<RegulatedAuthorizationCase>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension RegulatedAuthorizationCaseCopyWithExtension
    on RegulatedAuthorizationCase {
  $RegulatedAuthorizationCaseCopyWith<RegulatedAuthorizationCase>
      get copyWith =>
          _$RegulatedAuthorizationCaseCopyWithImpl<RegulatedAuthorizationCase>(
            this,
            (value) => value,
          );
}
