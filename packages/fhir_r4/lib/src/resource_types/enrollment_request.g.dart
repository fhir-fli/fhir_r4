// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'enrollment_request.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $EnrollmentRequestCopyWith<T>
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
    FinancialResourceStatusCodes? status,
    FhirDateTime? created,
    Reference? insurer,
    Reference? provider,
    Reference? candidate,
    Reference? coverage,
    bool? disallowExtensions,
  });
}

class _$EnrollmentRequestCopyWithImpl<T>
    implements $EnrollmentRequestCopyWith<T> {
  final EnrollmentRequest _value;
  final T Function(EnrollmentRequest) _then;

  _$EnrollmentRequestCopyWithImpl(this._value, this._then);

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
    Object? created = fhirSentinel,
    Object? insurer = fhirSentinel,
    Object? provider = fhirSentinel,
    Object? candidate = fhirSentinel,
    Object? coverage = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EnrollmentRequest(
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
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as FinancialResourceStatusCodes?,
        created: identical(created, fhirSentinel)
            ? _value.created
            : created as FhirDateTime?,
        insurer: identical(insurer, fhirSentinel)
            ? _value.insurer
            : insurer as Reference?,
        provider: identical(provider, fhirSentinel)
            ? _value.provider
            : provider as Reference?,
        candidate: identical(candidate, fhirSentinel)
            ? _value.candidate
            : candidate as Reference?,
        coverage: identical(coverage, fhirSentinel)
            ? _value.coverage
            : coverage as Reference?,
      ),
    );
  }
}

extension EnrollmentRequestCopyWithExtension on EnrollmentRequest {
  $EnrollmentRequestCopyWith<EnrollmentRequest> get copyWith =>
      _$EnrollmentRequestCopyWithImpl<EnrollmentRequest>(
        this,
        (value) => value,
      );
}
