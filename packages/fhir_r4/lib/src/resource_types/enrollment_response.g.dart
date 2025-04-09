// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'enrollment_response.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $EnrollmentResponseCopyWith<T>
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
    Reference? request,
    RemittanceOutcome? outcome,
    FhirString? disposition,
    FhirDateTime? created,
    Reference? organization,
    Reference? requestProvider,
    bool? disallowExtensions,
  });
}

class _$EnrollmentResponseCopyWithImpl<T>
    implements $EnrollmentResponseCopyWith<T> {
  final EnrollmentResponse _value;
  final T Function(EnrollmentResponse) _then;

  _$EnrollmentResponseCopyWithImpl(this._value, this._then);

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
    Object? request = fhirSentinel,
    Object? outcome = fhirSentinel,
    Object? disposition = fhirSentinel,
    Object? created = fhirSentinel,
    Object? organization = fhirSentinel,
    Object? requestProvider = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EnrollmentResponse(
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
        request: identical(request, fhirSentinel)
            ? _value.request
            : request as Reference?,
        outcome: identical(outcome, fhirSentinel)
            ? _value.outcome
            : outcome as RemittanceOutcome?,
        disposition: identical(disposition, fhirSentinel)
            ? _value.disposition
            : disposition as FhirString?,
        created: identical(created, fhirSentinel)
            ? _value.created
            : created as FhirDateTime?,
        organization: identical(organization, fhirSentinel)
            ? _value.organization
            : organization as Reference?,
        requestProvider: identical(requestProvider, fhirSentinel)
            ? _value.requestProvider
            : requestProvider as Reference?,
      ),
    );
  }
}

extension EnrollmentResponseCopyWithExtension on EnrollmentResponse {
  $EnrollmentResponseCopyWith<EnrollmentResponse> get copyWith =>
      _$EnrollmentResponseCopyWithImpl<EnrollmentResponse>(
        this,
        (value) => value,
      );
}
