// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'product_shelf_life.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ProductShelfLifeCopyWith<T> extends $BackboneTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    CodeableConcept? type,
    Quantity? period,
    List<CodeableConcept>? specialPrecautionsForStorage,
    bool? disallowExtensions,
  });
}

class _$ProductShelfLifeCopyWithImpl<T>
    implements $ProductShelfLifeCopyWith<T> {
  final ProductShelfLife _value;
  final T Function(ProductShelfLife) _then;

  _$ProductShelfLifeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? type = fhirSentinel,
    Object? period = fhirSentinel,
    Object? specialPrecautionsForStorage = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ProductShelfLife(
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
            : (type as CodeableConcept?) ?? _value.type,
        period: identical(period, fhirSentinel)
            ? _value.period
            : (period as Quantity?) ?? _value.period,
        specialPrecautionsForStorage:
            identical(specialPrecautionsForStorage, fhirSentinel)
                ? _value.specialPrecautionsForStorage
                : specialPrecautionsForStorage as List<CodeableConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ProductShelfLifeCopyWithExtension on ProductShelfLife {
  $ProductShelfLifeCopyWith<ProductShelfLife> get copyWith =>
      _$ProductShelfLifeCopyWithImpl<ProductShelfLife>(
        this,
        (value) => value,
      );
}
