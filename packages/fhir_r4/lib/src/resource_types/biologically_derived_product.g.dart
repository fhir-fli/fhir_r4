// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'biologically_derived_product.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $BiologicallyDerivedProductCopyWith<T>
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
    BiologicallyDerivedProductCategory? productCategory,
    CodeableConcept? productCode,
    BiologicallyDerivedProductStatus? status,
    List<Reference>? request,
    FhirInteger? quantity,
    List<Reference>? parent,
    BiologicallyDerivedProductCollection? collection,
    List<BiologicallyDerivedProductProcessing>? processing,
    BiologicallyDerivedProductManipulation? manipulation,
    List<BiologicallyDerivedProductStorage>? storage,
    bool? disallowExtensions,
  });
}

class _$BiologicallyDerivedProductCopyWithImpl<T>
    implements $BiologicallyDerivedProductCopyWith<T> {
  final BiologicallyDerivedProduct _value;
  final T Function(BiologicallyDerivedProduct) _then;

  _$BiologicallyDerivedProductCopyWithImpl(this._value, this._then);

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
    Object? productCategory = fhirSentinel,
    Object? productCode = fhirSentinel,
    Object? status = fhirSentinel,
    Object? request = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? parent = fhirSentinel,
    Object? collection = fhirSentinel,
    Object? processing = fhirSentinel,
    Object? manipulation = fhirSentinel,
    Object? storage = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      BiologicallyDerivedProduct(
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
        productCategory: identical(productCategory, fhirSentinel)
            ? _value.productCategory
            : productCategory as BiologicallyDerivedProductCategory?,
        productCode: identical(productCode, fhirSentinel)
            ? _value.productCode
            : productCode as CodeableConcept?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as BiologicallyDerivedProductStatus?,
        request: identical(request, fhirSentinel)
            ? _value.request
            : request as List<Reference>?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as FhirInteger?,
        parent: identical(parent, fhirSentinel)
            ? _value.parent
            : parent as List<Reference>?,
        collection: identical(collection, fhirSentinel)
            ? _value.collection
            : collection as BiologicallyDerivedProductCollection?,
        processing: identical(processing, fhirSentinel)
            ? _value.processing
            : processing as List<BiologicallyDerivedProductProcessing>?,
        manipulation: identical(manipulation, fhirSentinel)
            ? _value.manipulation
            : manipulation as BiologicallyDerivedProductManipulation?,
        storage: identical(storage, fhirSentinel)
            ? _value.storage
            : storage as List<BiologicallyDerivedProductStorage>?,
      ),
    );
  }
}

extension BiologicallyDerivedProductCopyWithExtension
    on BiologicallyDerivedProduct {
  $BiologicallyDerivedProductCopyWith<BiologicallyDerivedProduct>
      get copyWith =>
          _$BiologicallyDerivedProductCopyWithImpl<BiologicallyDerivedProduct>(
            this,
            (value) => value,
          );
}

abstract class $BiologicallyDerivedProductCollectionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? collector,
    Reference? source,
    CollectedXBiologicallyDerivedProductCollection? collectedX,
    bool? disallowExtensions,
  });
}

class _$BiologicallyDerivedProductCollectionCopyWithImpl<T>
    implements $BiologicallyDerivedProductCollectionCopyWith<T> {
  final BiologicallyDerivedProductCollection _value;
  final T Function(BiologicallyDerivedProductCollection) _then;

  _$BiologicallyDerivedProductCollectionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? collector = fhirSentinel,
    Object? source = fhirSentinel,
    Object? collectedX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      BiologicallyDerivedProductCollection(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        collector: identical(collector, fhirSentinel)
            ? _value.collector
            : collector as Reference?,
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as Reference?,
        collectedX: identical(collectedX, fhirSentinel)
            ? _value.collectedX
            : collectedX as CollectedXBiologicallyDerivedProductCollection?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension BiologicallyDerivedProductCollectionCopyWithExtension
    on BiologicallyDerivedProductCollection {
  $BiologicallyDerivedProductCollectionCopyWith<
          BiologicallyDerivedProductCollection>
      get copyWith => _$BiologicallyDerivedProductCollectionCopyWithImpl<
              BiologicallyDerivedProductCollection>(
            this,
            (value) => value,
          );
}

abstract class $BiologicallyDerivedProductProcessingCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    CodeableConcept? procedure,
    Reference? additive,
    TimeXBiologicallyDerivedProductProcessing? timeX,
    bool? disallowExtensions,
  });
}

class _$BiologicallyDerivedProductProcessingCopyWithImpl<T>
    implements $BiologicallyDerivedProductProcessingCopyWith<T> {
  final BiologicallyDerivedProductProcessing _value;
  final T Function(BiologicallyDerivedProductProcessing) _then;

  _$BiologicallyDerivedProductProcessingCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? description = fhirSentinel,
    Object? procedure = fhirSentinel,
    Object? additive = fhirSentinel,
    Object? timeX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      BiologicallyDerivedProductProcessing(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        procedure: identical(procedure, fhirSentinel)
            ? _value.procedure
            : procedure as CodeableConcept?,
        additive: identical(additive, fhirSentinel)
            ? _value.additive
            : additive as Reference?,
        timeX: identical(timeX, fhirSentinel)
            ? _value.timeX
            : timeX as TimeXBiologicallyDerivedProductProcessing?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension BiologicallyDerivedProductProcessingCopyWithExtension
    on BiologicallyDerivedProductProcessing {
  $BiologicallyDerivedProductProcessingCopyWith<
          BiologicallyDerivedProductProcessing>
      get copyWith => _$BiologicallyDerivedProductProcessingCopyWithImpl<
              BiologicallyDerivedProductProcessing>(
            this,
            (value) => value,
          );
}

abstract class $BiologicallyDerivedProductManipulationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    TimeXBiologicallyDerivedProductManipulation? timeX,
    bool? disallowExtensions,
  });
}

class _$BiologicallyDerivedProductManipulationCopyWithImpl<T>
    implements $BiologicallyDerivedProductManipulationCopyWith<T> {
  final BiologicallyDerivedProductManipulation _value;
  final T Function(BiologicallyDerivedProductManipulation) _then;

  _$BiologicallyDerivedProductManipulationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? description = fhirSentinel,
    Object? timeX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      BiologicallyDerivedProductManipulation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        timeX: identical(timeX, fhirSentinel)
            ? _value.timeX
            : timeX as TimeXBiologicallyDerivedProductManipulation?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension BiologicallyDerivedProductManipulationCopyWithExtension
    on BiologicallyDerivedProductManipulation {
  $BiologicallyDerivedProductManipulationCopyWith<
          BiologicallyDerivedProductManipulation>
      get copyWith => _$BiologicallyDerivedProductManipulationCopyWithImpl<
              BiologicallyDerivedProductManipulation>(
            this,
            (value) => value,
          );
}

abstract class $BiologicallyDerivedProductStorageCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    FhirDecimal? temperature,
    BiologicallyDerivedProductStorageScale? scale,
    Period? duration,
    bool? disallowExtensions,
  });
}

class _$BiologicallyDerivedProductStorageCopyWithImpl<T>
    implements $BiologicallyDerivedProductStorageCopyWith<T> {
  final BiologicallyDerivedProductStorage _value;
  final T Function(BiologicallyDerivedProductStorage) _then;

  _$BiologicallyDerivedProductStorageCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? description = fhirSentinel,
    Object? temperature = fhirSentinel,
    Object? scale = fhirSentinel,
    Object? duration = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      BiologicallyDerivedProductStorage(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        temperature: identical(temperature, fhirSentinel)
            ? _value.temperature
            : temperature as FhirDecimal?,
        scale: identical(scale, fhirSentinel)
            ? _value.scale
            : scale as BiologicallyDerivedProductStorageScale?,
        duration: identical(duration, fhirSentinel)
            ? _value.duration
            : duration as Period?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension BiologicallyDerivedProductStorageCopyWithExtension
    on BiologicallyDerivedProductStorage {
  $BiologicallyDerivedProductStorageCopyWith<BiologicallyDerivedProductStorage>
      get copyWith => _$BiologicallyDerivedProductStorageCopyWithImpl<
              BiologicallyDerivedProductStorage>(
            this,
            (value) => value,
          );
}
