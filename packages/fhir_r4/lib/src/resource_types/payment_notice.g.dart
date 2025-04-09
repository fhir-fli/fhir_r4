// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'payment_notice.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $PaymentNoticeCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    Reference? response,
    FhirDateTime? created,
    Reference? provider,
    Reference? payment,
    FhirDate? paymentDate,
    Reference? payee,
    Reference? recipient,
    Money? amount,
    CodeableConcept? paymentStatus,
    bool? disallowExtensions,
  });
}

class _$PaymentNoticeCopyWithImpl<T> implements $PaymentNoticeCopyWith<T> {
  final PaymentNotice _value;
  final T Function(PaymentNotice) _then;

  _$PaymentNoticeCopyWithImpl(this._value, this._then);

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
    Object? response = fhirSentinel,
    Object? created = fhirSentinel,
    Object? provider = fhirSentinel,
    Object? payment = fhirSentinel,
    Object? paymentDate = fhirSentinel,
    Object? payee = fhirSentinel,
    Object? recipient = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? paymentStatus = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PaymentNotice(
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
        status: status as FinancialResourceStatusCodes? ?? _value.status,
        request: identical(request, fhirSentinel)
            ? _value.request
            : request as Reference?,
        response: identical(response, fhirSentinel)
            ? _value.response
            : response as Reference?,
        created: created as FhirDateTime? ?? _value.created,
        provider: identical(provider, fhirSentinel)
            ? _value.provider
            : provider as Reference?,
        payment: payment as Reference? ?? _value.payment,
        paymentDate: identical(paymentDate, fhirSentinel)
            ? _value.paymentDate
            : paymentDate as FhirDate?,
        payee:
            identical(payee, fhirSentinel) ? _value.payee : payee as Reference?,
        recipient: recipient as Reference? ?? _value.recipient,
        amount: amount as Money? ?? _value.amount,
        paymentStatus: identical(paymentStatus, fhirSentinel)
            ? _value.paymentStatus
            : paymentStatus as CodeableConcept?,
      ),
    );
  }
}

extension PaymentNoticeCopyWithExtension on PaymentNotice {
  $PaymentNoticeCopyWith<PaymentNotice> get copyWith =>
      _$PaymentNoticeCopyWithImpl<PaymentNotice>(
        this,
        (value) => value,
      );
}
