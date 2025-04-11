// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'charge_item.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ChargeItemCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<FhirUri>? definitionUri,
    List<FhirCanonical>? definitionCanonical,
    ChargeItemStatus? status,
    List<Reference>? partOf,
    CodeableConcept? code,
    Reference? subject,
    Reference? context,
    FhirDateTime? occurrenceX,
    List<ChargeItemPerformer>? performer,
    Reference? performingOrganization,
    Reference? requestingOrganization,
    Reference? costCenter,
    Quantity? quantity,
    List<CodeableConcept>? bodysite,
    FhirDecimal? factorOverride,
    Money? priceOverride,
    FhirString? overrideReason,
    Reference? enterer,
    FhirDateTime? enteredDate,
    List<CodeableConcept>? reason,
    List<Reference>? service,
    Reference? productX,
    List<Reference>? account,
    List<Annotation>? note,
    List<Reference>? supportingInformation,
    bool? disallowExtensions,
  });
}

class _$ChargeItemCopyWithImpl<T> implements $ChargeItemCopyWith<T> {
  final ChargeItem _value;
  final T Function(ChargeItem) _then;

  _$ChargeItemCopyWithImpl(this._value, this._then);

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
    Object? definitionUri = fhirSentinel,
    Object? definitionCanonical = fhirSentinel,
    Object? status = fhirSentinel,
    Object? partOf = fhirSentinel,
    Object? code = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? context = fhirSentinel,
    Object? occurrenceX = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? performingOrganization = fhirSentinel,
    Object? requestingOrganization = fhirSentinel,
    Object? costCenter = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? bodysite = fhirSentinel,
    Object? factorOverride = fhirSentinel,
    Object? priceOverride = fhirSentinel,
    Object? overrideReason = fhirSentinel,
    Object? enterer = fhirSentinel,
    Object? enteredDate = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? service = fhirSentinel,
    Object? productX = fhirSentinel,
    Object? account = fhirSentinel,
    Object? note = fhirSentinel,
    Object? supportingInformation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ChargeItem(
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
        definitionUri: identical(definitionUri, fhirSentinel)
            ? _value.definitionUri
            : definitionUri as List<FhirUri>?,
        definitionCanonical: identical(definitionCanonical, fhirSentinel)
            ? _value.definitionCanonical
            : definitionCanonical as List<FhirCanonical>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as ChargeItemStatus?) ?? _value.status,
        partOf: identical(partOf, fhirSentinel)
            ? _value.partOf
            : partOf as List<Reference>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CodeableConcept?) ?? _value.code,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
        context: identical(context, fhirSentinel)
            ? _value.context
            : context as Reference?,
        occurrenceX: identical(occurrenceX, fhirSentinel)
            ? _value.occurrenceX
            : occurrenceX as FhirDateTime?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as List<ChargeItemPerformer>?,
        performingOrganization: identical(performingOrganization, fhirSentinel)
            ? _value.performingOrganization
            : performingOrganization as Reference?,
        requestingOrganization: identical(requestingOrganization, fhirSentinel)
            ? _value.requestingOrganization
            : requestingOrganization as Reference?,
        costCenter: identical(costCenter, fhirSentinel)
            ? _value.costCenter
            : costCenter as Reference?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        bodysite: identical(bodysite, fhirSentinel)
            ? _value.bodysite
            : bodysite as List<CodeableConcept>?,
        factorOverride: identical(factorOverride, fhirSentinel)
            ? _value.factorOverride
            : factorOverride as FhirDecimal?,
        priceOverride: identical(priceOverride, fhirSentinel)
            ? _value.priceOverride
            : priceOverride as Money?,
        overrideReason: identical(overrideReason, fhirSentinel)
            ? _value.overrideReason
            : overrideReason as FhirString?,
        enterer: identical(enterer, fhirSentinel)
            ? _value.enterer
            : enterer as Reference?,
        enteredDate: identical(enteredDate, fhirSentinel)
            ? _value.enteredDate
            : enteredDate as FhirDateTime?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as List<CodeableConcept>?,
        service: identical(service, fhirSentinel)
            ? _value.service
            : service as List<Reference>?,
        productX: identical(productX, fhirSentinel)
            ? _value.productX
            : productX as Reference?,
        account: identical(account, fhirSentinel)
            ? _value.account
            : account as List<Reference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        supportingInformation: identical(supportingInformation, fhirSentinel)
            ? _value.supportingInformation
            : supportingInformation as List<Reference>?,
      ),
    );
  }
}

extension ChargeItemCopyWithExtension on ChargeItem {
  $ChargeItemCopyWith<ChargeItem> get copyWith =>
      _$ChargeItemCopyWithImpl<ChargeItem>(
        this,
        (value) => value,
      );
}

abstract class $ChargeItemPerformerCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? function_,
    Reference? actor,
    bool? disallowExtensions,
  });
}

class _$ChargeItemPerformerCopyWithImpl<T>
    implements $ChargeItemPerformerCopyWith<T> {
  final ChargeItemPerformer _value;
  final T Function(ChargeItemPerformer) _then;

  _$ChargeItemPerformerCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? function_ = fhirSentinel,
    Object? actor = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ChargeItemPerformer(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        function_: identical(function_, fhirSentinel)
            ? _value.function_
            : function_ as CodeableConcept?,
        actor: identical(actor, fhirSentinel)
            ? _value.actor
            : (actor as Reference?) ?? _value.actor,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ChargeItemPerformerCopyWithExtension on ChargeItemPerformer {
  $ChargeItemPerformerCopyWith<ChargeItemPerformer> get copyWith =>
      _$ChargeItemPerformerCopyWithImpl<ChargeItemPerformer>(
        this,
        (value) => value,
      );
}
