// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'supply_request.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $SupplyRequestCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    SupplyRequestStatus? status,
    CodeableConcept? category,
    RequestPriority? priority,
    ItemXSupplyRequest? itemX,
    Quantity? quantity,
    List<SupplyRequestParameter>? parameter,
    OccurrenceXSupplyRequest? occurrenceX,
    FhirDateTime? authoredOn,
    Reference? requester,
    List<Reference>? supplier,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    Reference? deliverFrom,
    Reference? deliverTo,
    bool? disallowExtensions,
  });
}

class _$SupplyRequestCopyWithImpl<T> implements $SupplyRequestCopyWith<T> {
  final SupplyRequest _value;
  final T Function(SupplyRequest) _then;

  _$SupplyRequestCopyWithImpl(this._value, this._then);

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
    Object? category = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? itemX = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? parameter = fhirSentinel,
    Object? occurrenceX = fhirSentinel,
    Object? authoredOn = fhirSentinel,
    Object? requester = fhirSentinel,
    Object? supplier = fhirSentinel,
    Object? reasonCode = fhirSentinel,
    Object? reasonReference = fhirSentinel,
    Object? deliverFrom = fhirSentinel,
    Object? deliverTo = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SupplyRequest(
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
            : status as SupplyRequestStatus?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as CodeableConcept?,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as RequestPriority?,
        itemX: identical(itemX, fhirSentinel)
            ? _value.itemX
            : (itemX as ItemXSupplyRequest?) ?? _value.itemX,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : (quantity as Quantity?) ?? _value.quantity,
        parameter: identical(parameter, fhirSentinel)
            ? _value.parameter
            : parameter as List<SupplyRequestParameter>?,
        occurrenceX: identical(occurrenceX, fhirSentinel)
            ? _value.occurrenceX
            : occurrenceX as OccurrenceXSupplyRequest?,
        authoredOn: identical(authoredOn, fhirSentinel)
            ? _value.authoredOn
            : authoredOn as FhirDateTime?,
        requester: identical(requester, fhirSentinel)
            ? _value.requester
            : requester as Reference?,
        supplier: identical(supplier, fhirSentinel)
            ? _value.supplier
            : supplier as List<Reference>?,
        reasonCode: identical(reasonCode, fhirSentinel)
            ? _value.reasonCode
            : reasonCode as List<CodeableConcept>?,
        reasonReference: identical(reasonReference, fhirSentinel)
            ? _value.reasonReference
            : reasonReference as List<Reference>?,
        deliverFrom: identical(deliverFrom, fhirSentinel)
            ? _value.deliverFrom
            : deliverFrom as Reference?,
        deliverTo: identical(deliverTo, fhirSentinel)
            ? _value.deliverTo
            : deliverTo as Reference?,
      ),
    );
  }
}

extension SupplyRequestCopyWithExtension on SupplyRequest {
  $SupplyRequestCopyWith<SupplyRequest> get copyWith =>
      _$SupplyRequestCopyWithImpl<SupplyRequest>(
        this,
        (value) => value,
      );
}

abstract class $SupplyRequestParameterCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    ValueXSupplyRequestParameter? valueX,
    bool? disallowExtensions,
  });
}

class _$SupplyRequestParameterCopyWithImpl<T>
    implements $SupplyRequestParameterCopyWith<T> {
  final SupplyRequestParameter _value;
  final T Function(SupplyRequestParameter) _then;

  _$SupplyRequestParameterCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SupplyRequestParameter(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : valueX as ValueXSupplyRequestParameter?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SupplyRequestParameterCopyWithExtension on SupplyRequestParameter {
  $SupplyRequestParameterCopyWith<SupplyRequestParameter> get copyWith =>
      _$SupplyRequestParameterCopyWithImpl<SupplyRequestParameter>(
        this,
        (value) => value,
      );
}
