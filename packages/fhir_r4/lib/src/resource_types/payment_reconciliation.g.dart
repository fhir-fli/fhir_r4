// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'payment_reconciliation.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $PaymentReconciliationCopyWith<T>
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
    Period? period,
    FhirDateTime? created,
    Reference? paymentIssuer,
    Reference? request,
    Reference? requestor,
    RemittanceOutcome? outcome,
    FhirString? disposition,
    FhirDate? paymentDate,
    Money? paymentAmount,
    Identifier? paymentIdentifier,
    List<PaymentReconciliationDetail>? detail,
    CodeableConcept? formCode,
    List<PaymentReconciliationProcessNote>? processNote,
    bool? disallowExtensions,
  });
}

class _$PaymentReconciliationCopyWithImpl<T>
    implements $PaymentReconciliationCopyWith<T> {
  final PaymentReconciliation _value;
  final T Function(PaymentReconciliation) _then;

  _$PaymentReconciliationCopyWithImpl(this._value, this._then);

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
    Object? period = fhirSentinel,
    Object? created = fhirSentinel,
    Object? paymentIssuer = fhirSentinel,
    Object? request = fhirSentinel,
    Object? requestor = fhirSentinel,
    Object? outcome = fhirSentinel,
    Object? disposition = fhirSentinel,
    Object? paymentDate = fhirSentinel,
    Object? paymentAmount = fhirSentinel,
    Object? paymentIdentifier = fhirSentinel,
    Object? detail = fhirSentinel,
    Object? formCode = fhirSentinel,
    Object? processNote = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PaymentReconciliation(
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
            : (status as FinancialResourceStatusCodes?) ?? _value.status,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        created: identical(created, fhirSentinel)
            ? _value.created
            : (created as FhirDateTime?) ?? _value.created,
        paymentIssuer: identical(paymentIssuer, fhirSentinel)
            ? _value.paymentIssuer
            : paymentIssuer as Reference?,
        request: identical(request, fhirSentinel)
            ? _value.request
            : request as Reference?,
        requestor: identical(requestor, fhirSentinel)
            ? _value.requestor
            : requestor as Reference?,
        outcome: identical(outcome, fhirSentinel)
            ? _value.outcome
            : outcome as RemittanceOutcome?,
        disposition: identical(disposition, fhirSentinel)
            ? _value.disposition
            : disposition as FhirString?,
        paymentDate: identical(paymentDate, fhirSentinel)
            ? _value.paymentDate
            : (paymentDate as FhirDate?) ?? _value.paymentDate,
        paymentAmount: identical(paymentAmount, fhirSentinel)
            ? _value.paymentAmount
            : (paymentAmount as Money?) ?? _value.paymentAmount,
        paymentIdentifier: identical(paymentIdentifier, fhirSentinel)
            ? _value.paymentIdentifier
            : paymentIdentifier as Identifier?,
        detail: identical(detail, fhirSentinel)
            ? _value.detail
            : detail as List<PaymentReconciliationDetail>?,
        formCode: identical(formCode, fhirSentinel)
            ? _value.formCode
            : formCode as CodeableConcept?,
        processNote: identical(processNote, fhirSentinel)
            ? _value.processNote
            : processNote as List<PaymentReconciliationProcessNote>?,
      ),
    );
  }
}

extension PaymentReconciliationCopyWithExtension on PaymentReconciliation {
  $PaymentReconciliationCopyWith<PaymentReconciliation> get copyWith =>
      _$PaymentReconciliationCopyWithImpl<PaymentReconciliation>(
        this,
        (value) => value,
      );
}

abstract class $PaymentReconciliationDetailCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    Identifier? predecessor,
    CodeableConcept? type,
    Reference? request,
    Reference? submitter,
    Reference? response,
    FhirDate? date,
    Reference? responsible,
    Reference? payee,
    Money? amount,
    bool? disallowExtensions,
  });
}

class _$PaymentReconciliationDetailCopyWithImpl<T>
    implements $PaymentReconciliationDetailCopyWith<T> {
  final PaymentReconciliationDetail _value;
  final T Function(PaymentReconciliationDetail) _then;

  _$PaymentReconciliationDetailCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? predecessor = fhirSentinel,
    Object? type = fhirSentinel,
    Object? request = fhirSentinel,
    Object? submitter = fhirSentinel,
    Object? response = fhirSentinel,
    Object? date = fhirSentinel,
    Object? responsible = fhirSentinel,
    Object? payee = fhirSentinel,
    Object? amount = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PaymentReconciliationDetail(
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
        predecessor: identical(predecessor, fhirSentinel)
            ? _value.predecessor
            : predecessor as Identifier?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as CodeableConcept?) ?? _value.type,
        request: identical(request, fhirSentinel)
            ? _value.request
            : request as Reference?,
        submitter: identical(submitter, fhirSentinel)
            ? _value.submitter
            : submitter as Reference?,
        response: identical(response, fhirSentinel)
            ? _value.response
            : response as Reference?,
        date: identical(date, fhirSentinel) ? _value.date : date as FhirDate?,
        responsible: identical(responsible, fhirSentinel)
            ? _value.responsible
            : responsible as Reference?,
        payee:
            identical(payee, fhirSentinel) ? _value.payee : payee as Reference?,
        amount:
            identical(amount, fhirSentinel) ? _value.amount : amount as Money?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PaymentReconciliationDetailCopyWithExtension
    on PaymentReconciliationDetail {
  $PaymentReconciliationDetailCopyWith<PaymentReconciliationDetail>
      get copyWith => _$PaymentReconciliationDetailCopyWithImpl<
              PaymentReconciliationDetail>(
            this,
            (value) => value,
          );
}

abstract class $PaymentReconciliationProcessNoteCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    NoteType? type,
    FhirString? text,
    bool? disallowExtensions,
  });
}

class _$PaymentReconciliationProcessNoteCopyWithImpl<T>
    implements $PaymentReconciliationProcessNoteCopyWith<T> {
  final PaymentReconciliationProcessNote _value;
  final T Function(PaymentReconciliationProcessNote) _then;

  _$PaymentReconciliationProcessNoteCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? text = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      PaymentReconciliationProcessNote(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel) ? _value.type : type as NoteType?,
        text: identical(text, fhirSentinel) ? _value.text : text as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PaymentReconciliationProcessNoteCopyWithExtension
    on PaymentReconciliationProcessNote {
  $PaymentReconciliationProcessNoteCopyWith<PaymentReconciliationProcessNote>
      get copyWith => _$PaymentReconciliationProcessNoteCopyWithImpl<
              PaymentReconciliationProcessNote>(
            this,
            (value) => value,
          );
}
