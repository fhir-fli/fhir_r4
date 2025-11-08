// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'supply_delivery.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $SupplyDeliveryCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    List<Reference>? basedOn,
    List<Reference>? partOf,
    SupplyDeliveryStatus? status,
    Reference? patient,
    CodeableConcept? type,
    SupplyDeliverySuppliedItem? suppliedItem,
    OccurrenceXSupplyDelivery? occurrenceX,
    Reference? supplier,
    Reference? destination,
    List<Reference>? receiver,
    bool? disallowExtensions,
  });
}

class _$SupplyDeliveryCopyWithImpl<T> implements $SupplyDeliveryCopyWith<T> {
  final SupplyDelivery _value;
  final T Function(SupplyDelivery) _then;

  _$SupplyDeliveryCopyWithImpl(this._value, this._then);

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
    Object? basedOn = fhirSentinel,
    Object? partOf = fhirSentinel,
    Object? status = fhirSentinel,
    Object? patient = fhirSentinel,
    Object? type = fhirSentinel,
    Object? suppliedItem = fhirSentinel,
    Object? occurrenceX = fhirSentinel,
    Object? supplier = fhirSentinel,
    Object? destination = fhirSentinel,
    Object? receiver = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SupplyDelivery(
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
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        partOf: identical(partOf, fhirSentinel)
            ? _value.partOf
            : partOf as List<Reference>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as SupplyDeliveryStatus?,
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : patient as Reference?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        suppliedItem: identical(suppliedItem, fhirSentinel)
            ? _value.suppliedItem
            : suppliedItem as SupplyDeliverySuppliedItem?,
        occurrenceX: identical(occurrenceX, fhirSentinel)
            ? _value.occurrenceX
            : occurrenceX as OccurrenceXSupplyDelivery?,
        supplier: identical(supplier, fhirSentinel)
            ? _value.supplier
            : supplier as Reference?,
        destination: identical(destination, fhirSentinel)
            ? _value.destination
            : destination as Reference?,
        receiver: identical(receiver, fhirSentinel)
            ? _value.receiver
            : receiver as List<Reference>?,
      ),
    );
  }
}

extension SupplyDeliveryCopyWithExtension on SupplyDelivery {
  $SupplyDeliveryCopyWith<SupplyDelivery> get copyWith =>
      _$SupplyDeliveryCopyWithImpl<SupplyDelivery>(
        this,
        (value) => value,
      );
}

abstract class $SupplyDeliverySuppliedItemCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? quantity,
    ItemXSupplyDeliverySuppliedItem? itemX,
    bool? disallowExtensions,
  });
}

class _$SupplyDeliverySuppliedItemCopyWithImpl<T>
    implements $SupplyDeliverySuppliedItemCopyWith<T> {
  final SupplyDeliverySuppliedItem _value;
  final T Function(SupplyDeliverySuppliedItem) _then;

  _$SupplyDeliverySuppliedItemCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? itemX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SupplyDeliverySuppliedItem(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        itemX: identical(itemX, fhirSentinel)
            ? _value.itemX
            : itemX as ItemXSupplyDeliverySuppliedItem?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SupplyDeliverySuppliedItemCopyWithExtension
    on SupplyDeliverySuppliedItem {
  $SupplyDeliverySuppliedItemCopyWith<SupplyDeliverySuppliedItem>
      get copyWith =>
          _$SupplyDeliverySuppliedItemCopyWithImpl<SupplyDeliverySuppliedItem>(
            this,
            (value) => value,
          );
}
